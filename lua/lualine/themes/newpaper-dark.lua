-- stylua: ignore start
local colors = {
    blue        = "#5FAFD7",
    teal        = "#72AEB3",
    green       = "#00875F",
    darkgreen   = "#5FAF5F",
    blueviolet  = "#483D53",
    purple      = "#A274D1",
    magenta     = "#D75FAF",
    pink        = "#2E2323",
    lightorange = "#413932",
    darkorange  = "#C57A30",
    bg          = "#2B2B2B",
    grey        = "#808080",
    lightgrey   = "#787878",
    silver      = "#3A3A3A",
    git_bg      = "#303030",
    git_fg      = "#EBEAE2"
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
