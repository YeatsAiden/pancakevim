ok, mod = pcall(require, "fugitive")
if not ok then
    return
end

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
