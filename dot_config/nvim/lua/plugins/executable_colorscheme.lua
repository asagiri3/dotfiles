return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
      custom_highlights = function(C)
        return {
          SnacksDashboardHeader = { fg = C.peach },
        }
      end,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
      overrides = {
        SnacksDashboardHeader = { fg = "#fe8019" }, -- gruvbox bright orange
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
      -- colorscheme = "gruvbox",
    },
  },
}
