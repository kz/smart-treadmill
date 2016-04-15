# smart-treadmill

## Project Status

The project has been cancelled due to the cost of equipment required to allow a camera the treadmill screen at the optimal angle. However, it may be possible to revive this project with ticker tape with black dots placed at regular intervals being stuck to the running belt and a small camera being placed above it. Alternatively (and perhaps even better!), multiple, small magnets and a Hall Effect sensor could be used to find the RPM of a treadmill.

## Overview

smart-treadmill is a personal project where I aim to make treadmill runs trackable.

Currently, on apps like Strava, the focus is on GPS tracking for outdoor runs. Running on a treadmill cannot make use of a GPS as running on a treadmill is a static activity. The lack of cool graphs and interesting data after entering a treadmill run as a manual run leaves much to be desired.

The aim of smart-treadmill is to record data and generate graphs based on a treadmill's digital display. This is accomplished by recording the display during an entire run, performing OCR on the speed at a rate of one frame per second, and finally generating data that can be used to create graphs.

## Installation

To install this on your own machine:

1. Clone this repository to the desired folder: `git clone git@github.com:kz/smart-treadmill.git`
2. Run `vagrant up`.

## Credits

- [Kelvin Zhang](https://github.com/kz)
- [All Contributors](link-contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
