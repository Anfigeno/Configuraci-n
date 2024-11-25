return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "LspAttach",
	priority = 1000, -- needs to be loaded in first
	config = function()
		local colores = require("mestizo").paleta()

		require("tiny-inline-diagnostic").setup({
			hi = {
				error = "DiagnosticError",
				warn = "DiagnosticWarn",
				info = "DiagnosticInfo",
				hint = "DiagnosticHint",
				arrow = "NonText",
				background = colores.base,
				mixing_color = colores.base, -- Can be None or a hexadecimal color (#RRGGBB). Used to blend the background color with the diagnostic background color with another color.
			},
			blend = {
				factor = 0.10,
			},
		})

		vim.diagnostic.config({ virtual_text = false })
	end,
}
