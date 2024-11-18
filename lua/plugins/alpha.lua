return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons", -- Optional for additional icons
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local ok_alpha, alpha = pcall(require, "alpha")
		if not ok_alpha then
			vim.notify("Failed to load alpha.nvim", vim.log.levels.ERROR)
			return
		end

		local ok_dashboard, dashboard = pcall(require, "alpha.themes.dashboard")
		if not ok_dashboard then
			vim.notify("Failed to load alpha dashboard theme", vim.log.levels.ERROR)
			return
		end

		-- Custom Header
		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}

		alpha.setup(dashboard.opts)
		-- Custom Buttons
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("g", "  Grep file", ":Telescope live_grep<CR>"),
			dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/<CR>"),
			dashboard.button("q", "  Quit", ":qa<CR>"),
		}

		-- Footer
		dashboard.section.footer.val = {
			"Neovim - Built for Power Users",
		}

		-- Setup Alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on the dashboard
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
