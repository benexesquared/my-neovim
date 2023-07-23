local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Code action groups
      vim.keymap.set("n", "<Leader>c", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

