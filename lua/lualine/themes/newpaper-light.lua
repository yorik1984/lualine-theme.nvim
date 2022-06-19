-- stylua: ignore start
local colors = {
    blue        = '#0087AF',
    teal        = '#005F87',
    green       = '#50A14F',
    darkgreen   = '#008700',
    blueviolet  = '#AF87D7',
    purple      = '#8700AF',
    magenta     = '#D7005F',
    pink        = '#FFEEFF',
    lightorange = '#E4C07A',
    darkorange  = '#AF5F00',
    bg          = '#F1F3F2',
    grey        = '#585858',
    lightgrey   = '#878787',
    silver      = '#E4E4E4',
    git_bg      = '#EBEAE2',
    git_fg      = '#413932'
}

local newpaper = {}

newpaper.normal = {
    a = { fg = colors.teal,       bg = colors.silver },
    b = { fg = colors.git_fg,     bg = colors.git_bg }, -- only for GIT
    c = { fg = colors.teal,       bg = colors.silver },
    x = { fg = colors.grey,       bg = colors.silver },
    y = { fg = colors.bg,         bg = colors.blue },
    z = { fg = colors.bg,         bg = colors.teal },
}
newpaper.insert = {
    a = { fg = colors.darkgreen,  bg = colors.silver },
    c = { fg = colors.darkgreen,  bg = colors.silver },
    x = { fg = colors.grey,       bg = colors.silver },
    y = { fg = colors.bg,         bg = colors.green },
    z = { fg = colors.bg,         bg = colors.darkgreen },
}
newpaper.visual = {
    a = { fg = colors.bg,         bg = colors.purple },
    c = { fg = colors.grey,       bg = colors.blueviolet },
    x = { fg = colors.grey,       bg = colors.silver },
    y = { fg = colors.grey,       bg = colors.blueviolet },
    z = { fg = colors.bg,         bg = colors.purple },
}
newpaper.replace = {
    a = { fg = colors.bg,         bg = colors.magenta },
    c = { fg = colors.grey,       bg = colors.pink },
    x = { fg = colors.grey,       bg = colors.silver },
    y = { fg = colors.grey,       bg = colors.pink },
    z = { fg = colors.bg,         bg = colors.magenta },
}
newpaper.command = {
    a = { bg = colors.darkorange, fg = colors.bg },
    c = { fg = colors.grey,       bg = colors.lightorange },
    x = { fg = colors.grey,       bg = colors.silver },
    y = { fg = colors.grey,       bg = colors.lightorange },
    z = { fg = colors.bg,         bg = colors.darkorange },
}
newpaper.inactive = {
    a = { fg = colors.lightgrey,  bg = colors.silver },
    b = { fg = colors.lightgrey,  bg = colors.silver },
    c = { fg = colors.lightgrey,  bg = colors.silver },
    x = { fg = colors.lightgrey,  bg = colors.silver },
    y = { fg = colors.lightgrey,  bg = colors.silver },
    z = { fg = colors.lightgrey,  bg = colors.silver },
}

-- stylua: ignore end

if vim.g.newpaper_lualine_bold == nil then
    vim.g.newpaper_lualine_bold = true
end

if vim.g.newpaper_lualine_bold then
    for _, mode in pairs(newpaper) do
        mode.a.gui = "bold"
    end
end

return newpaper
