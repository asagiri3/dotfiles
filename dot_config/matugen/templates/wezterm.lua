-- Matugen gen color scheme for WezTerm

local C = {
	foreground = "{{ colors.on_surface.default.hex }}",
	background = "{{ colors.background.default.hex }}",
	cursor_fg = "{{ colors.background.default.hex }}",
	cursor_bg = "{{ colors.on_surface.default.hex }}",
	cursor_border = "{{ colors.on_surface.default.hex }}",
	selection_fg = "{{ colors.secondary_fixed_dim.default.hex }}",
	selection_bg = "{{ colors.on_secondary.default.hex }}",
	ansi = {
		"#4c4c4c", -- 0
		"{{ colors.error.default.hex }}", -- 1
		"{{ colors.on_surface.default.hex }}", -- 2
		"#aca98a", -- 3
		"{{ colors.primary.default.hex }}", -- 4
		"{{ colors.error.default.hex }}", -- 5
		"{{ colors.on_surface.default.hex }}", -- 6
		"#f0f0f0", -- 7
	},
	brights = {
		"{{ colors.on_surface.default.hex }}", -- 8
		"#c49ea0", -- 9
		"#9ec49f", -- 10
		"#c4c19e", -- 11
		"#a39ec4", -- 12
		"#c49ec4", -- 13
		"#9ec3c4", -- 14
		"#e7e7e7", -- 15
	},
}
return C
