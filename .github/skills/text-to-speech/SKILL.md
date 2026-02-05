---
name: "text-to-speech"
description: "Alex's voice synthesis capability for reading documents aloud"
---

# Text-to-Speech Skill

> **Domain**: AI Accessibility & Communication  
> **Inheritance**: inheritable (promote to Master Alex for all heirs)  
> **Version**: 1.1.0  
> **Last Updated**: 2026-02-05  
> **Author**: Alex (Lithium project)

---

## For Master Alex (Promotion Notes)

This skill gives Alex a voice. It uses Microsoft Edge TTS (free, no API key) via an MCP server to read any document aloud with natural-sounding neural voices. Developed during the Lithium research project to help Claudia rehearse stakeholder pitches.

**Why promote to Master:**

- Universal utility across all projects
- Zero-cost implementation (uses free Edge TTS API)
- MCP server pattern is reusable
- Accessibility benefits for vision-impaired users

**Dependencies:**

- Python 3.8+ with `edge-tts` package
- Node.js for MCP server
- MCP server at `~/.alex/mcp-servers/tts-reader/`

---

## Overview

Alex's voice synthesis capability using Microsoft Edge TTS. Enables reading markdown documents, code files, and text aloud with natural-sounding voices. Integrated via MCP server for cross-project availability.

---

## Architecture

```text
┌─────────────────────────────────────────────────────────────┐
│                    Alex (VS Code Copilot)                   │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  "Alex, read this document aloud"                           │
│                     │                                       │
│                     ▼                                       │
│  ┌─────────────────────────────────────────────┐           │
│  │           TTS MCP Server                     │           │
│  │   ~/.alex/mcp-servers/tts-reader/            │           │
│  └─────────────────┬───────────────────────────┘           │
│                    │                                        │
└────────────────────┼────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│                   edge-tts (Python CLI)                     │
├─────────────────────────────────────────────────────────────┤
│  • Microsoft Edge neural voices                             │
│  • 400+ voices, 90+ languages                               │
│  • Free, no API key required                                │
│  • SSML support for prosody control                         │
└─────────────────────────────────────────────────────────────┘
                     │
                     ▼
              ┌─────────────┐
              │  Audio Out  │  (speakers or MP3 file)
              └─────────────┘
```

---

## Alex Voice Presets

| Preset | Voice ID | Character |
|--------|----------|-----------|
| **Default** | en-US-GuyNeural | Professional male, clear articulation |
| **Warm** | en-US-ChristopherNeural | Friendly, conversational |
| **British** | en-GB-RyanNeural | British accent, authoritative |
| **Friendly** | en-US-DavisNeural | Casual, approachable |

### Voice Selection Rationale

Alex's default voice (GuyNeural) was chosen for:
- **Clarity**: Excellent pronunciation of technical terms
- **Neutrality**: Not too formal, not too casual
- **Distinctiveness**: Recognizable as "Alex's voice"
- **Consistency**: Same voice across all platforms

---

## MCP Server Tools

The TTS MCP server (`mcp_tts-reader_*`) exposes four tools:

### 1. mcp_tts-reader_read_markdown

Read a markdown file or text aloud. Strips markdown formatting for natural speech.

```json
{
  "filePath": "path/to/document.md",  // Path to markdown file
  "text": "Text to read aloud",        // OR provide text directly
  "section": "## Overview"             // Optional: read specific section only
}
```

**Parameters** (all optional - provide either `filePath` or `text`):

| Parameter | Type | Description |
|-----------|------|-------------|
| `filePath` | string | Path to the markdown file to read |
| `text` | string | Text to read aloud (if not providing a file) |
| `section` | string | Specific section heading to read (e.g., `## Overview`) |

**Behavior**:

- Strips markdown formatting for natural speech
- Expands abbreviations (e.g., "README" → "read me")
- Handles code blocks with verbal indicators
- Supports section-by-section reading

### 2. mcp_tts-reader_list_voices

List available Alex voice presets and all Edge TTS voices. Takes no arguments.

```json
{}
```

Returns the list of available voices including Alex's presets (default, warm, british, friendly) and all Edge TTS neural voices.

### 3. mcp_tts-reader_set_voice

Configure Alex's voice settings.

```json
{
  "voice": "en-US-ChristopherNeural",  // Required: voice ID or preset
  "rate": "+10%",                       // Optional: speed adjustment
  "pitch": "+2Hz"                       // Optional: pitch adjustment
}
```

**Parameters**:

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `voice` | string | Yes | Voice ID (e.g., `en-US-GuyNeural`) or preset name (`default`, `warm`, `british`, `friendly`) |
| `rate` | string | No | Speech rate adjustment (e.g., `+10%`, `-20%`) |
| `pitch` | string | No | Pitch adjustment (e.g., `+5Hz`, `-10Hz`) |

### 4. mcp_tts-reader_save_audio

Generate and save speech to an MP3 file.

```json
{
  "filePath": "document.md",           // Path to markdown file
  "text": "Or provide text directly",  // Alternative to filePath
  "outputPath": "output.mp3"           // Required: where to save MP3
}
```

**Parameters**:

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `outputPath` | string | Yes | Where to save the MP3 file |
| `filePath` | string | No | Path to the markdown file to convert |
| `text` | string | No | Text to convert to speech |
```

---

## Markdown to Speech Processing

### Stripping Rules

| Markdown | Speech Output |
|----------|---------------|
| `# Heading` | "Heading." (pause) |
| `**bold**` | "bold" (emphasis via prosody) |
| `*italic*` | "italic" |
| `` `code` `` | "code" |
| `[link]\(url\)` | "link" |
| `- item` | "Item." |
| `> quote` | "Quote: ..." |
| `---` | (long pause) |

