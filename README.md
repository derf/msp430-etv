# msp430-etv – MSP430 EnergyTrace Visualizer

msp430-etv is a wrapper around
[energytrace-util](https://github.com/derf/energytrace-util) to
simplify aggregation, visualization and basic analysis of EnergyTrace
measurements.

Measumerents can be taken directly or loaded from energytrace-util output.
Data belonging to startup code whose power consumption is not of interest can
be skipped.

msp430-etv supports plotting the power consumption (calculated from voltage and
current data) and writing mean voltage, current, and power as well as total
energy for a given measurement to stdout.

## Dependencies

* [energytrace-util](https://github.com/derf/energytrace-util)
  and libmsp430.so
* Python 3 with matplotlib and numpy
