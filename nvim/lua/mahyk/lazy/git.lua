return {
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
    }
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    opts = {
      signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
      numhl = false,     -- Toggle with `:Gitsigns toggle_numhl`
      linehl = false,    -- Toggle with `:Gitsigns toggle_linehl`
      word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
      watch_gitdir = {
        follow_files = true,
      },
      attach_to_untracked = true,
      current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil,  -- Use default
      max_file_length = 40000, -- Disable if file is longer than this (in lines)
      preview_config = {
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
      },
    },
    keys = {
      {
        "<leader>;d",
        function()
          require("gitsigns").preview_hunk()
        end,
        desc = "gitsigns: Preview hunk diff",
      },
      {
        "<leader>;D",
        function()
          require("gitsigns").diffthis()
        end,
        desc = "gitsigns: Preview hunk diff",
      },
      {
        "<leader>;b",
        function()
          require("gitsigns").blame_line()
        end,
        desc = "gitsigns: blame line",
      },
      {
        "<leader>;r",
        function()
          require("gitsigns").reset_hunk()
        end,
        desc = "gitsigns: reset hunk",
      },
      {
        "<leader>;R",
        function()
          require("gitsigns").reset_buffer()
        end,
      },

      {
        "<leader>;l",
        function()
          require("gitsigns").next_hunk()
        end,
      },
    },
  }
}
