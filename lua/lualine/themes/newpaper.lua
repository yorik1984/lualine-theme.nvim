local colors = {
  blue            = '#0087AF',
  navy            = '#005F87',
  green           = '#50A14F',
  darkgreen       = '#008700',
  blueviolet      = '#AF87D7',
  purple          = '#8700AF',
  magenta         = '#D7005F',
  pink            = '#FFAFDF',
  red             = '#DF0000',
  yellow          = '#E9B96E',
  orange          = '#D75F00',
  fg              = '#585858',
  bg              = '#F1F3F2',
  darkgray        = '#585858',
  gray            = '#E5E5E5',
  git_bg          = '#EBEAE2',
  git_fg          = '#413932',
}

return {
  normal = {
    a = {fg = colors.navy,   bg = colors.gray, gui = 'bold'},
    b = {fg = colors.git_fg, bg = colors.git_bg}, -- only for GIT
    c = {fg = colors.navy,   bg = colors.gray},
    x = {fg = colors.fg,     bg = colors.gray},
    y = {fg = colors.bg,     bg = colors.blue},
    z = {fg = colors.bg,     bg = colors.navy}
  },
  insert = {
    a = {fg = colors.darkgreen, bg = colors.gray, gui = 'bold'},
    c = {fg = colors.darkgreen, bg = colors.gray},
    x = {fg = colors.fg,        bg = colors.gray},
    y = {fg = colors.bg,        bg = colors.green},
    z = {fg = colors.bg,        bg = colors.darkgreen}
  },
  visual = {
    a = {fg = colors.bg, bg = colors.purple, gui = 'bold'},
    c = {fg = colors.fg, bg = colors.blueviolet},
    y = {fg = colors.fg, bg = colors.blueviolet},
    z = {fg = colors.bg, bg = colors.purple}
  },
  replace = {
    a = {fg = colors.bg, bg = colors.magenta, gui = 'bold'},
    c = {fg = colors.fg, bg = colors.pink},
    y = {fg = colors.fg, bg = colors.pink},
    z = {fg = colors.bg, bg = colors.magenta}
  },
  command = {
    a = {bg = colors.orange, fg = colors.bg, gui = 'bold'},
    c = {fg = colors.fg,     bg = colors.yellow},
    y = {fg = colors.fg,     bg = colors.yellow},
    z = {fg = colors.bg,     bg = colors.orange}
  },
  inactive = {
    a = {fg = colors.darkgray, bg = colors.gray, gui = 'bold'},
    b = {fg = colors.darkgray, bg = colors.gray},
    c = {fg = colors.darkgray, bg = colors.gray}
  }

}
