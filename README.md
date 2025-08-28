# Soundwave Audio Pack

A comprehensive Windows batch-based audio processing toolkit using FFmpeg for format conversion, sample rate conversion, normalization, and file management workflows.

## Overview

The Soundwave Audio Pack provides a complete suite of batch files for common audio processing tasks. All conversions create output files in a dedicated "converted" folder to preserve your original audio files. The toolkit is designed for anyone needing reliable batch audio processing capabilities.
By default the converting 16, 24 and 32 bit WAV file are 48kHz whereas the 8 bit Unsigned one is 44.1 kHz.

**Key Features:**
- **Safe Processing**: All output goes to a "converted" folder - never overwrites originals
- **Format Flexibility**: Convert between all major audio formats (WAV, MP3, FLAC, AAC, OGG, WMA, ALAC)
- **Quality Control**: Multiple bitrate options and sample rate conversions
- **Audio Normalization**: Standardize audio levels at different sample rates
- **Batch Cleanup**: Remove specific file types when processing is complete

## Features

- **Comprehensive Format Support**: Convert between WAV, MP3, FLAC, AAC, OGG, WMA, and ALAC formats
- **Multiple Quality Options**: 192kbps and 320kbps MP3 encoding with mono/stereo variants
- **Sample Rate Conversion**: Convert between 44.1kHz and 48kHz with precision
- **Audio Normalization**: Standardize levels at 44.1kHz and 48kHz
- **Safe Processing**: All conversions output to "converted" folder to protect originals
- **Lossless Options**: Support for FLAC and ALAC for archival quality
- **Batch File Management**: Clean up intermediate files after processing
- **WAV-Centric Workflow**: Optimized for WAV files which preserve maximum audio detail

## File Structure

```
Soundwave Audio Pack/
├── [Your audio files - any supported format]
├── converted/                                            # Auto-created output folder
├── 0 - Convert AAC to WAV.bat                            # Convert AAC files to WAV
├── 0 - Convert FLAC to WAV.bat                           # Convert FLAC files to WAV
├── 0 - Convert MP3 to WAV.bat                            # Convert MP3 files to WAV
├── 0 - Convert OGG to WAV.bat                            # Convert OGG files to WAV
├── 0 - Convert WAV to 8-Bit Unsigned PCM.bat             # Convert to 8-bit PCM format (44.1 kHz)
├── 0 - Convert WAV to 16-Bit Signed PCM.bat              # Convert to 16-Bit Signed PCM format (48 kHz)
├── 0 - Convert WAV to 24-Bit Signed PCM.bat              # Convert to 24-Bit Signed PCM format (48 kHz)
├── 0 - Convert WAV to 32-Bit Signed PCM.bat              # Convert to 32-Bit Signed PCM format (48 kHz)
├── 0 - Convert WAV to AAC.bat                            # Convert WAV to AAC format
├── 0 - Convert WAV to ALAC (Apple Lossless).bat          # Convert WAV to Apple Lossless
├── 0 - Convert WAV to FLAC.bat                           # Convert WAV to FLAC format
├── 0 - Convert WAV to MP3 192kbps 44.1kHz Mono.bat       # MP3 conversion (mono)
├── 0 - Convert WAV to MP3 192kbps 44.1kHz Stereo.bat     # MP3 conversion (stereo)
├── 0 - Convert WAV to MP3 320kbps 48kHz Mono.bat         # High-quality MP3 (mono)
├── 0 - Convert WAV to MP3 320kbps 48kHz Stereo.bat       # High-quality MP3 (stereo)
├── 0 - Convert WAV to OGG.bat                            # Convert WAV to OGG Vorbis
├── 0 - Convert WAV to WMA.bat                            # Convert WAV to Windows Media Audio
├── 0 - Convert WMA to WAV.bat                            # Convert WMA files to WAV
├── 1 - WAV Compression 44.1 kHz.bat                      # Compress audio (44.1 kHz)
├── 1 - WAV Compression 48 kHz.bat                        # Compress audio (48 kHz)
├── 1 - WAV Sample Rate - 44.1 kHz to 48 kHz Mono.bat     # Upsample mono audio
├── 1 - WAV Sample Rate - 44.1 kHz to 48 kHz Stereo.bat   # Upsample stereo audio
├── 1 - WAV Sample Rate - 48 kHz to 44.1 kHz Mono.bat     # Downsample mono audio
├── 1 - WAV Sample Rate - 48 kHz to 44.1 kHz Stereo.bat   # Downsample stereo audio
├── 2 - WAV Normalize 44.1 kHz.bat                        # Normalize audio at 44.1kHz
├── 2 - WAV Normalize 48 kHz.bat                          # Normalize audio at 48kHz
├── 3 - Remove FLAC files.bat                             # Delete all FLAC files
├── 3 - Remove MP3 files.bat                              # Delete all MP3 files
├── 3 - Remove OGG files.bat                              # Delete all OGG files
├── 3 - Remove WAV files.bat                              # Delete all WAV files
├── 3 - Remove WMA files.bat                              # Delete all WMA files
├── LICENSE                                               # License information
└── README.md                                             # This documentation
```

