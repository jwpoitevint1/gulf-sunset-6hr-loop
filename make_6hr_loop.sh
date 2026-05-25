#!/bin/bash
# Make 6-hour Gulf Sunset Loop
# Usage: ./make_6hr_loop.sh input.mp4 output.mp4

INPUT="$1"
OUTPUT="$2"

if [ -z "$INPUT" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 input.mp4 output.mp4"
  exit 1
fi

ffmpeg -stream_loop -1 -i "$INPUT" \
  -t 21600 \
  -c:v libx264 -preset medium -crf 20 \
  -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2" \
  -r 30 \
  -c:a aac -b:a 192k \
  -movflags +faststart \
  "$OUTPUT"

echo "✅ Created 6-hour loop: $OUTPUT"
