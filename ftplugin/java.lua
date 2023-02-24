local jdtls_ok, jdtls = pcall(require, "jdtls")
if not jdtls_ok then
    vim.notify "JDTLS not found, install with `:LspInstall jdtls`"
    return
end

local jdtls_path = vim.fn.stdpath('data') .. "~/.local/share/nvim/mason/packages/jdtls"
local path_to_lsp_server = jdtls_path .. "config_linux"
local path_to_plugins = jdtls_path .. "/plugins/"
local path_to_jar = path_to_plugins .. "org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar"
local lombok_path = path_to_plugins .. "lombok.jar"

local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local root_dir = require("jdtls.setup").find_root(root_markers)
if root_dir == "" then
    return
end

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-javaagent:' .. lombok_path,
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

        '-jar', path_to_jar,
        '-configuration', path_to_lsp_server,
        '-data', vim.fn.expand("~/.cache/jdtls/workspace/") .. project_name,
    },
    root_dir = root_dir,
    settings = {
        java = {
            home = '/usr/lib/jvm/default/bin/',
            eclipse = {
                downloadSources = true,
            },
            configuration = {
                updateBuildConfiguration = "interactive",
                runtimes = {
                    {
                        name = "Java-19",
                        path = "/usr/lib/jvm/java-19-openjdk/bin/",
                    },
                    {
                        name = "Java-17",
                        path = "/usr/lib/jvm/java-17-openjdk/bin/"
                    }
                }
            },
            maven = {
                downloadSources = true,
            },
            implementationsCodeLens = {
                enabled = true,
            },
            referencesCodeLens = {
                enabled = true,
            },
            references = {
                includeDecompiledSources = true,
            },
            format = {
                enabled = true,
                settings = {
                    url = vim.fn.stdpath "config" .. "/lang-servers/intellij-java-google-style.xml",
                    profile = "GoogleStyle",
                },
            },
        },
        signatureHelp = { enabled = true },
        completion = {
            favoriteStaticMembers = {
                "org.hamcrest.MatcherAssert.assertThat",
                "org.hamcrest.Matchers.*",
                "org.hamcrest.CoreMatchers.*",
                "org.junit.jupiter.api.Assertions.*",
                "java.util.Objects.requireNonNull",
                "java.util.Objects.requireNonNullElse",
                "org.mockito.Mockito.*",
            },
            importOrder = {
                "java",
                "javax",
                "com",
                "org"
            },
        },
        extendedClientCapabilities = extendedClientCapabilities,
        sources = {
            organizeImports = {
                starThreshold = 9999,
                staticStarThreshold = 9999,
            },
        },
        codeGeneration = {
            toString = {
                template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
            },
            useBlocks = true,
        },
    },
    flags = {
        allow_incremental_sync = true,
    },
    init_options = {
        bundles = {},
    },
}

local key_map = vim.keymap.set

config['on_attach'] = function(client, bufnr)
    key_map('n', '<leader>oi', ':lua require("jdtls").organize_imports()<CR>')
    key_map('n', '<leader>jc', ':lua require("jdtls).compile("incremental")')
    require "lsp_signature".on_attach({
        bind = true, -- This is mandatory, otherwise border config won't get registered.
        floating_window_above_cur_line = false,
        padding = '',
        handler_opts = {
            border = "rounded"
        }
    }, bufnr)
end



require('jdtls').start_or_attach(config)
