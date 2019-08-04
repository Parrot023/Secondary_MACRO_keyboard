
-- assign logical name to macro keyboard
-- you will be prompted to press a key on keyboard MACROS. This is the secondary keyboard
lmc_assign_keyboard('MACROS');
-- lists all connected devices
lmc_print_devices()

-- defines callback for device MACROS
lmc_set_handler('MACROS' ,function(button, direction)
  if (direction == 1) then return end  -- ignore down
  print(button) -- print button code
end)
