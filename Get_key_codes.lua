
-- assign logical name to macro keyboard
lmc_assign_keyboard('MACROS');
-- lists all connected devices
lmc_print_devices()

-- define callback for device MACROS
lmc_set_handler('MACROS' ,function(button, direction)
  if (direction == 1) then return end  -- ignore down
  print(button) -- print button code
end)
