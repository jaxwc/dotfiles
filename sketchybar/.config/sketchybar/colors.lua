return {
  black = 0xff1a1b26,        -- Darker base background
  white = 0xffc0caf5,        -- Light accents for text
  --red = 0xfff7768e,          -- Vibrant red for errors or alerts
  --green = 0xff9ece6a,        -- Brighter green for success indicators
  --blue = 0xff7aa2f7,         -- Vibrant blue for links or highlights
  yellow = 0xffe0af68,       -- Warm yellow for warnings or highlights
  --orange = 0xffff9e64,       -- Bright orange for accents
  --magenta = 0xffbb9af7,      -- Soft magenta for subtle highlights
  grey = 0xffa9b1d6,         -- Neutral grey for borders and separators
  --teal = 0xff7dcfff,         -- Bright teal for secondary highlights

  carnationPink = 0xffff007c,   -- Opaque bright red with a hint of magenta/pink.
  mutedCranberry = 0xffc53b53,  -- Opaque reddish-brown or a muted cranberry.
  lightCoral = 0xffff757f,      -- Opaque light red or coral.
  deepTeal = 0xff41a6b5,        -- Opaque teal or bluish-green.
  brightAqua = 0xff4fd6be,      -- Opaque bright turquoise or aqua.
  pastelLime = 0xffc3e88d,      -- Opaque light lime green or pastel chartreuse.
  lightPeach = 0xffffc777,      -- Opaque light orange or peach.
  mediumLavender = 0xff9d7cd8,  -- Opaque medium purple or lavender.
  vibrantOrange = 0xffff9e64,   -- Opaque orange or a deep peach.
  softLilac = 0xffbb9af7,       -- Opaque light pastel purple or lilac.
  skyBlue = 0xff7dcfff,         -- Opaque sky blue or light cerulean.
  periwinkleBlue = 0xff7aa2f7,  -- Opaque medium blue or periwinkle.

  transparent = 0x00000000,

    bar = {
        bg = 0x00000000,
        border = 0xff2c2e34
    },
    popup = {
        bg = 0xc02c2e34,
        border = 0xff7f8490
    },
    bg1 = 0x00000000,
    bg2 = 0x00000000,

    rainbow = {0xffff007c, 0xffc53b53, 0xffff757f, 0xff41a6b5, 0xff4fd6be, 0xffc3e88d, 0xffffc777, 0xff9d7cd8,
               0xffff9e64, 0xffbb9af7, 0xff7dcfff, 0xff7aa2f7},

    with_alpha = function(color, alpha)
        if alpha > 1.0 or alpha < 0.0 then
            return color
        end
        return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
    end
}
