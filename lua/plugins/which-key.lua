return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Add your keybindings here

    preset = "modern",
    keymaps = {
      -- Normal mode keybindings
      ["<leader>f"] = { name = "+file" },
      ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
      ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Find Buffer" },

      ["<leader>ee"] = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },

      -- Visual mode keybindings
      ["v"] = {
        ["<leader>y"] = { '"+y', "Yank to clipboard" },
        ["<leader>d"] = { '"_d', "Delete without yanking" },
      },

      -- Insert mode keybindings
      ["i"] = {
        ["<C-u>"] = { "<cmd>UndotreeToggle<cr>", "Toggle UndoTree" },
      },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

