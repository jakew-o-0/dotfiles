return {
	-- Highlight, edit, and navigate code
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	build = ':TSUpdate',
	config = function()
	vim.defer_fn(function()
	  require('nvim-treesitter.configs').setup {
	    -- Add languages to be installed here that you want installed for treesitter
	    ensure_installed = { 'c', 'cpp', 'go', 'python', 'rust', 'lua', 'vimdoc', 'tsx', 'javascript', 'typescript', 'vim', 'bash' },

	    -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
	    auto_install = true,

	    highlight = { enable = true },
	    indent = { enable = true },
	    incremental_selection = {
	      enable = true,
	      keymaps = {
		init_selection = '<c-s>',
		scope_incremental = '<a-s>',
		node_decremental = '<M-s>',
		node_incremental = '<c-s>',
	      },
	    },
	    textobjects = {
	      select = {
		enable = true,
		lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
		keymaps = {
		  -- You can use the capture groups defined in textobjects.scm
		  ['aa'] = '@parameter.outer',
		  ['ia'] = '@parameter.inner',
		  ['af'] = '@function.outer',
		  ['if'] = '@function.inner',
		  ['ac'] = '@class.outer',
		  ['ic'] = '@class.inner',
		},
	      },
	      move = {
		enable = true,
		set_jumps = true, -- whether to set jumps in the jumplist
		goto_next_start = {
		  ['<leader>fn'] = '@function.outer',
		  ['<leader>cn'] = '@class.outer',
		},
		goto_next_end = {
		  ['<leader>fe'] = '@function.outer',
		  ['<leader>ce'] = '@class.outer',
		},
		goto_previous_start = {
		  ['<leader>fp'] = '@function.outer',
		  ['<leader>cp'] = '@class.outer',
		},
		goto_previous_end = {
		  ['<leader>fpe'] = '@function.outer',
		  ['<leader>cpe'] = '@class.outer',
		},
	      },
	      swap = {
		enable = true,
		swap_next = {
		  ['<leader>a'] = '@parameter.inner',
		},
		swap_previous = {
		  ['<leader>A'] = '@parameter.inner',
		},
	      },
	    },
	  }
	end, 0)
	end,
}

