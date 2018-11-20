# Name

hier -- layout of the timing system

# TN Directories

/user/pcrops/deployments/applications/cern/ : TN applications

    - fesa/Navigator

/acc/src/ : ???????????

/acc/local/share/makefile-generic : Makefile Generic

/acc/dsc/src/XXX/fec-name : fec configuration
/acc/dsc/XXX/fec-name     : mounted as HD of the fec

# Stuff inside FEC

/usr/local/timdt/ : location of the timdt library/system

/usr/local/timdt/timdt-fwk/timService : timService

# Logs

## CT + clock survey

cs-ccr-ctlog /local/ctmlog

## cbcm (old) 

/nfs/cs-ccr-ctm/opt/cbcm/wctx/{ENV}/{MACHINE}/{MODE} 

Working context containing info about current and past cycles played


  * _ENV_ : {OPER,TTB} Environment (operational or test bed)
  * _MACHINE_ : {LIC,LN4}
  * _MODE_ : {MAIN,LEIALONE,SPSALONE}

Inside we have:

  * _logs/_: sequence manager logs
  * _.dat_ : java objects containing bcd definitions
  * _stables/_ : contains text objects defining bcds and sequences

## cbcm (new)

/nfs/cs-ccr-ctm/opt/accsoft-timing-cbcm-server/cbcm-server/

  * log/cbcm.log : seqmanager log

## FESA (cmw)

/nfs/cs-ccr-tracing/local/cmw-log/cmw-log-writer/logs

CMW logs. One file per fec

# Repos

**acc-cpp** : svn+ssh://svn.cern.ch/reps/acc-cpp/

**accsoft:timing** : svn+ssh://svn.cern.ch/reps/acc-co/trunk/accsoft/timing

**acc-co:timing** : svn+ssh://svn.cern.ch/reps/acc-co/trunk/timing

**GitLab** : https://:@gitlab.cern.ch:8443/timing/timing.git

**FESA** : 

* _Deploy Units_ : https://svn.cern.ch/reps/acc-fesa/trunk/fesa-deploy-unit/
* _Classes_ : https://svn.cern.ch/reps/acc-fesa/trunk/fesa-class/
