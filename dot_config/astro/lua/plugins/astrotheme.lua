--@type LazySpec
return {
  "AstroNvim/astrotheme",
  opts = {
    palette = "astrodark",
    highlights = {
      global = {
        modify_hl_groups = function(hl, c) hl.SnacksDashboardHeader = { fg = c.ui.orange } end,
      },
    },
  },
}
