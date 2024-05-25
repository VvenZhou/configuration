return {
    cmd = {
        'verible-verilog-ls',
        '--rules=-always-comb',
        '--indentation_spaces=4',
        '--line_break_penalty=4',
    },
    filetypes = { "verilog" },
    root_dir = function() return vim.fn.getcwd() end,
}
