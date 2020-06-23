# OrbweaverAutoHotKey
This script allows the remapping of the Razer Orbweaver's buttons without the use of Razer Synapse 2.0, furthermore it enables the use of all of AutoHotKey's functionality.
# Requirements
[AutoHotKey](https://www.autohotkey.com/) needs to be installed, as well as [AutoHotInterception](https://github.com/evilC/AutoHotInterception), since the Orbweaver acts as its own keyboard, and we need to be able to distinguish between keyboards when reading button presses.

Follow the installation instructions for *AutoHotInterception* on its GitHub Page.
# Finding the Orbweaver’s Device ID
1. Open the Monitor.ahk File inside the AutoHotInterception Folder
2. Check one device at a time by ticking it oﬀ, in order to ﬁnd the VID and PID of the Orbweaver, note them down for later. In my specific case, they are 0x1532 and 0x0113, although this will probably vary for other users.
# Run the Script
The provided *OrbweaverScript.ahk* file should provide most of the functionality needed, due to my Swiss keyboard layout, you might need to change the *01* key, as well as the *17* key, as the former sends a *§* and the latter a *y* in this layout.

Note that the *Space* and *LAlt* keys have been set to wait 200ms after activation, due to the Orbweaver sometimes sending a double press, this workaround prevents that and restores functionality.

Note, that the VID and PID of the Orbweaver have been inserted into the GetKeyboardID Method, such that its id is returned for the Context Manager.
