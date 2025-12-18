local settings = require("settings")
local colors = require("colors")

-- Padding item required because of bracket
sbar.add("item", { position = "right", width = settings.group_paddings })

local cal = sbar.add("item", {
	icon = {
		color = colors.skyBlue,
		padding_left = 7,
		font = { size = 12 },
	},
	label = {
		color = colors.carnationPink,
		padding_right = 3,
		align = "right",
		font = {size = 12},
	},
	position = "right",
	update_freq = 30,
	padding_left = 3,
	padding_right = 3,
	background = {
		color = colors.bg1,
		border_color = colors.bar.transparent,
		border_width = 1,
	},
})

-- Double border for calendar using a single item bracket
sbar.add("bracket", { cal.name }, {
	background = {
		color = colors.transparent,
		height = 30,
		border_color = colors.bar.bg,
	},
})

-- Padding item required because of bracket
sbar.add("item", { position = "right", width = settings.group_paddings })

cal:subscribe({ "forced", "routine", "system_woke" }, function(env)
	cal:set({ icon = os.date("%a %B %d"), label = os.date("%H:%M") })
end)