return {
  black = 0xff1a1b26,        -- Darker base background
  white = 0xffc0caf5,        -- Light accents for text
  red = 0xfff7768e,          -- Vibrant red for errors or alerts
  green = 0xff9ece6a,        -- Brighter green for success indicators
  blue = 0xff7aa2f7,         -- Vibrant blue for links or highlights
  yellow = 0xffe0af68,       -- Warm yellow for warnings or highlights
  orange = 0xffff9e64,       -- Bright orange for accents
  magenta = 0xffbb9af7,      -- Soft magenta for subtle highlights
  grey = 0xffa9b1d6,         -- Neutral grey for borders and separators
  teal = 0xff7dcfff,         -- Bright teal for secondary highlights
  transparent = 0x00000000,  -- Transparent for overlays

  bar = {
    bg = 0xff24283b,         -- Deep storm blue background for the bar
    border = 0xff1f2335,     -- Slightly darker border for contrast
  },
  popup = {
    bg = 0xff1f2335,         -- Slightly darker than the bar for focus
    border = 0xffa9b1d6,     -- Neutral grey for subtle pop
    card = 0xff292e42,       -- Card background with storm feel
  },
  spaces = {
    active = 0xff3b4261,     -- Active space highlighting
    inactive = 0xff1f2335,   -- Inactive spaces muted
  },
  bg1 = 0xff1f2335,          -- Background for main sections
  bg2 = 0xff292e42,          -- Secondary background for layered sections

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
