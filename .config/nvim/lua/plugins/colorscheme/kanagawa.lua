return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	config = function()
		-- Default options:
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = { italic = true, bold = true },
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
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
					StatusLine = { bg = "none" },
				}
			end,
			theme = "dragon", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "dragon" !
				light = "lotus",
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanagawa")
	end,
}
