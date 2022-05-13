# ecmc_multi_master_test
Test with two masters on same controller in order to trouble shoot latencny issue with Alfios system.

## Tests
Note: Tests are not listed in order of importance..

* Start one ioc at the time, the most complex first
* Install graphics run in graphics.target and multi-user.target
* only run one ecmc ioc and see latency
* mcoreutils (add rules, like in this repo)
* Switch master index of the two ecmc ioc:s
* iperf on nic to see bandwith (once a broken nic have resulted in similar issues)
* Run without CCCE (interactive mode)
* Play with prios
* Check cabling
* Test new etherlab master (PSI version with patches)
* Turn of DMA of harddrives: sudo hdparm -d0 /dev/sda

## Test on new system (Beckhoff C6025)
* Test running both ethercat ioc:s on new controller (without CCCE first)
* Test both ioc:s with CCCE
* Run one ecmc IOC on each controller
* Start one ioc at the time, the most complex first.
* Turn of DMA of harddrives: sudo hdparm -d0 /dev/sda

## Observations from tests in B02 lab
* Seems not good to start both ioc:s at the same time. Start the most complex first.
* Running without mcoreutils gave a latency disturbance each minute on both ioc:s (simultaneous). This was not seen when running ecmc on differet cores (with mcore-utils).
*

