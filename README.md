# Mac TDM Bluetooth Automator

This script allows you to use the mouse and keyboard from your iMac when using the target display mode.

> This is not my script but a tutorial how to use this script written by Matt. Special thanks to [Matt](mailto:matt@geekbox.ch) and [Frederik](mailto:ego@frederikseiffert.de) for their code.
>
> Links: [Blueutil by Frederik](http://www.frederikseiffert.de/blueutil/), [TDM Script by Matt](http://geekbox.ch/target-display-imac-macbook/)

This script allows you to automatically connect the mouse and keyboard of your iMac to your MacBook when using the target display mode.

> Both, the iMac and the MacBook needs to connect once to the mouse and the keyboard before using this script!

## Setup

_Make sure your MacBook allows SSH connections! You can enable this feature in Global Settings._

### 1. On your iMac

At first you need to download or clone this repo and create a new Automator program on your iMac. To do so open Automator.app and choose `new document` and choose `program` in the following dialogue. Drag and drop the `run shell script` template to action window and the paste code from the script file in this repo. Replace `REMOTE` with the macbooks username and hostname. It should look like this:

```
REMOTE=user@hostname
```

After that pick an endless loop below the shell script and set it to automatic mode. You should also set the stop condition to like `stop after 1000 times` or so. Save the program to file and close the Automator.app. Go to Global Settings > Users and put this program in autostart.

You should save the MacBooks public key to your iMac to use the script without password prompt.

### 2. On your iMac AND on your MacBook

The nixt thing you'll need to do is to download [Blueutil](http://www.frederikseiffert.de/blueutil/) by [Frederik Seiffert](mailto:ego@frederikseiffert.de) which is a small program allowing you to toggle the bluetooth state via command line. Install this on BOTH macs!

Now everytime you boot your iMac and login with your user account you can simply just connect the iMac and MacBook via thunderbolt and hit `CMD+F2` on your iMacs keyboard. The target display mode will start and the mouse and keyboard will connect to your MacBook.

<!-- ## Passwordless SSH Connection -->
