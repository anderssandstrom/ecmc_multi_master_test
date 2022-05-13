##############################################################################
## Test config many slaves and 2 masters

##############################################################################
## Initiation:
epicsEnvSet("IOC" ,"$(IOC="MASTER0")")
epicsEnvSet("ECMCCFG_INIT" ,"")  #Only run startup once (auto at PSI, need call at ESS), variable set to "#" in startup.cmd
epicsEnvSet("SCRIPTEXEC" ,"$(SCRIPTEXEC="iocshLoad")")

require ecmccfg 7.0.1
require mcoreutils 1.2.2

# Add rule to run ecmc on core 1
mcoreThreadRuleAdd ecmc * 1 ecmc_rt

epicsEnvSet("ECMC_ASYN_PORT_MAX_PARAMS",3000)
# run module startup.cmd (only needed at ESS  PSI auto call at require)
$(ECMCCFG_INIT)$(SCRIPTEXEC) ${ecmccfg_DIR}startup.cmd, "IOC=$(IOC),ECMC_VER=7.0.1,MASTER_ID=0"

##############################################################################
## Config hardware:


${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EK1100"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7037"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7211"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EM3702"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EK1101"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1018"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2004"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL5002"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EK1101"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL5101"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2004"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL3255"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL3702"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL5021"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7037"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7031"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL2819"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL1808"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EK1100"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7041-1000"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7041"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7041-0052"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7047"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL9576"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7201"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7201-0010"
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7211"
#${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7342"
#${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL9576"
#${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd, "HW_DESC=EL7201"

#Apply hardware configuration"
ecmcConfigOrDie "Cfg.EcApplyConfig(1)"

epicsEnvSet("DEV",      "$(IOC)")
epicsEnvSet("ID",       "1")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "2")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "3")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "4")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "5")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "6")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "7")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "8")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "9")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "10")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "11")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "12")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "13")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "14")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "15")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "16")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "17")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "18")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "19")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "20")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "21")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "22")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "23")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "24")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "25")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "26")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "27")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "28")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "29")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})
epicsEnvSet("ID",       "30")
$(SCRIPTEXEC) ($(ecmccfg_DIR)configureVirtualAxis.cmd, CONFIG=./cfg/linear.vax, ID=${ID})

##############################################################################
############# Configure diagnostics:

ecmcConfigOrDie "Cfg.EcSetDiagnostics(1)"
ecmcConfigOrDie "Cfg.EcEnablePrintouts(0)"
ecmcConfigOrDie "Cfg.EcSetDomainFailedCyclesLimit(100)"

# go active
$(SCRIPTEXEC) ($(ecmccfg_DIR)setAppMode.cmd)
iocInit()

