<p align="center">
    <img src="https://github.com/ebadfd/cozy-bear-nvim/raw/main/assets/icon.png" width="80" />
    <h2 align="center">Rosé Pine for Neovim</h2>
</p>

<p align="center">All natural pine, faux fur and a bit of soho vibes for the classy minimalist</p>


## Getting started

Install `cozy-bear-nvim` using your favourite plugin manager:

**paq-nvim**

```lua
{ "ebadfd/cozy-bear-nvim", as = "cozy-bear" }
```

**lazy.nvim**

```lua
{ "ebadfd/cozy-bear-nvim", name = "cozy-bear" }
```

## Gallery

**Rosé Pine**

![Rosé Pine with Neovim](https://user-images.githubusercontent.com/1973/163921570-0f577baf-3199-4f09-9779-a7eb9238151a.png)

**Rosé Pine Moon**

![Rosé Pine Moon with Neovim](https://user-images.githubusercontent.com/1973/163921620-d3acd0d2-d227-4d28-a5e8-97ff22e56c6d.png)

**Rosé Pine Dawn**

![Rosé Pine Dawn with Neovim](https://user-images.githubusercontent.com/1973/163921656-644a2db3-c55c-4e89-9bdd-39cdd7a2681b.png)

## Options

> [!IMPORTANT]
> Configure options _before_ setting colorscheme.

Cozy Bear currently has only one variant: main. By default, `vim.o.background` is followed, using dawn when light and `dark_variant` when dark.

```lua
require("cozy-bear").setup({
    variant = "auto", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
    },

    styles = {
        bold = true,
        italic = true,
        transparency = false,
    },

    groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
    },

    palette = {
        -- Override the builtin palette per variant
        -- moon = {
        --     base = '#18191a',
        --     overlay = '#363738',
        -- },
    },

    highlight_groups = {
        -- Comment = { fg = "foam" },
        -- VertSplit = { fg = "muted", bg = "muted" },
    },

    before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
    end,
})

vim.cmd("colorscheme cozy-bear")
-- vim.cmd("colorscheme cozy-bear-main")
-- vim.cmd("colorscheme cozy-bear-moon")
-- vim.cmd("colorscheme cozy-bear-dawn")
```

## Contributing

We welcome and appreciate contributions of any kind. Create an issue or start a discussion for any proposed changes. Pull requests are encouraged for supporting additional plugins or [treesitter improvements](https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights).

Feel free to update the [wiki](https://github.com/cozy-bear/neovim/wiki/) with any [recipes](https://github.com/cozy-bear/neovim/wiki/Recipes).



## Attributions

- The logo was created by [catalyststuff on Freepik](https://www.freepik.com/author/catalyststuff). You can find the original vector illustration here: [Cute black bear wearing a blanket - cartoon vector icon](https://www.freepik.com/free-vector/cute-black-bear-wearing-blanket-cartoon-vector-icon-illustration-animal-nature-icon-isolated-flat_54077784.htm#fromView=keyword&page=1&position=0&uuid=d38e0a98-1386-48f1-ba16-606742f33063).
- This plugin is a fork of the Rose Pine plugin, with modifications to the color scheme based on a custom schema. Future plans include adding more variants and enhancements.

