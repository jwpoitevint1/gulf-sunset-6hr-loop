# Gulf of Florida Sunset Loops

Lightweight FFmpeg automation scripts for creating long-form Gulf sunset ambience videos for YouTube, sleep, study, meditation, and background playback.

## Included Scripts

- `make_6hr_loop.sh`
- `make_8hr_loop.sh`
- `make_10hr_loop.sh`

All scripts:

- Create seamless looping videos
- Export at 1080p
- Use H.264 encoding
- Force `yuv420p` for broad playback compatibility
- Enable `+faststart` for streaming platforms
- Preserve audio with AAC encoding

## Requirements

Install FFmpeg first.

Verify installation:

```bash
ffmpeg -version
```

## Quick Start

Make the script executable:

```bash
chmod +x make_6hr_loop.sh
```

Run the script:

```bash
./make_6hr_loop.sh input.mp4 output.mp4
```

Optional output filename:

```bash
./make_8hr_loop.sh input.mp4
```

## Example Outputs

- `gulf_florida_sunset_6hr_1080p.mp4`
- `gulf_florida_sunset_8hr_1080p.mp4`
- `gulf_florida_sunset_10hr_1080p.mp4`

## Notes

- Rendering time depends on CPU/GPU capability.
- Long-form 1080p videos can become very large.
- SSD storage is recommended for faster encoding.

## YouTube Assets

See `youtube_description.txt` for upload descriptions, hashtags, and metadata.

## Releases

Pre-generated outputs may be uploaded under GitHub Releases when available.