## Installation

### Prerequisites

- Windows Operating System
- **FFmpeg** installed and added to PATH (required for all audio processing)

### Setup

1. **Install FFmpeg**:
   - Download from [https://ffmpeg.org/download.html#build-windows](https://ffmpeg.org/download.html#build-windows)
   - Extract to a folder (e.g., `C:\ffmpeg`)
   - Add the `bin` folder to your system PATH
   - Verify installation by running `ffmpeg -version` in Command Prompt

2. **Download the Soundwave Audio Pack**:
```bash
git clone https://github.com/RLR64/Soundwave-Audio-Pack
```

3. Navigate to the Soundwave Audio Pack folder and you're ready to process audio!

## Usage

### Step-by-Step Workflow

### Step 1: Prepare Your Audio Files
1. Place your audio files in the Soundwave Audio Pack directory
2. Supported input formats: WAV, MP3, FLAC, AAC, OGG, WMA
3. Files can be organized in the main directory (batch files process current folder)

### Step 2: Format Conversion

**Convert TO WAV (Recommended Starting Point):**
WAV files preserve maximum audio detail and are ideal for further processing.

- **From AAC**: `0 - Convert AAC to WAV.bat`
- **From FLAC**: `0 - Convert FLAC to WAV.bat`
- **From MP3**: `0 - Convert MP3 to WAV.bat`
- **From OGG**: `0 - Convert OGG to WAV.bat`
- **From WMA**: `0 - Convert WMA to WAV.bat`

**Convert FROM WAV to Other Formats:**

- **To AAC**: `0 - Convert WAV to AAC.bat`
- **To FLAC**: `0 - Convert WAV to FLAC.bat` (lossless compression)
- **To ALAC**: `0 - Convert WAV to ALAC (Apple Lossless).bat` (Apple ecosystem)
- **To OGG**: `0 - Convert WAV to OGG.bat` (open-source alternative)
- **To WMA**: `0 - Convert WAV to WMA.bat` (Windows Media)
- **To 8-bit PCM**: `0 - Convert WAV to 8-Bit Unsigned PCM.bat` (retro/embedded use - 44.1 kHz)
- **To 16-bit PCM**: `0 - Convert WAV to 16-Bit Signed PCM.bat` (most common, CD quality - 48 kHz)
- **To 24-bit PCM**: `0 - Convert WAV to 24-Bit Signed PCM.bat` (professional audio standard - 48 kHz)
- **To 32-bit PCM**: `0 - Convert WAV to 32-Bit Signed PCM.bat` (highest precision - 48 kHz)


**MP3 Conversion Options:**
- **192kbps 44.1kHz**: `0 - Convert WAV to MP3 192kbps 44.1kHz [Mono/Stereo].bat`
- **320kbps 48kHz**: `0 - Convert WAV to MP3 320kbps 48kHz [Mono/Stereo].bat` (high quality)

#### Step 3: Sample Rate Conversion

**44.1kHz ↔ 48kHz Conversion:**
By default the converting 16, 24 and 32 bit WAV file are 48kHz whereas the 8 bit Unsigned one is 44.1 kHz.

- **44.1kHz → 48kHz**: `1 - WAV Sample Rate - 44.1 kHz to 48 kHz [Mono/Stereo].bat`
- **48kHz → 44.1kHz**: `1 - WAV Sample Rate - 48 kHz to 44.1 kHz [Mono/Stereo].bat`

**When to use:**
- **44.1kHz**: CD audio standard, music production
- **48kHz**: Video/film audio standard, professional production

#### Step 4: Audio Normalization

Standardize audio levels for consistent playback:
- **44.1kHz files**: `2 - WAV Normalize 44.1 kHz.bat`
- **48kHz files**: `2 - WAV Normalize 48 kHz.bat`

#### Step 5: Cleanup

Remove intermediate or unwanted files:
- **Remove FLAC**: `3 - Remove FLAC files.bat`
- **Remove MP3**: `3 - Remove MP3 files.bat`
- **Remove OGG**: `3 - Remove OGG files.bat`
- **Remove WAV**: `3 - Remove WAV files.bat`
- **Remove WMA**: `3 - Remove WMA files.bat`

## Recommended Workflows

### Workflow 1: Music Archive Conversion
1. Convert source files to WAV (`0 - Convert [FORMAT] to WAV.bat`)
2. Normalize audio (`2 - WAV Normalize 44.1 kHz.bat`)
3. Convert to desired final format(s)
4. Clean up intermediate files

### Workflow 2: Video Production Audio
1. Convert source to WAV
2. Convert sample rate to 48kHz (`1 - WAV Sample Rate - 44.1 kHz to 48 kHz Stereo.bat`)
3. Normalize (`2 - WAV Normalize 48 kHz.bat`)
4. Convert to final format if needed

### Workflow 3: Podcast/Streaming Preparation
1. Convert source to WAV
2. Normalize audio at appropriate sample rate
3. Convert to MP3 320kbps for high quality
4. Convert to MP3 192kbps for smaller file sizes
5. Compress audio files using a modern compression inspired by Audacity

## Format Recommendations

### Lossless Formats
- **WAV**: Uncompressed, maximum compatibility, large files
- **FLAC**: Compressed lossless, ~50% size reduction, widely supported
- **ALAC**: Apple's lossless format, best for Apple ecosystem

### Lossy Formats
- **MP3 320kbps**: High quality, universal compatibility
- **MP3 192kbps**: Good quality, smaller files
- **AAC**: Modern codec, efficient compression, Apple/streaming preferred
- **OGG Vorbis**: Open-source, good compression, limited device support

### Specialized
- **8-bit PCM**: Retro gaming, embedded systems, artistic effects
- **WMA**: Windows-specific applications

## Output Behavior

- **Safe Processing**: All converted files are placed in a "converted" subfolder
- **No Overwriting**: Your original files are never modified or replaced
- **Batch Processing**: Each script processes all matching files in the current directory
- **Automatic Folder Creation**: The "converted" folder is created automatically if it doesn't exist

## Troubleshooting

### Common Issues

**"ffmpeg not recognized" error**
- Ensure FFmpeg is installed and added to system PATH
- Try running `ffmpeg -version` in Command Prompt to verify installation
- Restart Command Prompt/system after installing FFmpeg

**No output files generated**
- Check that source audio files are in the Soundwave Audio Pack directory
- Verify file formats match the batch file you're running
- Ensure sufficient disk space for output files

**Audio quality issues**
- Use WAV as intermediate format for multi-step processing
- Choose appropriate sample rates (44.1kHz for music, 48kHz for video)
- Consider lossless formats (FLAC/ALAC) for archival purposes

**Batch files not working**
- Verify FFmpeg installation and PATH configuration
- Check that source files exist and are not corrupted
- Ensure write permissions in the directory

**Sample rate conversion artifacts**
- Use appropriate conversion direction (don't unnecessarily upsample)
- Consider the source material's original sample rate
- Test different resampling algorithms if quality is critical

## Performance Tips

1. **Process in batches**: Group similar conversions together
2. **Use WAV for multi-step processing**: Avoid multiple lossy conversions
3. **Choose appropriate quality**: Higher bitrates = larger files but better quality
4. **Monitor disk space**: Audio files can be large, especially uncompressed formats
5. **Keep originals**: Always maintain backups of source material

## Contributing

Contributions are welcome! Areas for improvement:
- Additional audio formats
- Advanced processing options (EQ, dynamics)
- Batch configuration files
- Progress indicators

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Built for audio professionals, content creators, and enthusiasts
- Powered by FFmpeg for reliable, high-quality audio processing
- Designed for Windows batch processing workflows
- Created for those who need efficient, safe audio conversion tools

---

**Note**: This toolkit is designed for Windows environments and requires FFmpeg. All processing maintains audio quality while providing safe, non-destructive workflows.