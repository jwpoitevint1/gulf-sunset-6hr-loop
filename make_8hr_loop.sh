#!/bin/bash
# Generate 8-hour Gulf Florida Sunset Loop

if [ -z "$1" ]; then
  echo "Usage: $0 input_video.mp4 [output_name.mp4]"
  exit 1
fi

INPUT="$1"
OUTPUT="${2:-gulf_florida_sunset_8hr_1080p.mp4}"

ffmpeg -stream_loop -1 -i "$INPUT" \
  -t 28800 \
  -c:v libx264 -preset medium -crf 20 \
  -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2,format=yuv420p" \
  -r 30 \
  -c:a aac -b:a 192k \
  -movflags +faststart \
  "$OUTPUT"

echo "✅ 8-hour loop created: $OUTPUT"
