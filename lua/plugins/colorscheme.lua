ok, mod = pcall(require, "gruvbox")
if not ok then
    return
end

vim.cmd.colorscheme("gruvbox")
