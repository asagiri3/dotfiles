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
		"{{yaat.normal._0.hex}}",
		"{{yaat.normal._1.hex}}",
		"{{yaat.normal._2.hex}}",
		"{{yaat.normal._3.hex}}",
		"{{yaat.normal._4.hex}}",
		"{{yaat.normal._5.hex}}",
		"{{yaat.normal._6.hex}}",
		"{{yaat.normal._7.hex}}",
	},
	brights = {
		"{{yaat.bright._0.hex}}",
		"{{yaat.bright._1.hex}}",
		"{{yaat.bright._2.hex}}",
		"{{yaat.bright._3.hex}}",
		"{{yaat.bright._4.hex}}",
		"{{yaat.bright._5.hex}}",
		"{{yaat.bright._6.hex}}",
		"{{yaat.bright._7.hex}}",
	},
}
return C
