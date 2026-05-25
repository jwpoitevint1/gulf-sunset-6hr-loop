#!/bin/bash
# One-click script to create 10-hour Gulf of Florida sunset loop

if [ $# -ne 2 ]; then
  echo "Usage: $0 input_video.mp4 output_10hr.mp4"
  exit 1
fi

INPUT="$1"
OUTPUT="$2"

ffmpeg -stream_loop -1 -i "$INPUT" \
  -t 36000 \
  -c:v libx264 -preset medium -crf 20 \
  -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2,format=yuv420p" \
  -r 30 \
  -c:a aac -b:a 192k \
  -movflags +faststart \
  "$OUTPUT"

echo "✅ 10-hour loop created: $OUTPUT"
