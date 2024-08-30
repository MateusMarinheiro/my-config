-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Google (dark) (terminal.sexy)'

--config.font = wezterm.font('GohuFont uni14 Nerd Font', {weight = 'Bold'})
config.font_size = 14

config.enable_tab_bar = false

config.window_background_opacity = 0.8

config.window_decorations = "NONE"

config.keys = {
  {
    key = 'm',
    mods = 'CMD',
    action = wezterm.action.DisableDefaultAssignment,
  },
}
-- and finally, return the configuration to wezterm
return config
