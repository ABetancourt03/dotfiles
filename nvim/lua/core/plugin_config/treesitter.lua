require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "lua",
    "vim",
    "html",
    "astro",
    "javascript",
    "typescript",
    "python",
  },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
