local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"

config.default_prog = { "ubuntu" }

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16

return config
