return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {

        -- Because this is LazyVim, btw lua-language-server will automatic install

        -- pyright
        pyright = {
          -- emty
        },

        -- clangd
        clangd = {
          -- emty
        },

        cmake = {
          -- emty
        },

        -- bash-language-server
        bashls = {
          -- emty
        },

        -- json-slp
        jsonls = {
          -- emty
        },
      },
    },
  },
}
