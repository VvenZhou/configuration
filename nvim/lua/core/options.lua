local g = vim.g
local opt = vim.opt

opt.clipboard = 'unnamedplus'
opt.mouse = "a"
opt.swapfile = false
opt.termguicolors = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.number = true
opt.relativenumber = false
opt.cursorline = true
--opt.scrolloff = 5

opt.splitbelow = true
opt.splitright = true
opt.showmode = true
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true


vim.api.nvim_create_autocmd({"BufEnter", "BufNewFile", "BufWinEnter"}, {
    pattern = {"*.v"},
    callback = function ()
        vim.opt.filetype = "verilog"
    end
})

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"

-- -- Disable builtin plugins
local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor",
    "rplugin",
    "synmenu",
    "optwin",
    "compiler",
    "bugreport",
    "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
