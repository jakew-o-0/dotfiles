return {
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',
	'm4xshen/autoclose.nvim',
	'numToStr/Comment.nvim',
	{
		'lukas-reineke/indent-blankline.nvim',
		main = 'ibl',
		opts = {},
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	}
}
