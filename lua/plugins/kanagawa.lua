return {
	"rebelot/kanagawa.nvim",
	opts = {},
	config = function()
		require("kanagawa").setup({
			compile = true,
			transparent = true
		});
	end,
	build = function()
		vim.cmd("KanagawaCompile");
	end
}
