# Testplan G01

## Tests Lenovo
1. Run master 1 IOC only, check latency (250Hz)
2. Run master 2 IOC only, check latency (250Hz)

If high latency in 1,2 then:

3. run one ecmc ioc without CCCE, check latency.
4. Test install graphics
5. Test Beckhoff controller, same result?
6. Turn of DMA of harddrives: sudo hdparm -d0 /dev/sda
7. Tune IRQ prios
8. Boot parameters of Lenovo?
9. iperf on nic to see bandwith (once a broken nic have resulted in similar issues)

If latency is OK in 1, 2:

10. Run both ecmc IOC:s at 250Hz, check latency.

If latency not OK in test 10:

11. Test Mcoreutils, put one ecmc ioc on core 1 and the other on core 2
12. revisit test 3..8
13. Run one ecmc ioc on each controller

# Other things to consider or need testing
1. New ether lab master !IMPORTANT!
2. IRQ prios, epics thread porios
3. Slim down o system (remove system slaves EK1100,EK1122)
4. Switch master index of the two ecmc ioc:s (low probablity of success)

# Changes to IOC config based on current test results (mcag lab)
1. Reduce rate of both IOC to 100..250Hz
2. Add mcoreutils (ecmc on different cores)
3. Do not start at same time, is it possible to startup one at the time?

