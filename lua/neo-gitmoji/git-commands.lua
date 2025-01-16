local Git = {}

function Git.commit(title)
    if not pcall(vim.cmd, "Git") then
        vim.cmd(string.format('!git commit -m "%s"', title))
    else
        vim.cmd(string.format(':Git commit -m "%s"', title))
    end
end

return Git
