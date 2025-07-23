return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		config = function()
			require("kanagawa").setup({
				colors = { -- add/modify theme and palette colors
					palette = {},
					theme = {
						wave = {},
						lotus = {},
						dragon = {},
						all = {
							ui = {
								bg_gutter = "none",
								float = {
									bg = "none",
								},
							},
						},
					},
				},
				overrides = function(colors)
					local theme = colors.theme
					return {
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none" },
						FloatTitle = { bg = "none" },
						NormalDark = { bg = "none", fg = theme.ui.fg_dim },
						LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
						MasonNormal = { bg = "none", fg = theme.ui.fg_dim },
					}
				end,
				theme = "dragon",
				background = {
					dark = "dragon",
					light = "lotus",
				},
			})
			vim.cmd("colorscheme kanagawa")
		end,
	},
}