### Code Block Handling

```markdown
```python
def hello():
    print("Hello")
```
```

Becomes: "Python code block. Definition hello. Print hello. End code block."

### Symbol-to-Speech Transformations

Symbols are converted to natural speech equivalents:

| Symbol | Spoken As | Example |
|--------|-----------|--------|
| `~` | "approximately" or "about" | ~2 min → "about 2 minutes" |
| `&` | "and" | A & B → "A and B" |
| `@` | "at" | user@email → "user at email" |
| `%` | "percent" | 50% → "50 percent" |
| `+` | "plus" | +10% → "plus 10 percent" |
| `→` | "leads to" or "becomes" | A → B → "A becomes B" |
| `—` | (pause) | word—word → "word (pause) word" |
| `#` | (context-dependent) | #1 → "number 1"; ## → (heading marker) |
| `<` / `>` | "less than" / "greater than" | x > 5 → "x greater than 5" |
| `≥` / `≤` | "greater than or equal" / "less than or equal" | |
| `µ` | "micro" | µg → "microgram" |
| `°` | "degrees" | 37°C → "37 degrees celsius" |
| `±` | "plus or minus" | ±5% → "plus or minus 5 percent" |

**Design Principle**: Would a human reading this aloud say the symbol name, or translate it to meaning? Almost always the latter.

---

## Installation

### Prerequisites

```powershell
# Python 3.8+ required
python -m pip install edge-tts

# Verify installation
edge-tts --list-voices | Select-String "en-US"
```

### MCP Server Location

```
~/.alex/mcp-servers/tts-reader/
├── index.js          # MCP server implementation
├── package.json      # Node.js configuration
└── node_modules/     # MCP SDK dependencies
```

### VS Code Configuration

Add to VS Code settings or MCP config:

```json
{
  "mcp": {
    "servers": {
      "tts-reader": {
        "command": "node",
        "args": ["~/.alex/mcp-servers/tts-reader/index.js"],
        "name": "Alex TTS Reader"
      }
    }
  }
}
```

---

## Usage Patterns

### Read Current Document
```
"Alex, read this document aloud"
"Can you read the README?"
"Read the analysis section"
```

### Generate Audio File
```
"Save this as an MP3"
"Create an audio version of the documentation"
"Generate a podcast-style reading"
```

### Voice Customization
```
"Use a British accent"
"Speak a bit faster"
"Use a warmer voice"
```

---

## Edge TTS Reference

### Command Line Usage

```powershell
# Basic text to speech
python -m edge_tts --text "Hello world" --write-media output.mp3

# With voice selection
python -m edge_tts --voice en-US-GuyNeural --text "Hello" --write-media out.mp3

# With prosody control
python -m edge_tts --voice en-US-GuyNeural --rate=+20% --pitch=+5Hz `
  --text "Faster and higher" --write-media out.mp3

# List all voices
python -m edge_tts --list-voices
```

### Popular Voice IDs

| Language | Voice | Style |
|----------|-------|-------|
| en-US | GuyNeural | Professional male |
| en-US | JennyNeural | Professional female |
| en-US | AriaNeural | News anchor style |
| en-GB | RyanNeural | British male |
| en-GB | SoniaNeural | British female |
| en-AU | WilliamNeural | Australian male |
| en-IN | NeerjaNeural | Indian English |

---

## Accessibility Benefits

| Use Case | Benefit |
|----------|---------|
| **Vision impaired** | Full document access via audio |
| **Multitasking** | Review code while walking/driving |
| **Learning** | Auditory reinforcement of reading |
| **Proofreading** | Catch errors by hearing text |
| **Long documents** | Listen during breaks |

---

## Examples

Audio files demonstrating TTS skill in action (Lithium project, February 2026):

| File | Description | Duration |
|------|-------------|----------|
| [lithium-combined-pitch.mp3](examples/lithium-combined-pitch.mp3) | Claudia's combined pitch to Phil & Robert with research citations | ~2 min |
| [claudia-pitch.mp3](examples/claudia-pitch.mp3) | Claudia's individual pitch to Phil | ~1.5 min |

**Generation Command Used:**
```powershell
python -m edge_tts --voice en-US-GuyNeural --file pitch.txt --write-media output.mp3
Start-Process output.mp3
```

---

## Technical Notes

### Windows Audio Playback

The MCP server uses PowerShell for audio playback:

```powershell
# Play MP3 on Windows
$player = New-Object System.Media.SoundPlayer
$player.SoundLocation = "output.wav"
$player.PlaySync()

# Alternative: Media.SoundPlayer or Windows Media Player
Start-Process -FilePath "output.mp3"
```

### Temporary File Handling

Audio files are generated in temp directory and cleaned up after playback:
- Location: `$env:TEMP\alex-tts\`
- Auto-cleanup: After playback completes
- Persistence: Only with explicit `save_audio` tool

---

## Synapses

- **mcp-development**: Foundation for server implementation
- **accessibility**: Primary use case enabler
- **markdown-mermaid**: Source content processing
- **academic-research**: Document reading for research projects
- **gamma-presentations**: Audio playback of pitch content for rehearsal and delivery
- **project-management**: Stakeholder pitch presentations generated as audio files

---

## Future Enhancements

| Feature | Status | Notes |
|---------|--------|-------|
| Real-time streaming | Planned | Start playing before full generation |
| SSML support | Planned | Fine-grained prosody control |
| Section navigation | Planned | "Skip to next heading" |
| Bookmark resume | Planned | Resume from last position |
| Speed presets | Planned | 1x, 1.5x, 2x reading speeds |
