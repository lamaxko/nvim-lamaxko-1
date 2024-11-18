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
            [[      ___                                 ___     ]],
            [[     /__/\         ___       ___         /__/\    ]],
            [[     \  \:\       /__/\     /  /\       |  |::\   ]],
            [[      \  \:\      \  \:\   /  /:/       |  |:|:\  ]],
            [[  _____\__\:\      \  \:\ /__/::\     __|__|:|\:\ ]],
            [[ /__/::::::::\ ___  \__\:\\__\/\:\__ /__/::::| \:\]],
            [[ \  \:\~~\~~\//__/\ |  |:|   \  \:\/\\  \:\~~\__\/]],
            [[  \  \:\  ~~~ \  \:\|  |:|    \__\::/ \  \:\      ]],
            [[   \  \:\      \  \:\__|:|    /__/:/   \  \:\     ]],
            [[    \  \:\      \__\::::/     \__\/     \  \:\    ]],
            [[     \__\/          ~~~~                 \__\/    ]],
        }
        --
        alpha.setup(dashboard.opts)
        -- Custom Buttons
        dashboard.section.buttons.val = {
            dashboard.button("t", "  Tree view", ":Neotree filesystem reveal right<CR>"),
            dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("g", "  Grep file", ":Telescope live_grep<CR>"),
            dashboard.button("c", "  Config", ":Neotree filesystem reveal right ~/.config/nvim/<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        -- Footer
        dashboard.section.footer.val = {
            "Config by - Lamaxko",
        }

        -- Setup Alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on the dashboard
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
