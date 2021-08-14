## ℹ️  Info
[license](https://img.shields.io/github/license/hoob3rt/lualine.nvim?style=flat-square)

[Lualine](https://github.com/hoob3rt/lualine.nvim) theme for using with light and dark background.

### TODO:
- [ ] Dark theme 

### ⚠️ NOTE

No need to install this if you are using [newpaper](https://github.com/yorik1984/newpaper.nvim) colosсheme for Neovim. Lualine theme was included into colorscheme.
Just use this configuration to customize it.

### 🖼️ newpaper-light

![newpaper-light-normal](https://user-images.githubusercontent.com/1559192/129404790-1cf23fab-7828-48c2-b704-32c65af0af22.png)
![newpaper-light-insert](https://user-images.githubusercontent.com/1559192/129404788-9d67bca5-fca0-4529-aa3c-4fbf63910059.png)
![newpaper-light-visual](https://user-images.githubusercontent.com/1559192/129404794-b9ac2cab-14b4-4737-948a-679fc9c5ec02.png)
![newpaper-light-v_line](https://user-images.githubusercontent.com/1559192/129404793-b2808010-66ae-43aa-b643-685e263609a6.png)
![newpaper-light-replace](https://user-images.githubusercontent.com/1559192/129404792-3d698007-654b-4905-b01a-39e9b54a4b6f.png)
![newpaper-light-command](https://user-images.githubusercontent.com/1559192/129404785-7179d4dd-66e6-4a71-8135-fcf1cee67e8c.png)

### 🌟 Features

+ bright colors
+ git native colors in status line

### ⚡️ Requirements

+ Neovim >= 0.5.0

### 📦 Installation

Install via your favourite package manager:
#### [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use 'yorik1984/lualine-theme.nvim'
```

### 🚀 Usage

```lua
-- light theme
require('lualine').setup {
    options = {
        theme = 'newpaper-light'
        -- with newpaper colosheme use 
		-- theme = 'newpaper'
    }
}
```

### ⚙️ Configuration

You can add this configuration for customize colors for git and diagnostics:

![git_color-light](https://user-images.githubusercontent.com/1559192/129439361-fb12878a-d166-4dfb-baea-0f6ca01e1c1d.png) ![diagnostics_color-light](https://user-images.githubusercontent.com/1559192/129439370-e315b6c9-4914-4ecb-ac9d-149a1be5f284.png)
```lua
require("lualine").setup {
    options = {
        theme = "newpaper-light",
        -- with newpaper colosheme use 
		-- theme = 'newpaper'
        section_separators = {"", ""}, 
        component_separators = {"│", "│"}
    },
    sections = {
        -- GIT settings
        lualine_b = {
            {"branch", icon = ""},
            {"diff",
                colored = true,
                -- light theme
                color_added    = "#28A745",
                color_modified = "#DBAB09",
                color_removed  = "#D73A49",
                symbols = {
                    added    = " ",
                    modified = " ",
                    removed  = " "
                }
            }
        },
        lualine_x = {
            {'diagnostics',
                sources =  {"nvim_lsp"},
                sections = {"error", "warn", "info", "hint"},
                -- light theme
                color_error = "#DF0000",
                color_warn  = "#D75F00",
                color_info  = "#0087AF",
                color_hint  = "#008700",
                symbols = {
                    error = " ",
                    warn  = " ",
                    info  = " ",
                    hint  = " "
                }
            }
        }
    }
}
```
