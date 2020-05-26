# Force Saver
Sublime plugin to trigger save on all files open in a window. Useful for triggering after-save actions (e.g. https://packagecontrol.io/packages/Expand%20Tabs%20on%20Save).

# Installation
- Clone this repo to your local machine
- run `cp [path/to/repo/]ForceSaver.* [path/to/sublime/Packages/User/]`
  - for OSX the packages path should be `~/Library/Application Support/Sublime Text 3/Packages/User/`
  - this will copy `ForceSaver.py` and `ForceSaver.sublime-commands` into the User packages directory
- NOTE: You may have to restart Sublime

# Usage
- Open the Command Palette ( `Command + Shift + P` on OSX) and search for `Force` and you'll see
  the `Force Saver: Save All` command there.
<img width="1293" alt="Screen Shot 2020-05-26 at 4 28 27 PM" src="https://user-images.githubusercontent.com/608048/82948409-bb40e500-9f6f-11ea-9809-ae2037ebcb35.png">

# Enhancements

## Install Menu Item
- Add the Force Save All command to the file menu
  - if you don't have a `[path/to/sublime/Packages/User/]Main.sublime-menu` installed already
    - run `cp [path/to/repo/]Main.sublime-menu.example [path/to/sublime/Packages/User/]Main.sublime-menu`
  - if you do have one already, add an entry like the one in `Main.sublime-menu.example`
- You should see the new "Force Save All Open Files" command in the File menu (Try restarting Sublime if you don't)

<img width="1145" alt="Screen Shot 2020-05-26 at 4 35 00 PM" src="https://user-images.githubusercontent.com/608048/82948395-b3814080-9f6f-11ea-95f0-cde480fd9b42.png">






