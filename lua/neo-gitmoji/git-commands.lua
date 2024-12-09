local Git = {}

function Git.commit(title) vim.cmd(string.format('!Git commit -m "%s"', title)) end

return Git
