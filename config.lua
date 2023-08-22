-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- General
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"

vim.opt.relativenumber = true
vim.opt.cmdheight = 2

-- Key maps
lvim.keys.normal_mode["<S-Up>"] = ":m-2<CR>"
lvim.keys.normal_mode["<S-Down>"] = ":m+<CR>"

lvim.keys.normal_mode["<A-h>"] = ":bprevious<Enter>"
lvim.keys.normal_mode["<A-l>"] = ":bnext<Enter>"

-- Additional Plugins
lvim.plugins = {
  { "folke/tokyonight.nvim" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  -- { "ray-x/go.nvim" },
  { "ray-x/guihua.lua" },
  { "fatih/vim-go" },
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_allowed_dirs = { "~/", "~/Projects/", "~/go" },
        cwd_change_handling = {
          restore_upcoming_session = true,   -- already the default, no need to specify like this, only here as an example
          pre_cwd_changed_hook = nil,        -- already the default, no need to specify like this, only here as an example
          post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
            require("lualine").refresh()     -- refresh lualine so the new session name is displayed in the status bar
          end,
        },
      }
    end
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter"
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
