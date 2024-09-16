-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local act = wezterm.action
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Google (dark) (terminal.sexy)"

--config.font = wezterm.font('GohuFont uni14 Nerd Font', {weight = 'Bold'})
config.font_size = 14

config.enable_tab_bar = true

config.window_background_opacity = 0.9

config.window_decorations = "NONE"

config.pane_focus_follows_mouse = true

config.keys = {
	{
		key = "m",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "w",
		mods = "CMD",
		action = act.CloseCurrentPane({ confirm = true }),
	},
}
-- and finally, return the configuration to wezterm
return config
