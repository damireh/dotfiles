local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.mouse = ""
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.backup = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.textwidth = 120
vim.opt.colorcolumn = "+1"
vim.opt.backspace = "2"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.clipboard = "unnamed"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

require("lazy").setup({
  { "flazz/vim-colorschemes" },
  { "nvim-tree/nvim-web-devicons" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<C-p>", "<cmd>Telescope find_files<cr>" },
    },
  },
  { "github/copilot.vim" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-rails" },
  {
    "vim-test/vim-test",
    keys = {
      { "<leader>t", "<cmd>TestFile<cr>" },
      { "<leader>T", "<cmd>TestNearest<cr>" },
    },
  },
  { "kylechui/nvim-surround", config = true },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   dependencies = { "williamboman/mason.nvim" },
  --   config = function()
  --     require("mason").setup()
  --     require("mason-lspconfig").setup()
  --   end,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     local capabilities = require("cmp_nvim_lsp").default_capabilities()
  --     vim.lsp.config("ts_ls", { capabilities = capabilities })
  --     vim.lsp.config("ruby_lsp", { capabilities = capabilities })
  --     vim.lsp.config("pyright", { capabilities = capabilities })
  --     vim.lsp.enable({ "ts_ls", "ruby_lsp", "pyright" })
  --   end,
  -- },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-nvim-lsp",
  --     "hrsh7th/cmp-buffer",
  --     "hrsh7th/cmp-path",
  --   },
  --   config = function()
  --     local cmp = require("cmp")
  --     cmp.setup({
  --       mapping = cmp.mapping.preset.insert({
  --         ["<Tab>"] = cmp.mapping.select_next_item(),
  --         ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  --         ["<CR>"] = cmp.mapping.confirm({ select = true }),
  --       }),
  --       sources = cmp.config.sources({
  --         { name = "nvim_lsp" },
  --         { name = "buffer" },
  --         { name = "path" },
  --       }),
  --     })
  --   end,
  -- },
})

vim.cmd("colorscheme smyck")
