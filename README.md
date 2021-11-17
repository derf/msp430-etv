# msp430-etv – MSP430 EnergyTrace Visualizer

msp430-etv performs, visualizes and analyzes energy measurements
on TI MSP430 Launchpads using the on-board EnergyTrace circuit.

It uses [energytrace-util](https://github.com/derf/energytrace-util) to start
and stop measurements using the proprietary TI MSP430 library. Measurements can
be analyzed directly or saved to a file for later analysis as well as
processing by other tools.

Analysis options include

* plots showing voltage, current, or power over time,
* data partitioning and statistics using a power threshold, and
* changepoint detectiong using the PELT algorithm.

See `bin/msp430-etv --help` for usage details. See [Automatic Energy Model
Generation with MSP430
EnergyTrace](https://ess.cs.uos.de/static/papers/Friesel-2021-CPSIoTBench.pdf)
for accuracy figures and some odds and ends.

Note: If you're only interested in measurement files and want to perform all
postprocessing by yourself, you do not need msp430-etv.
[energytrace-util](https://github.com/derf/energytrace-util) is sufficient for
that task.

## File Format

EnergyTrace performs measurements in intervals of about 270 µs. Each line
contains data for one measurement interval. Measurement data consists of for
readings:

1. Timestamps (µs) since start of the measurement,
2. Mean current (nA) over the last ten to thousand intervals,
3. Mean voltage (mV) with details unknown, and
4. Cumulative energy (nJ) since start of the measurement.

Note that the EnergyTrace hardware and firmware only measures time, voltage,
and energy. Current readings are calculated by the MSP430 client library. Power
readings are calculated from timestamps and energy readings by msp430-etv.

## Dependencies

* Python 3, numpy
* Taking measurements: [energytrace-util](https://github.com/derf/energytrace-util) and libmsp430.so
* Plots: python3-matplotlib
* Changepoint detection: python3-ruptures
