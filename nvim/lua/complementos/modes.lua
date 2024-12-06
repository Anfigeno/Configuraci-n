return {
	"mvllow/modes.nvim",
	tag = "v0.2.0",
	config = function()
		local colores = require("mestizo.colores")

		require("modes").setup({
			colors = {
				bg = colores.base,
				copy = colores.amarillo,
				delete = colores.rojo,
				insert = colores.azul,
				visual = colores.magenta,
			},
		})
	end,
}
