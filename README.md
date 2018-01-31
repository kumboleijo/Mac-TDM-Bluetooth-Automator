# Mac TDM Bluetooth Automator

This script allows you to use the mouse and keyboard from your iMac when using the target display mode.

Special thanks to [Matt](mailto:matt@geekbox.ch) and [Frederik](mailto:ego@frederikseiffert.de) for their code.

Links: [Blueutil by Frederik](http://www.frederikseiffert.de/blueutil/), [TDM Script by Matt](http://geekbox.ch/target-display-imac-macbook/)

## Setup

### 1. iMac

At first you need to download or clone this repo and create a new Automator program on your iMac. To do so open Automator.app and choose `new document` and choose `program` in the following dialogue. Drag and drop the `run shell script` template to action window and the paste code from the script file in this repo. Replace `REMOTE` with the macbooks username and hostname. It should look like this:

`REMOTE=user@hostname`

After that pick an endless loop below the shell script and set it to automatic mode. You should also set the stop condition to like `stop after 1000 times` or so.
