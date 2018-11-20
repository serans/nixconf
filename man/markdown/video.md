%VIDEO UTILITIES

How to compress GoPro videos
----------------------------

ffmpeg -i input.mp4 -vcodec libx264 -crf 30 -profile:v baseline -level 3.0 -strict -2 output.mp4

 - crf: constant rate factor. Lower = higher quality and bigger size. 23 = default (DVD quality)
 - strict -2 : has to be last parameter to allow experimental codecs
