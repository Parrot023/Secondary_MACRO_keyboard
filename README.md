# Secondary MACRO keyboard for windows
This project is about making a fully functional secondary macro keyboard for Windows
This have been done before but i did it in a slightly different way as 95% of all coding will be done in Auto hotkey.
This is because i found that finding help for LuaMacros can be quiet hard. Autohotkeys scripting language isnt as good as lua. But finding help for Auto Hotkey is easier than finding help for LuaMacros
Once you have 2nd_keyboard.lua set up you almost never have to touch it again
Therfore most problems you will run in to will be about Auto Hotkey

### Credit

- TaranVH also did a tutorial on this and it helped me understand LuaMacros [TaranVH/2nd-keyboard](https://github.com/TaranVH/2nd-keyboard/tree/master/LUAMACROS)
- Tom scott explained how he got 14 keyboards to work seperately in his video [The Art of the Bodge: How I Made The Emoji Keyboard](https://www.youtube.com/watch?v=lIFE7h3m40U)

Thanks to them for the inspiration for this project

## Here is how to do it if you want to try my code

### 1. Download the neccescary programs and files
- [LuaMacros](http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794)
- [Auto hotkey](https://www.autohotkey.com)
- This github repository

### 2. Get the id of your secondary keyboard
Open up LuaMacros and open the file **Get_key_codes.lua**. You will be prompted to press a button on your secondary keyboard. The program will then output a list of all connected devices. Something like this: 
```
MACROS  :  \\?\HID#VID_045E&PID_0745&MI_00#7&E77A16&0&0000#{884B96C3-56EF-11D1-BC8C-00A0C91405DD} [1049237] :  keyboard
<unassigned>  :  \\?\ACPI#MSFT0001#4&30E7D4BA&0#{884B96C3-56EF-11D1-BC8C-00A0C91405DD} [65604] :  keyboard
Total number of devices: 2
```
In my case you see i have two devices connected. MACROS is the device you just identified by pressing a key on your secondary keyboard. To the right of MACROS we have a long string, This is a combo of the device type and id. My secondary keyboard has the id: PID_0745 you find the id between the 2 first &. Example: 
```
?\HID#VID_045E **&PID_0745&** MI_00#7&E77A16&0&0000#{884B96C3-56EF-11D1-BC8C-00A0C91405DD}
```
Note down your keyboard id. You will need it at step 3.

### 3. Configure file: 2nd_keyboard.lua
Open up LuaMacros and open the file **2nd_keyboard.lua**. Now change the variable kbID with the keyboard id you just noted
```
local kbID = 'You secondary keyboard id';'
```

### 4. Run it and cross you fingers 
With **2nd_keyboard.lua** open in LuaMacros click the little blue play button this will run the program hopefully without errors. Now double click on the file **Main.ahk** this will run it and you will see a little green H in your task bar. Try and type 5 on your numberpad on the secondary keyboard. If your keyboard types 🤯 Congrats you know have a secondary MACRO keyboard. All macros can be configured in the Main.ahk file

### Side notes:

#### Auto Hotkey documentation
If you are new to Auto Hotkey you can find the documentation [here](https://www.autohotkey.com/docs/AutoHotkey.htm)
Its an excellent toll for creating som realy powerfull macros

#### Run on startup
if you want these files to run on startup you can move the file **2nd_kb_run_on_startup.bat** to
```
C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```
Just make sure to change the paths in the file to the paths of your files.
If you havent moved anything since you downloaded it the the path to LuaMacros will most likely be:
```
C:\Users\Username\Downloads\luamacros
```
And the path to this folder wil probably be:
```
C:\Users\Username\Downloads\Secondary_MACRO_keyboard
```
If this is the case change **2nd_kb_run_on_startup.bat** to:
```
start C:\Users\Username\Downloads\luamacros\LuaMacros.exe -r "C:\Users\Username\Downloads\Secondary_MACRO_keyboard\2nd_keyboard.lua"

start C:\Users\Username\Downloads\Secondary_MACRO_keyboard\2nd_keyboard_project\Main.ahk
```
**REMEMBER**: to change Username to your username

