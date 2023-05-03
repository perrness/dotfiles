local rt = require("rust-tools")

rt.setup({
  tools = {
    inlay_hints = {
      auto = true,
      only_current_line = true,
    }
  },
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>aa", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
