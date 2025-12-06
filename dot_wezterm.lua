local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font settings
config.font_size = 11.0
config.line_height = 1.0
config.font = wezterm.font_with_fallback({
	-- {
	-- 	family = "FiraCode Nerd Font",
	-- },
	{
		family = "FiraCode",
	},
	{
		family = "Symbols Nerd Font Mono",
	},
})

-- Colors
-- local color = require("custom_theme")
local color = require("colors")
config.colors = color

-- Appearance
-- config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

-- Set Background
config.window_background_opacity = 0.8

-- Drag
config.mouse_bindings = {
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "ALT",
		action = wezterm.action.StartWindowDrag,
	},
}

-- Set Default PROG

-- pwsh for Windows
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" }
	-- elseif wezterm.target_triple == "x86_64-unknown-linux-gnu" then
	--    config.default_prog = { "/usr/bin/bash", "-l" }
	--    config.default_prog = { "/usr/bin/nu", "-l" }
	-- config.default_prog = { "/usr/bin/fish", "-l" }
end

-- Miscellaneous settings
config.max_fps = 75 -- 75Hz Monitor
-- config.prefer_egl = true

-- Choose Vulkan
-- For Windows
-- if wezterm.target_triple == "x86_64-pc-windows-msvc" then
for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
	if gpu.backend == "Vulkan" then
		config.webgpu_preferred_adapter = gpu
		config.front_end = "WebGpu"
		break
	end
end
-- For Linux
-- elseif wezterm.target_triple == "x86_64-unknown-linux-gnu" then
for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
	if gpu.backend == "Vulkan" then
		config.webgpu_preferred_adapter = gpu
		config.front_end = "WebGpu"
		break
	end
end
-- end

config.adjust_window_size_when_changing_font_size = false
config.initial_cols = 104

return config
