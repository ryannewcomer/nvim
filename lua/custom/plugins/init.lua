-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{ "catppuccin/nvim", name = "catppuccin",
	config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
    },
	{ "nvim-lua/plenary.nvim"},
	{ "kyazdani42/nvim-web-devicons"},
	{ "windwp/nvim-autopairs"},
	{ "windwp/nvim-ts-autotag"},

{
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
},
    { "xiyaowong/transparent.nvim" },
    { "windwp/nvim-autopairs" },
    { "jose-elias-alvarez/null-ls.nvim" },
    { "glepnir/lspsaga.nvim",
    event = "BufRead",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    },
    },
    { "nvim-lualine/lualine.nvim"},
    {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup()
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
},

    { "neovim/nvim-lspconfig" },
    { "simrat39/rust-tools.nvim" },
}
