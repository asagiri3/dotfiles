--@type LazySpec
return {
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
        NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
      }
    end,
  },
}
