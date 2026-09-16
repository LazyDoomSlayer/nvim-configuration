return {
  {
    "smart-splits-nvim/smart-splits.nvim",
    lazy = false,
    opts = {
      multiplexer_integration = "tmux",
      disable_multiplexer_nav_when_zoomed = true,
    },
    keys = {
      {
        "<C-h>",
        function()
          require("smart-splits").move_cursor_left()
        end,
        desc = "Move to left split or pane",
      },
      {
        "<C-j>",
        function()
          require("smart-splits").move_cursor_down()
        end,
        desc = "Move to lower split or pane",
      },
      {
        "<C-k>",
        function()
          require("smart-splits").move_cursor_up()
        end,
        desc = "Move to upper split or pane",
      },
      {
        "<C-l>",
        function()
          require("smart-splits").move_cursor_right()
        end,
        desc = "Move to right split or pane",
      },
      {
        "<M-h>",
        function()
          require("smart-splits").resize_left()
        end,
        desc = "Resize split or pane left",
      },
      {
        "<M-j>",
        function()
          require("smart-splits").resize_down()
        end,
        desc = "Resize split or pane down",
      },
      {
        "<M-k>",
        function()
          require("smart-splits").resize_up()
        end,
        desc = "Resize split or pane up",
      },
      {
        "<M-l>",
        function()
          require("smart-splits").resize_right()
        end,
        desc = "Resize split or pane right",
      },
    },
  },
}
