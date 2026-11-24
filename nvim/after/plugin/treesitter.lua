local ts = require("nvim-treesitter")

-- Parsers that should always be installed (no-op if already present; runs async)
ts.install({ "cpp", "rust", "c", "lua", "vim", "vimdoc", "python" })

local available = {}
for _, lang in ipairs(ts.get_available()) do
    available[lang] = true
end

vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
    callback = function(args)
        local lang = vim.treesitter.language.get_lang(args.match)
        if not lang then
            return
        end
        -- Highlighting; silently skip if no parser is installed yet
        if pcall(vim.treesitter.start, args.buf, lang) then
            return
        end
        -- Auto-install a missing parser, then start highlighting once it is ready
        if available[lang] then
            ts.install({ lang }):await(function()
                vim.schedule(function()
                    if vim.api.nvim_buf_is_valid(args.buf) then
                        pcall(vim.treesitter.start, args.buf, lang)
                    end
                end)
            end)
        end
    end,
})
