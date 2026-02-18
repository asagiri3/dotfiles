return {
  {
    "catppuccin/nvim",
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
