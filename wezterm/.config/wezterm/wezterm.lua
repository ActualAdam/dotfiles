local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.color_scheme = 'Arthur (Gogh)'
config.font = wezterm.font('Hasklug Nerd Font Mono')
config.font_size = 13.0

config.enable_tab_bar = false
 
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95

-- Spawn a fish shell in login mode
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

return config

