<#
.SYNOPSIS
    Converts Markdown documents to PDF using Pandoc with medical paper formatting.

.DESCRIPTION
    This script converts Markdown files to professionally formatted PDFs suitable for
    medical/scientific publications. Features include:
    - Custom title page (optional)
    - Table of contents
    - Unicode support (Greek symbols, special characters)
    - Smaller table fonts for readability
    - ICMJE-compliant formatting

.PARAMETER InputFile
    Path to the Markdown file to convert.

.PARAMETER OutputFile
    Path for the output PDF. Defaults to input filename with .pdf extension.

.PARAMETER TitlePage
    Path to LaTeX title page template. If not specified, uses default Pandoc title.

.PARAMETER FontSize
    Body text font size (default: 11pt). Options: 10pt, 11pt, 12pt

.PARAMETER TableFontSize
    Table font size (default: footnotesize). Options: tiny, scriptsize, footnotesize, small, normalsize

.PARAMETER MainFont
    Main document font (default: Segoe UI for Unicode support)

.PARAMETER MonoFont
    Monospace font for code (default: Consolas)

.PARAMETER Margins
    Page margins (default: 1in)

.PARAMETER NoToc
    Skip table of contents generation.

.EXAMPLE
    .\convert-to-pdf.ps1 -InputFile "RESEARCH-AUDIT-REPORT.md"

.EXAMPLE
    .\convert-to-pdf.ps1 -InputFile "paper.md" -TitlePage "titlepage.tex" -TableFontSize "scriptsize"

.EXAMPLE
    .\convert-to-pdf.ps1 -InputFile "draft.md" -OutputFile "final-paper.pdf" -FontSize "12pt" -NoToc
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$InputFile,

    [string]$OutputFile,

    [string]$TitlePage,

    [ValidateSet("10pt", "11pt", "12pt")]
    [string]$FontSize = "11pt",

    [ValidateSet("tiny", "scriptsize", "footnotesize", "small", "normalsize")]
    [string]$TableFontSize = "footnotesize",

    [string]$MainFont = "Segoe UI",

    [string]$MonoFont = "Consolas",

    [string]$Margins = "1in",

    [switch]$NoToc
)

# Validate input file exists
if (-not (Test-Path $InputFile)) {
    Write-Error "Input file not found: $InputFile"
    exit 1
}

# Set default output file if not specified
if (-not $OutputFile) {
    $OutputFile = [System.IO.Path]::ChangeExtension($InputFile, ".pdf")
}

# Check for Pandoc
if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    Write-Error "Pandoc is not installed or not in PATH. Install from https://pandoc.org/"
    exit 1
}

# Check for XeLaTeX
if (-not (Get-Command xelatex -ErrorAction SilentlyContinue)) {
    Write-Error "XeLaTeX is not installed. Install a TeX distribution (MiKTeX or TeX Live)."
    exit 1
}

# Build Pandoc command
$pandocArgs = @(
    "`"$InputFile`""
    "-o", "`"$OutputFile`""
    "--pdf-engine=xelatex"
    "-V", "mainfont=`"$MainFont`""
    "-V", "monofont=`"$MonoFont`""
    "-V", "geometry:margin=$Margins"
    "-V", "fontsize=$FontSize"
)

# Add table of contents unless disabled
if (-not $NoToc) {
    $pandocArgs += "--toc"
}

# Add title page if specified
if ($TitlePage) {
    if (-not (Test-Path $TitlePage)) {
        Write-Error "Title page template not found: $TitlePage"
        exit 1
    }
    $pandocArgs += "--include-before-body=`"$TitlePage`""
}

# Create temporary header file for table font size
$headerContent = @"
\usepackage{etoolbox}
\AtBeginEnvironment{longtable}{\$TableFontSize}
"@

$tempHeader = [System.IO.Path]::GetTempFileName() + ".tex"
$headerContent | Out-File -FilePath $tempHeader -Encoding UTF8

$pandocArgs += "-H", "`"$tempHeader`""

# Display conversion info
Write-Host "Converting: $InputFile" -ForegroundColor Cyan
Write-Host "Output:     $OutputFile" -ForegroundColor Cyan
Write-Host "Settings:" -ForegroundColor Gray
Write-Host "  - Body font:  $FontSize $MainFont" -ForegroundColor Gray
Write-Host "  - Table font: $TableFontSize" -ForegroundColor Gray
Write-Host "  - Margins:    $Margins" -ForegroundColor Gray
Write-Host "  - TOC:        $(-not $NoToc)" -ForegroundColor Gray
if ($TitlePage) {
    Write-Host "  - Title page: $TitlePage" -ForegroundColor Gray
}

# Execute Pandoc
$command = "pandoc $($pandocArgs -join ' ')"
Write-Host "`nExecuting: $command" -ForegroundColor DarkGray

try {
    Invoke-Expression $command
    
    # Cleanup temp file
    Remove-Item $tempHeader -ErrorAction SilentlyContinue
    
    # Verify output
    if (Test-Path $OutputFile) {
        $fileInfo = Get-Item $OutputFile
        Write-Host "`nSuccess! PDF generated:" -ForegroundColor Green
        Write-Host "  File: $($fileInfo.FullName)" -ForegroundColor Green
        Write-Host "  Size: $([math]::Round($fileInfo.Length / 1KB, 1)) KB" -ForegroundColor Green
        Write-Host "  Time: $($fileInfo.LastWriteTime)" -ForegroundColor Green
    }
    else {
        Write-Error "PDF generation failed - output file not created."
        exit 1
    }
}
catch {
    Remove-Item $tempHeader -ErrorAction SilentlyContinue
    Write-Error "Conversion failed: $_"
    exit 1
}
