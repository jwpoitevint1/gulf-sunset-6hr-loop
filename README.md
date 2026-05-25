# 🌅 Gulf of Florida Sunset 6-Hour Loop

A beautiful relaxing beach sunset video optimized for **YouTube**, **Twitch**, **sleep sounds**, and video editors.

## Your Original Video
- Length: ~29 seconds
- Perfect seamless loop (waves, birds, sunset)

## 🎥 Recommended FFmpeg Command (Best for YouTube)

```bash
# High quality 6-hour seamless loop
ffmpeg -stream_loop -1 -i "your_29s_sunset.mp4" \
  -t 21600 \
  -c:v libx264 -preset slow -crf 18 \
  -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2,format=yuv420p" \
  -r 30 \
  -c:a aac -b:a 192k \
  -movflags +faststart \
  -metadata title="Gulf of Florida Sunset 6 Hours - Relaxing Ocean Waves" \
  florida_gulf_sunset_6hr_1080p.mp4
```

## For 4K (if your source supports it)
Add `-s 3840x2160` or use higher resolution scaling.

## 📝 YouTube Optimization Tips
- **Title**: "6 Hours of Gulf of Florida Sunset with Gentle Waves 🌅 Relaxing Ocean Sounds"
- **Thumbnail**: Use one of the frames (bright sunset)
- **Description**: See `youtube_description.txt`
- **Tags**: relaxing music, sleep sounds, asmr, beach sunset, florida gulf coast, ocean waves, 6 hours
- Enable loop in YouTube player for endless playback

## Other Tools
- **DaVinci Resolve** (free): Import clip → right-click → Loop → extend to 6 hours
- **CapCut**: Auto loop feature
- **Adobe Premiere**: Use nested sequence with loop

