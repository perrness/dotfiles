vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.shiftwidth = 4

local jdtls = require('jdtls')
local lsp = require('per.lsp')

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath('data') .. '/jdtls-workspace/' .. project_name

jdtls.start_or_attach({
  cmd = { 'jdtls', '-data', workspace_dir },

  root_dir = vim.fs.root(0, { 'pom.xml', '.git', 'build.gradle' }),

  capabilities = lsp.capabilities,
  on_attach = lsp.on_attach,

  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = 'JavaSE-21',
            path = '/Users/Per-Richard.Naess/.sdkman/candidates/java/21.0.9-zulu',
          },
          {
            name = 'JavaSE-25',
            path = '/Users/Per-Richard.Naess/.sdkman/candidates/java/25.0.2-zulu',
          },
        },
      },
    },
  },
})
