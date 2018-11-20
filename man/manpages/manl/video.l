.TH "VIDEO UTILITIES" "" "" "" ""
.SS How to compress GoPro videos
.PP
ffmpeg \-i input.mp4 \-vcodec libx264 \-crf 30 \-profile:v baseline
\-level 3.0 \-strict \-2 output.mp4
.IP \[bu] 2
crf: constant rate factor.
Lower = higher quality and bigger size.
23 = default (DVD quality)
.IP \[bu] 2
strict \-2 : has to be last parameter to allow experimental codecs
