#!/usr/bin/env bash
# Generate an 8-hour Gulf of Florida sunset loop.
# Usage: ./make_8hr_loop.sh input_video.mp4 [output_name.mp4]

set -euo pipefail

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
  echo "Usage: $0 input_video.mp4 [output_name.mp4]"
  exit 1
fi

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "Error: ffmpeg is not installed or not available on PATH."
  exit 1
fi

INPUT="$1"
OUTPUT="${2:-gulf_florida_sunset_8hr_1080p.mp4}"

if [ ! -f "$INPUT" ]; then
  echo "Error: input file not found: $INPUT"
  exit 1
fi

ffmpeg -stream_loop -1 -i "$INPUT" \
  -t 28800 \
  -c:v libx264 -preset medium -crf 20 \
  -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2,format=yuv420p" \
  -r 30 \
  -c:a aac -b:a 192k \
  -movflags +faststart \
  "$OUTPUT"

echo "Created 8-hour loop: $OUTPUT"
