## ℹ️  Info

[Lualine](https://github.com/nvim-lualine/lualine.nvim) theme for using with light and dark background.

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

### 🖼️ newpaper-dark

![newpaper-dark-normal](https://user-images.githubusercontent.com/1559192/129481063-7f6651b5-2fe3-47f9-b522-5829105a43f3.png)
![newpaper-dark-insert](https://user-images.githubusercontent.com/1559192/129481065-f078c808-dbce-4ff2-a4cb-898d0e8dc750.png)
![newpaper-dark-visual](https://user-images.githubusercontent.com/1559192/129481072-f1e0169d-b892-410d-9f24-7322a214e6a2.png)
![newpaper-dark-v_line](https://user-images.githubusercontent.com/1559192/129481081-c778d476-2c1d-4bb0-8904-26a6e3b0faa0.png)
![newpaper-dark-v_block](https://user-images.githubusercontent.com/1559192/129481085-89b8eb24-e8d5-456a-b29b-31a5fc5f6a60.png)
![newpaper-dark-replace](https://user-images.githubusercontent.com/1559192/129481091-a196dcfc-4c4d-4ccb-8069-f9f3443ab36e.png)
![newpaper-dark-command](https://user-images.githubusercontent.com/1559192/129481093-40a09545-327c-4101-9727-fd3234509c78.png)

### 🌟 Features

+ git native colors in status line
+ light and dark theme
+ integration to colorscheme with installation from [newpaper.nvim](https://github.com/yorik1984/newpaper.nvim)

### ⚡️ Requirements

+ Neovim >= 0.5.0

### 📦 Installation

Install via your favorite package manager:

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use "yorik1984/lualine-theme.nvim"
```

### 🚀 Usage

```lua
-- light theme
require("lualine").setup {
    options = {
        theme = "newpaper-light"
        -- empty with newpaper colosheme 
    }
}

-- dark theme
require("lualine").setup {
    options = {
        theme = "newpaper-dark"
        -- empty with newpaper colosheme  
    }
}
```

### ⚙️ Configuration

You can add this configuration for customize colors for git and diagnostics.

Available options:

| Option | Default | Description |
| -------| ------- |------------ |
| newpaper_lualine_bold |`true` | When true, section headers in the lualine theme will be bold |

+ in light
    ![git_color-light](https://user-images.githubusercontent.com/1559192/129439361-fb12878a-d166-4dfb-baea-0f6ca01e1c1d.png) ![diagnostics_color-light](https://user-images.githubusercontent.com/1559192/129439370-e315b6c9-4914-4ecb-ac9d-149a1be5f284.png)
+ in dark
    ![git_color-dark](https://user-images.githubusercontent.com/1559192/129459043-9d7a2806-ab12-4a70-88ec-ee17d943e326.png)
```lua
-- Lua
vim.g.newpaper_lualine_bold = true --default
require("lualine").setup {
    options = {
        -- theme = "newpaper-dark",
        theme = "newpaper-light",
        -- empty with newpaper colosheme
        section_separators = {"", ""}, 
        component_separators = {"│", "│"}
    },
    sections = {
        -- GIT settings
        lualine_b = {
            {"branch", icon = ""},
            {
                "diff",
                colored = true,
                diff_color = {
                    added    = { fg = "#28A745" },
                    modified = { fg = "#DBAB09" },
                    removed  = { fg = "#D73A49" }
                },
                symbols = {
                    added    = " ",
                    modified = " ",
                    removed  = " "
                }
            }
        },
        lualine_x = {
            {
                "diagnostics",
                sources =  {"nvim_lsp"},
                sections = {"error", "warn", "info", "hint"},
                diagnostics_color = {
                    error = { fg = "#AF0000" },
                    warn  = { fg = "#D75F00" },
                    info  = { fg = "#0087AF" },
                    hint  = { fg = "#008700" }
                },
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
