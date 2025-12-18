return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "folke/tokyonight.nvim", "nvim-tree/nvim-web-devicons" },
  config = function()
    local function tokyonight_custom()
      local C = require("tokyonight.colors").setup({ style = "storm" })
      local tokyonight = {}

      tokyonight.normal = {
        a = { bg = C.blue, fg = C.bg_dark, gui = "bold" },
        b = { bg = C.bg_highlight, fg = C.blue },
        c = { bg = C.bg, fg = C.fg_dark },
      }

      tokyonight.insert = {
        a = { bg = C.green, fg = C.bg_dark, gui = "bold" },
        b = { bg = C.bg_highlight, fg = C.green },
      }

      tokyonight.terminal = {
        a = { bg = C.cyan, fg = C.bg_dark, gui = "bold" },
        b = { bg = C.bg_highlight, fg = C.cyan },
      }

      tokyonight.command = {
        a = { bg = C.yellow, fg = C.bg_dark, gui = "bold" },
        b = { bg = C.bg_highlight, fg = C.yellow },
      }

      tokyonight.visual = {
        a = { bg = C.purple, fg = C.bg_dark, gui = "bold" },
        b = { bg = C.bg_highlight, fg = C.purple },
      }

      tokyonight.replace = {
        a = { bg = C.red, fg = C.bg_dark, gui = "bold" },
        b = { bg = C.bg_highlight, fg = C.red },
      }

      tokyonight.inactive = {
        a = { bg = C.bg, fg = C.blue },
        b = { bg = C.bg, fg = C.fg_gutter, gui = "bold" },
        c = { bg = C.bg, fg = C.fg_gutter },
      }

      return tokyonight
    end

    require("lualine").setup({
      options = {
        theme = tokyonight_custom(),
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
