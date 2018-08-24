% TIMSERVICE

# NAME

timService - initialises timService to make CTR available to users via timdt library

# PARAMS

-e VAR=XXX           :Set environment variable VAR to XXX

-version             :Print version of the task and timing libraries

-no-cmx              :Don't use CMX

-acet-print          :Print message before sending it to ACET

-no-acet             :Don't use ACET library

-acet-no-log         :DEPRECATED ! use -no-acet instead

-shm-no-w            :Don't rewrite the shared memory, only listen message box

-shmrt-clean         :Clean all history shared memory at the start-up (-shm-clean should be activated)

-shm-clean           :Clean static shared memory at the start-up

-hw-def HW           :If no module declared in config file, try to detect HW hardware (default GMT, can be WR)

-no-hw-detect        :Use config file instead of real hw for the configuration

-no-load-hw          :Don't reconfigure hardware

-load-args LIST      :List LIST (in quotes) of arguments for TimLoad

-load-ver VER        :DEPRECATED ! (Use VER version of TimLoad instead of PRO)

-cfg-ver VER         :Use VER version of config files instead of PRO

-fwk VER             :Start tasks from timing framework VER

-no-sem              :Don't verify semaphore of uniqueness (warning to conflicts)

-rt-args LIST        :List LIST (in quotes) of arguments for TimRtXXX

-rt-ver VER          :DEPRECATED ! (Use VER version of TimRtXXX instead of PRO)

-rtlaunched          :RT server already launched

-timeout SEC         :DEPRECATED ! (Set time to stop listening message queue and exit)

-dl-l LEVEL          :DEPRECATED ! (Set debug level of logs to LEVEL)

-dl-p LEVEL          :Set debug level of print to LEVEL (0 = NONE , 1 = ERROR , 2 = CRITICAL , 3 = WARNING (default) , 4 = INFO)

-vb                  :Verbose

-h                   :Display this help

# ENVIRONMENT VARIABLES

TIMDT_PATH_CFG: path of configuration files of the timing (default /dsc/data/timing/ocbcm)
TIMDT_PATH_LOCAL: path of local timings xml file (default /dsc/local/data)
TIMDT_PATH_BIN: path for binary to execute (default /usr/local/timdt/timdt-fwk)

