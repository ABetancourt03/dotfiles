local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"

config.enable_scroll_bar = true

config.default_prog = { "ubuntu" }

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.font_size = 16

config.window_background_opacity = 0.95

return config
