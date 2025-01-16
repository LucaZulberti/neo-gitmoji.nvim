local Git = {}

function Git.commit(title)
    if not pcall(vim.cmd, "G") then
        vim.cmd(string.format('!git commit -m "%s"', title))
    else
        vim.cmd(string.format('G commit -m "%s"', title))
    end
end

return Git
