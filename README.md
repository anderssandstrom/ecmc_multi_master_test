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

## Test on new system
* Test running both ethercat ioc:s on new controller
* Run one ecmc IOC on each controller
* Start one ioc at the time, the most complex first
* 
