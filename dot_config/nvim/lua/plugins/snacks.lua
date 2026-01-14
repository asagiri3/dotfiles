return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- picker
        picker = {
            hidden = true,
            ignored = true,
            sources = {
                files = {
                    hidden = true,
                    ignored = true,
                },
            },
        },

        -- image
        image = {
            -- just default for testing
        },

        -- dashboard
        dashboard = {
            enabled = true,
            preset = {
                header = [[
 ██████╗  ██████╗ ████████╗ ██████╗██╗  ██╗ █████╗ ██╗
██╔════╝ ██╔═══██╗╚══██╔══╝██╔════╝██║  ██║██╔══██╗██║
██║  ███╗██║   ██║   ██║   ██║     ███████║███████║██║
██║   ██║██║   ██║   ██║   ██║     ██╔══██║██╔══██║╚═╝
╚██████╔╝╚██████╔╝   ██║   ╚██████╗██║  ██║██║  ██║██╗
 ╚═════╝  ╚═════╝    ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝
        ]],
            },
        },

        -- styles
        ---@type table<string, snacks.win.Config>
        styles = {
            dashboard = {},
        },
    },
}
