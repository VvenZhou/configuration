return {
    cmd = { 'verible-verilog-ls' },
    filetypes = { "verilog" },
    root_dir = function() return vim.fn.getcwd() end,
}
