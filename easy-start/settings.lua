--
--  control.lua
--  easy-start
--
--  Created by Squiddie Jan/2026
--

-- settings.lua
data:extend({
  {
    type = "bool-setting",
    name = "easy-start-cliff-explosives",
    setting_type = "startup",
    default_value = false,
    order = "101"
  },
  {
    type = "bool-setting",
    name = "easy-start-landfill",
    setting_type = "startup",
    default_value = false,
    order = "102"
  },
  {
    type = "bool-setting",
    name = "easy-start-car",
    setting_type = "startup",
    default_value = false,
    order = "103"
  }
})
