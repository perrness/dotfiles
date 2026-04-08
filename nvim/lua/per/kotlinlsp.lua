local lsp = require('per.lsp')

-- kotlin-lsp (JetBrains/IntelliJ-based) ships with its own bundled JRE.
-- It does NOT use JAVA_HOME - the startup script resolves java from its bundled jre.
-- Root detection is handled via root_markers in nvim-lspconfig's lsp/kotlin_lsp.lua
-- (pom.xml, build.gradle.kts, settings.gradle, workspace.json, etc.)
--
-- --system-path is set per-workspace so each project gets its own isolated index DB.
-- Without this, kotlin-lsp crashes with "Multiple editing sessions for one workspace
-- are not supported yet" when restarting or running multiple instances.

vim.lsp.config('kotlin_lsp', {
  capabilities = lsp.capabilities,
  on_attach = lsp.on_attach,
  cmd = function(config)
    local root = config.root_dir or vim.fn.getcwd()
    local cache_dir = vim.fn.stdpath('cache') .. '/kotlin-lsp/' .. vim.fn.fnamemodify(root, ':t') .. '-' .. vim.fn.sha256(root):sub(1, 8)
    vim.fn.mkdir(cache_dir, 'p')
    return { 'kotlin-lsp', '--stdio', '--system-path', cache_dir }
  end,
})

vim.lsp.enable('kotlin_lsp')
