return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = true,
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      globalstatus = true,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
    },
    sections = {

      lualine_a = {},
      lualine_b = {},
      lualine_c = {},

      lualine_x = {
        {
          "diff",
          symbols = { added = " ", modified = " ", removed = " " },
          colored = true,
        },
        {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " },
          colored = true,
          update_in_insert = false,
          always_visible = false,
        },
      },
      lualine_y = {
        { "location" },
      },
      lualine_z = {
        { "progress" },
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = { "location" },
      lualine_z = {},
    },
  },
}
