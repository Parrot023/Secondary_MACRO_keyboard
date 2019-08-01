# Secondary MACRO keyboard for windows
This project is about making a fully functional secondary macro keyboard for windows
This have been done before but i did it in a slitly different way

### Here is how to do it if you want to try my code
1. Download [Luamacros](http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794) and [Auto hotkey](https://www.autohotkey.com)
2. Download this github repository
3. Open up LuaMacros and open the file **Get_key_code.lua**. You will be prompted to press a button on you secondary keyboard. The program will then output a list of all connected devices // something like this 
```
MACROS  :  \\?\HID#VID_045E&PID_0745&MI_00#7&E77A16&0&0000#{884B96C3-56EF-11D1-BC8C-00A0C91405DD} [1049237] :  keyboard
<unassigned>  :  \\?\ACPI#MSFT0001#4&30E7D4BA&0#{884B96C3-56EF-11D1-BC8C-00A0C91405DD} [65604] :  keyboard
Total number of devices: 2
```
In my case you see i have two devices connected. To the rigth of the name MACROS you we have a long string this is the device type and id. The id is important in my case you see where it says PID_0745 this is my keyboard id. Note down yours as you will need it later.

4. Open up LuaMacros and open the file **2nd_keyboard.lua**. Now change the variable kbID with you keyboard id
```
local kbID = 'PID_0745';
```
5. With **2nd_keyboard.lua** open click the little blue play button this will run the program hopefully without errors. Now double click on the file **Main.ahk** this will run it and you will see a little green H in your task bar. Try and type 5 on your numberpad on the secondary keyboard. If you keyboard types 🤯 Congrats you know have a secondary MACRO keyboard. All macros can be configured in the Main.ahk file