-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = {}
local rcolors = require("lua/rose-pine").colors()
local rwindow_frame = require("lua/rose-pine").window_frame()

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

--[[ FONTS]]
config.font = wezterm.font("Fira Code")
-- config.font = wezterm.font("JetBrains Mono")
-- config.font = wezterm.font("Menlo")
-- config.font = wezterm.font("MesloLGS NF")
-- config.font = wezterm.font("Hack")
-- config.font = wezterm.font("Monaco")
-- config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

--[[ COLOR SCHEMES]]
-- config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "tokyonight_night"
-- config.color_scheme = "nightfox"

--[[ ROSE-PINE SCHEME ]]
-- config.colors = rcolors
-- config.window_frame = rwindow_frame

config.colors = {
	-- background = "#161616",
	background = "#191919",
	-- background = "#212121",
}

-- config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.8
-- config.text_background_opacity = 0.7

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
config.line_height = 1.05
config.enable_scroll_bar = false
config.window_close_confirmation = "AlwaysPrompt"
config.audible_bell = "Disabled"
config.front_end = "WebGpu"
config.window_padding = {
	left = 0,
	top = 0,
	bottom = 0,
	right = 0,
}

return config
