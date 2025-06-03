local colors = require("colors")
local settings = require("settings")
local app_icons = require("helpers.app_icons")

-- No need for space_id here as it's not directly used for the front_app item logic
-- local space_id = sbar.exec("aerospace list-workspaces --focused")

-- Create the front app item
local front_app = sbar.add("item", "front_app", {
    label = {
        drawing = true,
        color = colors.white,
        font = {
            family = settings.font.text,
            style = settings.font.style_map["Bold"],
            size = 12,
        },
        padding_right = 10,
    },
    icon = {
        background = {
            drawing = true,
            image = {
                scale = 0.75,
                padding_right = settings.paddings,
                padding_left = settings.paddings
            }
        }
    },
    background = {
        color = colors.bg3,
        border_width = 0,
        height = 26,
    },
    updates = true,
    -- !!! REMOVE OR COMMENT OUT display = 1 HERE !!!
    -- If you want it on all displays, do NOT specify a display.
    -- If it's omitted, SketchyBar places it on all active displays by default.
})

-- Event: Front app switched
front_app:subscribe("front_app_switched", function(env)
    -- No need to fetch monitor_id here if you want it on all displays.
    -- The information is only useful if you were trying to conditionally display it.
    -- sbar.exec("aerospace list-windows --focused --format '%{monitor-id}'", function(monitor_id, exit_code)

    front_app:set({
        icon = {
            background = {
                image = "app." .. env.INFO,
            },
        },
        label = {
            drawing = true,
            string = env.INFO,
        },
        -- !!! REMOVE OR COMMENT OUT display = 1 HERE !!!
        -- This is the crucial part. If you set it here, it will only update
        -- on that specific display. To update across all, omit it.
    })
    -- end) -- End of sbar.exec callback if it were still present
end)

return front_app
