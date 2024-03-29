lvim.plugins = {
  { "HiPhish/rainbow-delimiters.nvim" },
  { "NvChad/nvim-colorizer.lua" },

  -- colorschemes
  { "folke/tokyonight.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "folke/tokyonight.nvim" },
  { "shaunsingh/nord.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rebelot/kanagawa.nvim" },
	{ "mhartington/oceanic-next" },
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

  -- terraform 
  { "hashivim/vim-terraform" },

  -- neotree
  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added     = "✚",
            deleted   = "✖",
            modified  = "",
            renamed   = "󰁕",
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "󰜺",
            staged    = "",
            conflict  = "",
          }
        }
      },
      close_if_last_window = true,
      window = {
        width = 30,
      },
      buffers = {
        follow_current_file = { enabled = true },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules"
          },
          never_show = {
            ".DS_Store",
            "thumbs.db"
          },
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
          -- auto close
          -- vimc.cmd("Neotree close")
          -- OR
          require("neo-tree.command").execute({ action = "close" })
          end
        },
      },
    })
  end
  },

  -- python environments
  { "AckslD/swenv.nvim" },

  -- markdown preview
  {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  },

  --  [markdown markmap]
  --  https://github.com/Zeioth/markmap.nvim
  -- {
  -- "Zeioth/markmap.nvim",
  -- build = "yarn global add markmap-cli",
  -- cmd = { "MarkmapOpen", "MarkmapSave", "MarkmapWatch", "MarkmapWatchStop" },
  -- opts = {
  --   html_output = "/tmp/markmap.html", -- (default) Setting a empty string "" here means: [Current buffer path].html
  --   hide_toolbar = false, -- (default)
  --   grace_period = 3600000 -- (default) Stops markmap watch after 60 minutes. Set it to 0 to disable the grace_period.
  -- },
  -- config = function(_, opts) require("markmap").setup(opts) end
  -- },
}
