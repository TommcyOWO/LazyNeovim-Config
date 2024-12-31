local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


--plugins
local plugins = {
    {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'nvim-telescope/telescope.nvim', tag = '0.1.6',dependencies = { 'nvim-lua/plenary.nvim' }},
    { "kyazdani42/nvim-tree.lua", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },

    {'vyfor/cord.nvim',build = '.\\build',event = 'VeryLazy',opts = {},},
    {"williamboman/mason.nvim"}
}

require("lazy").setup(plugins)
