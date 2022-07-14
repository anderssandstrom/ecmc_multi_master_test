# Test DTL 220517

## Log of tests
1. Started with testing the DTL master 2 system with motion. Started with 250Hz and it worked.
2. Parts of the DTL master 1 system (no motion) was disabled because of some onging works
3. Started DTL master 1 (no motion) with reduced slave count (124) at 100Hz
4. Changed DTL master 2 (with motion) to 100Hz
5. Logged data (a few min).
6. Started the other sequencer IOC:s
7. Logged data (10 min maybe)

## Observations
1. Etherlab was showing warnings on master 2 (etherlab master 2, DTL master 1) even when the ecmc system was not running. Strange... Could there be some error in that system? Maybe in the last slaves that was disabled?
2. In general the logged data looked very very good. Howvere one spike at 600microns was found (but that is OK for this setup). But maybe this soike could be related to teh time when the sequencer IOC:s was started.  

## Next steps if this tests fails
* Move one ecmc ioc to a separate controller. Then both ecmc ioc:s will run on dedicated controllers (then rate can most likely be increased).
* Test new version of etherlab master (should make situation better)
* Maybe not feasible but use a debian system instead (always better performance on debian, based on resulkts from a few tests)
* iperf on nic to see bandwith (once a broken nic have resulted in similar issues)
* Play with prios
* Check cabling
* Turn of DMA of harddrives: sudo hdparm -d0 /dev/sda
* Slim down o system (remove system slaves EK1100,EK1122)
* boot options!!! Disable all non needed stuff
