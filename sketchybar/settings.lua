return {
  display = 1,
  paddings = 5,
  group_paddings = 5,
  corner_radius = 8,
  bar = {
    height = 40,
  },
  y_offset = 5,

  -- Apple Menu Config
  app = {
    offset = {
      y = 60,
      x = 5,
    },
    corner_radius = 2,
    font = {
      text = {
        family = "SFMono Nerd Font",
        size = 14.0
      },
      numbers = {
        family = "SFMono Nerd Font",
        size = 14.0
      },
      icons = "SF Pro Text",               -- Used for icons (or NerdFont)
      style_map = {
          ["Regular"] = "Regular",
          ["Semibold"] = "Medium",
          ["Bold"] = "Bold",
          ["Heavy"] = "Bold",
          ["Black"] = "ExtraBold"
      },
      overrides = {
        TimeView = {
          family = "SFMono Nerd Font",
          size = 2.0
        }
      }
    }
  },
  icons = "sf-symbols",   -- Options: "sf-symbols", "nerdfont"
  animated_icons = false, -- Set to true if you want to use animated icons

  font = {
      text = "SFMono Nerd Font",    -- Used for text
      numbers = "SFMono Nerd Font", -- Used for numbers
      icons = "SF Pro Text",               -- Used for icons (or NerdFont)
      style_map = {
          ["Regular"] = "Regular",
          ["Semibold"] = "Medium",
          ["Bold"] = "Bold",
          ["Heavy"] = "Bold",
          ["Black"] = "ExtraBold"
      }
  }
}
