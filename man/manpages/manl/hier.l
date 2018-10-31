.TH "" "" "" "" ""
.SH Name
.PP
hier \-\- layout of the timing system
.SH TN Directories
.PP
/acc/src/ : ???????????
.PP
/acc/local/share/makefile\-generic : Makefile Generic
.PP
/acc/dsc/src/XXX/fec\-name : fec configuration /acc/dsc/XXX/fec\-name :
mounted as HD of the fec
.SH Stuff inside FEC
.PP
/usr/local/timdt/ : location of the timdt library/system
.PP
/usr/local/timdt/timdt\-fwk/timService : timService
.SH Logs
.SS CT + clock survey
.PP
cs\-ccr\-ctlog /local/ctmlog
.SS cbcm (old)
.PP
/nfs/cs\-ccr\-ctm/opt/cbcm/wctx/{ENV}/{MACHINE}/{MODE}
.PP
Working context containing info about current and past cycles played
.IP \[bu] 2
\f[I]ENV\f[] : {OPER,TTB} Environment (operational or test bed)
.IP \[bu] 2
\f[I]MACHINE\f[] : {LIC,LN4}
.IP \[bu] 2
\f[I]MODE\f[] : {MAIN,LEIALONE,SPSALONE}
.PP
Inside we have:
.IP \[bu] 2
\f[I]logs/\f[]: sequence manager logs
.IP \[bu] 2
\f[I]\&.dat\f[] : java objects containing bcd definitions
.IP \[bu] 2
\f[I]stables/\f[] : contains text objects defining bcds and sequences
.SS cbcm (new)
.PP
/nfs/cs\-ccr\-ctm/opt/accsoft\-timing\-cbcm\-server/cbcm\-server/
.IP \[bu] 2
log/cbcm.log : seqmanager log
.SS FESA (cmw)
.PP
/nfs/cs\-ccr\-tracing/local/cmw\-log/cmw\-log\-writer/logs
.PP
CMW logs.
One file per fec
.SH Repos
.PP
\f[B]acc\-cpp\f[] : svn+ssh://svn.cern.ch/reps/acc\-cpp/
.PP
\f[B]accsoft:timing\f[] :
svn+ssh://svn.cern.ch/reps/acc\-co/trunk/accsoft/timing
.PP
\f[B]acc\-co:timing\f[] :
svn+ssh://svn.cern.ch/reps/acc\-co/trunk/timing
.PP
\f[B]GitLab\f[] : https://:\@gitlab.cern.ch:8443/timing/timing.git
.PP
\f[B]FESA\f[] :
.IP \[bu] 2
\f[I]Deploy Units\f[] :
https://svn.cern.ch/reps/acc\-fesa/trunk/fesa\-deploy\-unit/
.IP \[bu] 2
\f[I]Classes\f[] : https://svn.cern.ch/reps/acc\-fesa/trunk/fesa\-class/
