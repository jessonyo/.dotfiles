return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
  },
  opts = function()
    return require "configs.nvim-cmp"
  end,
  config = function(_, opts)
    require("cmp").setup(opts)
  end
}
