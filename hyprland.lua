--                  _             ____
--                  |\            |   \    .
--                  |  \ .        |    :   |\            /\
--               .  |   :|\__     |    |   | \          /  \
--  .            |\ |   |! \ \    |    |   | |\        /   /
--  \"-.______   | \:   ||\ \ \   |    |   | | \      /   /
--   \_       "-_|  |\  || \ \/   |    |___| ! |\____/  _/-. /\
--     "-_   ____:  |_\ ||  \/  ___\  __  _//  | |  ___ \---" /
--        \  \   |  _____,  /___\___\/ / /   \_! |  // _/  / /
--      ___\_ \__|  |    | __. _/____ / /     /  > // /    \/
--    //_________|  /    |/  |/  \__// /     /  /_/ \/
--               | /     |   :      | /     /__/
--               |/                 |/   E V A N G E L I O N
--

-- Omarchy Quattro native presentation, mirrored in hyprland.conf for 3.8.

local activeBorderColor = {
  colors = { "rgb(ab92fc)", "rgb(875faf)" },
  angle = 90,
}
local inactiveBorderColor = {
  colors = { "rgba(e6bb85aa)", "rgba(d99145bb)" },
  angle = 90,
}

hl.config({
  general = {
    col = {
      active_border = activeBorderColor,
      inactive_border = inactiveBorderColor,
    },
    gaps_in = 8,
    gaps_out = 16,
    border_size = 3,
  },
  group = {
    col = {
      border_active = activeBorderColor,
      border_inactive = inactiveBorderColor,
    },
  },
  decoration = {
    rounding = 0,
    rounding_power = 0,
    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      noise = 0.03,
      contrast = 0.95,
      brightness = 0.70,
      vibrancy = 0.08,
      vibrancy_darkness = 0.35,
      ignore_opacity = true,
      new_optimizations = true,
    },
    shadow = {
      enabled = true,
      range = 22,
      render_power = 3,
      scale = 1.0,
      color = "rgba(101010cc)",
      color_inactive = "rgba(10101088)",
    },
  },
  animations = {
    enabled = true,
  },
})

hl.curve("silk_drop", { type = "bezier", points = { { 0.42, 1.60 }, { 0.80, 1 } } })

hl.animation({
  leaf = "workspaces",
  enabled = true,
  speed = 3.5,
  bezier = "silk_drop",
  style = "slidevert",
})
hl.animation({
  leaf = "fade",
  enabled = true,
  speed = 2.5,
  bezier = "silk_drop",
})