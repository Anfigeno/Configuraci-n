return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local colores = require("mestizo.colores")
		local util = require("mestizo.util")

		local FACTOR_DE_COMBINACION = 0.4
		local rojo_humo = util.mezclar_colores(colores.rojo, colores.humo, FACTOR_DE_COMBINACION)
		local cian_humo = util.mezclar_colores(colores.cian, colores.humo, FACTOR_DE_COMBINACION)
		local turquesa_humo = util.mezclar_colores(colores.turquesa, colores.humo, FACTOR_DE_COMBINACION)
		local amarillo_humo = util.mezclar_colores(colores.amarillo, colores.humo, FACTOR_DE_COMBINACION)
		local fucsia_humo = util.mezclar_colores(colores.fucsia, colores.humo, FACTOR_DE_COMBINACION)
		local verde_humo = util.mezclar_colores(colores.verde, colores.humo, FACTOR_DE_COMBINACION)
		local lima_humo = util.mezclar_colores(colores.lima, colores.humo, FACTOR_DE_COMBINACION)

		require("todo-comments").setup({
			keywords = {
				ERROR = { icon = " ", color = rojo_humo, alt = { "ERROR" } },
				TAREA = { icon = " ", color = rojo_humo, alt = { "PENDIENTE", "TODO" } },
				TRUCO = { icon = " ", color = turquesa_humo, alt = { "HACK" } },
				ADVER = { icon = " ", color = amarillo_humo, alt = { "ADVERTENCIA", "WARN" } },
				MEJOR = { icon = " ", color = fucsia_humo, alt = { "MEJORAR", "OPTIMIZAR", "PERF" } },
				NOTAS = { icon = " ", color = verde_humo, alt = { "INFO", "NOTA" } },
				PRUEB = { icon = "⏲ ", color = lima_humo, alt = { "PRUEBA", "PROBA", "TEST" } },
			},
			merge_keywords = false,
		})
	end,
}
