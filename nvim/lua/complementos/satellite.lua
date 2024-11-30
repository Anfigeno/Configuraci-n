return {
	"lewis6991/satellite.nvim",
	config = function()
		require("satellite").setup({
			excluded_filetypes = {
				"Telescope",
				"Outline",
				"neo-tree",
				"toggleterm",
				"dashboard",
			},
		})
	end,
}
