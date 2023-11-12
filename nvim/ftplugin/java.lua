local jdtls = vim.fn.stdpath('data') .. '/mason/packages/jdtls/bin/jdtls'
local config = {
  cmd = {
    jdtls
    -- os.getenv('JAVA_HOME') .. '/bin/java',
  },
  root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
