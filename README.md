# 🌅 Gulf of Florida Sunset 8-Hour Loop

A beautiful relaxing beach sunset video optimized for **YouTube**, **Twitch**, **sleep sounds**, and video editors.

## Your Original Video
- Length: ~29 seconds
- Perfect seamless loop (waves, birds, sunset)

## 🎥 Recommended FFmpeg Command (Best for YouTube)

```bash
# High quality 8-hour seamless loop
ffmpeg -stream_loop -1 -i "your_29s_sunset.mp4" \
  -t 28800 \
  -c:v libx264 -preset slow -crf 18 \
  -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2,format=yuv420p" \
  -r 30 \
  -c:a aac -b:a 192k \
  -movflags +faststart \
  -metadata title="Gulf of Florida Sunset 8 Hours - Relaxing Ocean Waves" \
  florida_gulf_sunset_8hr_1080p.mp4
```

## For 4K
Change scaling to 3840x2160 if your source is high-res.

## 📝 YouTube Ready
- **Title Suggestion**: "8 Hours of Gulf of Florida Sunset with Gentle Waves 🌅 Relaxing Ocean Sounds | Sleep & Study"
- **Description**: See `youtube_description.txt`
- **Tags**: relaxing, sleep sounds, asmr, florida beach, gulf sunset, ocean waves, 8 hours

## Download Ready-to-Use (if available in Releases)
Check the **Releases** tab for pre-generated versions.

## Alternative Methods
- **In DaVinci Resolve**: Import → right-click clip → Modify → Loop → Set duration to 8 hours
- **CapCut / Premiere**: Duplicate + loop the clip
