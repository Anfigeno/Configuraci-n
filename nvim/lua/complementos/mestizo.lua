return {
	dir = "~/Código/Mestizo/Mestizo.nvim",
	config = function()
		vim.cmd("colorscheme mestizo")

		require("mestizo").establecer()
	end,
}
