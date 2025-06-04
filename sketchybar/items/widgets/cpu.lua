local icons = require("icons")
local colors = require("colors")
local settings = require("settings")

-- Execute the CPU event provider binary
sbar.exec("killall cpu_load >/dev/null; $CONFIG_DIR/helpers/event_providers/cpu_load/bin/cpu_load cpu_update 2.0")

local cpu = sbar.add("item", "widgets.cpu", {
  position = "right",
  background = {
    height = 22,
    color = { alpha = 0 },
    border_width = 0,
    drawing = true,
  },
  icon = {
    string = icons.cpu,
    color = colors.vibrantOrange
  },
  label = {
    string = "??%",
    font = {
      family = settings.font.numbers,
      style = settings.font.style_map["Bold"],
    },
    color = colors.vibrantOrange,
    align = "right",
    padding_right = 0,
  },
  padding_right = settings.paddings + 6
})

cpu:subscribe("cpu_update", function(env)
  -- Also available: env.user_load, env.sys_load
  cpu:set({
    label = env.total_load .. "%",
  })
end)

cpu:subscribe("mouse.clicked", function(env)
  sbar.exec("open -a 'Activity Monitor'")
end)

-- Background around the cpu item
sbar.add("bracket", "widgets.cpu.bracket", { cpu.name }, {
  background = { color = colors.transparent }
})

-- Padding for the cpu item
sbar.add("item", "widgets.cpu.padding", {
  position = "right",
  width = settings.group_paddings
})