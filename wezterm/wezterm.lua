-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

wezterm.on("update-right-status", function(window, pane)
	local date = wezterm.strftime("%a %b %-d    %H:%M   ")
	local bat = ""
	for _, b in ipairs(wezterm.battery_info()) do
		bat = "🔋 " .. string.format("%.0f%%", b.state_of_charge * 100)
	end
	window:set_right_status(wezterm.format({
		{ Text = bat .. "     " .. date },
	}))
end)

config.font = wezterm.font("JetBrains Mono")
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
-- config.font = wezterm.font("Menlo")
-- config.color_scheme = "Monokai Soda"
-- config.color_scheme = "carbonfox"
-- config.color_scheme = "Dark+"
-- config.color_scheme = "Catppuccin Mocha (Gogh)"
-- config.color_scheme = "Calamity"

config.colors = {
	background = "#151515",
}

-- config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.text_background_opacity = 0.5

config.keys = {
	-- Let's get some decent keys (Macos Swiss keyboard)
	{ key = "≤", mods = "", action = wezterm.action({ SendString = "\\" }) },
	{ key = "æ", mods = "", action = wezterm.action({ SendString = "{" }) },
	{ key = "¶", mods = "", action = wezterm.action({ SendString = "}" }) },
	{ key = "§", mods = "", action = wezterm.action({ SendString = "[" }) },
	{ key = "‘", mods = "", action = wezterm.action({ SendString = "]" }) },

	-- Shortcuts for tabs
	{ key = "w", mods = "CMD", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	{ key = "LeftArrow", mods = "CMD", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "RightArrow", mods = "CMD", action = wezterm.action({ ActivateTabRelative = 1 }) },

	-- Shortcuts for panes
	{ key = "p", mods = "CMD", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{ key = "o", mods = "CMD", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	{ key = "UpArrow", mods = "CMD", action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }) },
	{ key = "DownArrow", mods = "CMD", action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }) },
	{ key = "m", mods = "CMD", action = wezterm.action.TogglePaneZoomState },

	-- Ctrl + Shift + X -> Copy mode
}

config.hide_tab_bar_if_only_one_tab = false
config.show_tab_index_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = true
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = true
config.enable_tab_bar = true

config.font_size = 14
config.line_height = 0.95
config.enable_scroll_bar = false
config.window_close_confirmation = "AlwaysPrompt"
config.audible_bell = "Disabled"
config.front_end = "WebGpu"
config.window_padding = {
	left = 0,
	top = 0,
	bottom = 0,
}

return config
