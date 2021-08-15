-- LuaFormatter off
local colors = {
  blue            = '#00AFAF',
  teal            = '#7e9f9f',
  green           = '#00875F',
  darkgreen       = '#5FAF5F',
  blueviolet      = '#5F005F',
  purple          = '#AF87D7',
  magenta         = '#D75FAF',
  pink            = '#5F0000',
  red             = '#BB0000',
  lightorange     = '#413932',
  darkorange      = '#AF5F00',
  bg              = '#2B2B2B',
  gray            = '#808080',
  silver          = '#3A3A3A',
  git_bg          = '#303030',
  git_fg          = '#EBEAE2'
}

return {
  normal = {
    a = {fg = colors.teal,       bg = colors.silver, gui = 'bold'},
    b = {fg = colors.git_fg,     bg = colors.git_bg}, -- only for GIT
    c = {fg = colors.teal,       bg = colors.silver},
    x = {fg = colors.gray,       bg = colors.silver},
    y = {fg = colors.bg,         bg = colors.blue},
    z = {fg = colors.bg,         bg = colors.teal}
  },
  insert = {
    a = {fg = colors.darkgreen,  bg = colors.silver, gui = 'bold'},
    c = {fg = colors.darkgreen,  bg = colors.silver},
    x = {fg = colors.gray,       bg = colors.silver},
    y = {fg = colors.bg,         bg = colors.green},
    z = {fg = colors.bg,         bg = colors.darkgreen}
  },
  visual = {
    a = {fg = colors.bg,         bg = colors.purple, gui = 'bold'},
    c = {fg = colors.gray,       bg = colors.blueviolet},
    y = {fg = colors.gray,       bg = colors.blueviolet},
    z = {fg = colors.bg,         bg = colors.purple}
  },
  replace = {
    a = {fg = colors.bg,         bg = colors.magenta, gui = 'bold'},
    c = {fg = colors.gray,       bg = colors.pink},
    y = {fg = colors.gray,       bg = colors.pink},
    z = {fg = colors.bg,         bg = colors.magenta}
  },
  command = {
    a = {bg = colors.darkorange, fg = colors.bg, gui = 'bold'},
    c = {fg = colors.gray,       bg = colors.lightorange},
    y = {fg = colors.gray,       bg = colors.lightorange},
    z = {fg = colors.bg,         bg = colors.darkorange}
  },
  inactive = {
    a = {fg = colors.gray,       bg = colors.silver, gui = 'bold'},
    b = {fg = colors.gray,       bg = colors.silver},
    c = {fg = colors.gray,       bg = colors.silver}
  }
}
-- LuaFormatter on