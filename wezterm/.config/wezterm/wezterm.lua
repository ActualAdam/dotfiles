local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
local function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Light'
end

local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Catppuccin Macchiato'
  else
    return 'Catppuccin Latte'
  end
end

config.color_scheme = scheme_for_appearance(get_appearance())
-- config.color_scheme = 'Arthur (Gogh)'
config.font = wezterm.font('Hasklug Nerd Font Mono')
config.font_size = 13.0

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95

-- Spawn a fish shell in login mode
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

return config
