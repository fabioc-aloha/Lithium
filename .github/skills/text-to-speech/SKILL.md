---
name: "Text-to-Speech Skill"
description: "**Domain**: AI Accessibility & Communication"
---

# Text-to-Speech Skill

> **Domain**: AI Accessibility & Communication
> **Inheritance**: inheritable
> **Version**: 1.0.0
> **Last Updated**: 2026-02-05

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

### 1. read_markdown

Read a markdown file or text aloud.

```json
{
  "name": "read_markdown",
  "arguments": {
    "file": "path/to/document.md",   // OR
    "text": "Text to read aloud",     // Either file or text
    "voice": "en-US-GuyNeural",       // Optional
    "rate": "+0%",                    // Speed: -50% to +100%
    "pitch": "+0Hz"                   // Pitch adjustment
  }
}
```

**Behavior**:
- Strips markdown formatting for natural speech
- Expands abbreviations (e.g., "README" → "read me")
- Handles code blocks with verbal indicators
- Supports section-by-section reading

### 2. list_voices

List available Alex voice presets and all Edge TTS voices.

```json
{
  "name": "list_voices",
  "arguments": {
    "locale": "en-US",    // Optional: filter by locale
    "gender": "Male"      // Optional: Male, Female
  }
}
```

### 3. set_voice

Configure Alex's default voice settings.

```json
{
  "name": "set_voice",
  "arguments": {
    "voice": "en-US-ChristopherNeural",
    "rate": "+10%",
    "pitch": "+2Hz"
  }
}
```

### 4. save_audio

Generate an MP3 file from text or markdown.

```json
{
  "name": "save_audio",
  "arguments": {
    "file": "document.md",
    "output": "document.mp3",
    "voice": "en-US-GuyNeural"
  }
}
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
| `[link](url)` | "link" |
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

---

## Future Enhancements

| Feature | Status | Notes |
|---------|--------|-------|
| Real-time streaming | Planned | Start playing before full generation |
| SSML support | Planned | Fine-grained prosody control |
| Section navigation | Planned | "Skip to next heading" |
| Bookmark resume | Planned | Resume from last position |
| Speed presets | Planned | 1x, 1.5x, 2x reading speeds |
