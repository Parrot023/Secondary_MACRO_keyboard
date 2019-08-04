
-- Keyboard id for 2nd keyboard
-- If you dont know the id of you secondary keyboard you can use Get_keycode.lus
-- Which you will also find in this repository
-- PID_0745 was the id of my secondary keyboard
local kbID = 'PID_0745';

-- minimizes the luamacros window
lmc.minimizeToTray = true
lmc_minimize()
clear() -- clears the luamacros terminal

lmc_device_set_name('MACROS',kbID); -- asigns a logical name to our secondary keyboard

lmc_print_devices() -- prints all devices, you should se a device named MACROS

-- function to write the key codes to file: key.txt
write_to_file = function (key)
    -- make sure to replace "fullpath" with the path that leads to your key.txt file
    -- REMEMBER to use double \\ insted of \ when specifying the path
    local file = io.open("fullpath\\key.txt", "w")
    file:write(key)
    file:flush() -- flush = save
    file:close()
    lmc_send_keys('{F24}')  -- Triggers the F24 key to tell autohotkey to read the key.txt file
end

-- define callback device MACROS 
lmc_set_handler('MACROS' ,function(button, direction)

  if (direction == 1) then return end  -- ignore down
  write_to_file(button) -- executes function write_to_file with argument button (button = the ascii code of that key)

end)
