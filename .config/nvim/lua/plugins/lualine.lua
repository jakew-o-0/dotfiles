return {
	'nvim-lualine/lualine.nvim',
	config = function ()
		local colours = {
			default_bg = '#16161D',

			section_primary_bg = '#658594',
			section_primary_fg = '#16161D',
			section_secondary_fg = '#C8C093',
		}
		local kanagawa = {
			normal = {
				a = {bg = colours.section_primary_bg, fg = colours.section_primary_fg, gui='bold'},
				b = {bg = colours.default_bg, fg = colours.section_secondary_fg},
			},
		}
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = kanagawa,
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'filename'},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {'encoding', 'filetype'},
				lualine_z = {'location'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end
}
