#!/bin/sh

set -ex

bin/msp430-etv --load test/ledblink.etlog --stat | fgrep '7620 measurements in 2.01 s = 3782 Hz sample rate'
bin/msp430-etv --load test/ledblink.etlog --stat | fgrep 'Reported energy: E = 0.0230'
bin/msp430-etv --load test/ledblink.etlog --stat | fgrep 'Mean voltage: 3.29 V'
bin/msp430-etv --load test/ledblink.etlog --stat | fgrep 'Mean current: 3483 µA'
bin/msp430-etv --load test/ledblink.etlog --stat | fgrep 'Current prediction error: 688 µA'
bin/msp430-etv --load test/ledblink.etlog --stat | fgrep 'Mean power: 11459 µW'
bin/msp430-etv --load test/ledblink.etlog --stat | fgrep 'Total energy: 0.0230'
