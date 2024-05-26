The included tests were performed at McMaster University in Hamilton, Ontario, Canada by Dr. Phillip Kollmeyer 
(phillip.kollmeyer@gmail.com).  If this data is utilized for any purpose, it should be appropriately referenced.

A new 3Ah Samsung 3.0T cell was tested in an 8 cu.ft. thermal chamber with a 75amp, 5 volt Digatron Firing 
Circuits Universal Battery Tester channel with a voltage and current accuracy of 0.1% of full scale.


/*************************************************/
A series of tests were performed at six different temperatures, and the battery was charged after each test 
at 1C rate to 4.2V, 10mA cut off charge current, at battery temperature of 25degC

The tests were performed as follows:
1. Four pulse discharge HPPC test (1, 2, 6, and 12C discharge and 0.5, 1, 2, and 4C charge, 
with reduced values at lower temperatures) performed at 100, 95, 90, 80, 70..., 20, 15, 10, 5, 2.5 % SOC. ("..._HPPC.mat")  
2. C/20 Discharge and Charge test. ("..._C20DisCh.mat")
3.0.5C ("..._Dis_0p5C.mat"), 2C ("..._Dis_2C.mat"), and two 1C ("..._Cap_1C.mat") discharge tests.  The first 1C discharge test is performed 
before the UDDS cycle, and the second is performed before the Mix3 cycle.
4.Series of four drive cycles performed, in following order: UDDS(..._UDDS.mat), HWFET(..._HWFET.mat), LA92 (..._LA92.mat), US06 (..._US06.mat).  
5. A series of eight drive cycles (mix 1-8) (..._Mixed#.mat) consist of random mix of UDDS, HWFET, LA92, US06. 
The drive cycle power profile is calculated for a single Turnigy cell in a compact electric vehicle.
6. The previous tests are repeated for ambient temperatures of 40degC, 25degC, 10degC, 0degC, -10degC, 
and -20degC, in that order. For tests with ambient temperature below 10degC, a reduced regen current limit 
is set to prevent premature aging of the cells. The drive cycle power profiles are repeated until 95% of the 
1C discharge capacity at the respective temperature has been discharged from the cell
7. A series of 16 charges (charge 1-16) (..._Charge##.mat) store the cell charging before and after every drive cycle starting with an inital top
up before doing the Cap_1C test

/*************************************************/
Matlab (.mat) file naming convention:
The file names begin with the date the test started, and are followed by the time the test started and a 
descriptive name, such as in the following example:
"11-07-19_10.49 557_Cap_1C_40degC_IN21700_30T.mat?

Date: "11-07-19" (November 7th, 2019)
Time: "10.49" (10:49 am)
Descriptor: "40degC_IN21700_30T"

The naming convention allows for sorting by date and test time when all the files are placed in one folder. 
This may be useful when trying to determine which charge is associated with which drive cycle, for example, 
or when looking at aging.

/*************************************************/
Data columns:
Time (time in seconds)
TimeStamp (timestamp in MM/DD/YYYY HH:MM:SS AM format)
Voltage (measured cell terminal voltage, sense leads welded directly to battery terminal)
Current (measure current in amps)
Ah (measured amp-hours, with Ah counter typically reset after each charge, test, or drive cycle)
Wh (measured watt-hours, with Wh counter reset after each charge, test, or drive cycle)
Power (measure power in watts)
Battery_Temp_degC (battery case temperature, at middle of battery, in degrees Celsius measured with a 
AD592 +/-1degC accuracy temperature sensor)
/*************************************************/
Time step:
Tests considered more important, such as drive cycles, were saved with a 0.1 second time step.  
Other test portions, such as charges and pauses, were considered to have slower dynamics and be less 
important, and were therefore save at a lower data rate.  Be aware of these variances in data rate, and up 
sample the logged data if necessary to achieve a higher or consistent data rate.  Files may also have 
variable sample rates, so be sure to plot time versus the parameter of interest.

CSV files:
The original CSV files saved by the cycler are also included, they have data identical to that in the .mat 
files.  The files are labeled with test number and a test description.  For example "555_Dis_2C" is test 
555 as assigned by the cycler and a 2C discharge.  The header in the files contains additional descriptive 
information.
