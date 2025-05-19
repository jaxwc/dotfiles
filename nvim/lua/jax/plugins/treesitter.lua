return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = false,
        ensure_installed = {
          "python",
          "c",
          "cpp",
          "bash",
          "html",
          "javascript",
          "typescript",
          "json",
          "lua",
	  "css",
        },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end
  }
}
