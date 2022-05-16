# Testplan G01

## Preps
1. Lower EC_RATE to 250 on both ecmc IOC:s

## Tests
1. Run master 1 IOC only, check latency (250Hz)
2. Run master 2 IOC only, check latency (250Hz)

If high latency in 1,2 then:

3. Lower EC_RATE to 100Hz
4. run one ecmc ioc without CCCE, check latency.
5. Test install graphics
6. Test Beckhoff controller, same result?
7. Turn of DMA of harddrives: sudo hdparm -d0 /dev/sda
8. Tune IRQ prios
9. Boot parameters of Lenovo?
10. iperf on nic to see bandwith (once a broken nic have resulted in similar issues)

If latency is OK in 1, 2:

11. Run both ecmc IOC:s at 250Hz, check latency.

If latency not OK in test 11:

12. Test Mcoreutils, put one ecmc ioc on core 1 and the other on core 2
13. revisit test 3..10
14. Run one ecmc ioc on each controller (one lenovo and one beckhoff)

# Other things to consider or need testing
1. New etherlab master !IMPORTANT TEST!
2. IRQ prios, epics thread porios
3. Slim down system (remove system slaves EK1100,EK1122 without any process data)
4. Switch master index of the two ecmc ioc:s (low probablity of success)

# Changes to IOC config based on current test results (mcag lab)
1. Reduce rate of both IOC to 100..250Hz
2. Add mcoreutils (ecmc on different cores)
3. Do not start at same time, is it possible to startup one at the time?

