local wezterm = require("wezterm")
local keys = require("keys")

local M = {}

function M.setup(config)
  config.alternate_buffer_wheel_scroll_speed = 1
  config.bypass_mouse_reporting_modifiers = keys.mod
  config.mouse_bindings = {
    {
      event = { Up = { streak = 1, button = "Left" } },
      action = wezterm.action.CompleteSelection("ClipboardAndPrimarySelection"),
    },
    {
      event = { Up = { streak = 1, button = "Left" } },
      mods = keys.mod,
      action = wezterm.action.CompleteSelectionOrOpenLinkAtMouseCursor("ClipboardAndPrimarySelection"),
    },
  }
end

return M
