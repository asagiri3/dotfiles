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
		"{{yaat.normal._0}}",
		"{{yaat.normal._1}}",
		"{{yaat.normal._2}}",
		"{{yaat.normal._3}}",
		"{{yaat.normal._4}}",
		"{{yaat.normal._5}}",
		"{{yaat.normal._6}}",
		"{{yaat.normal._7}}",
	},
	brights = {
		"{{yaat.bright._0}}",
		"{{yaat.bright._1}}",
		"{{yaat.bright._2}}",
		"{{yaat.bright._3}}",
		"{{yaat.bright._4}}",
		"{{yaat.bright._5}}",
		"{{yaat.bright._6}}",
		"{{yaat.bright._7}}",
	},
}
return C
