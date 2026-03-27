vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.shiftwidth = 4

local lsp = require('per.lsp')

-- Resolve JAVA_HOME (sdkman symlink → real path) so kotlin-lsp can find the JDK
-- without scanning PATH (which may contain unexpanded tildes that crash IntelliJ's JavaHomeFinder)
local java_home = vim.fn.resolve(vim.env.JAVA_HOME or vim.fn.system("java -XshowSettings:property -version 2>&1 | grep 'java.home'"):match("java.home = (.-)%s*$") or "")

vim.lsp.config('kotlin_lsp', {
    capabilities = lsp.capabilities,
    on_attach = lsp.on_attach,
    cmd_env = {
        JAVA_HOME = java_home,
    },
})

vim.lsp.enable('kotlin_lsp')
