# My neovim config ✨

## Information

This is my personal Neovim configuration, so it might not suit everyone's taste. The setup includes all the basic features like syntax highlighting, LSP, and more.

I use the [lazy.nvim](https://github.com/folke/lazy.nvim) package manager.

## Installation

| Dependency    | Reason                     |
| ------------- | -------------------------- |
| Neovim        | This should be obvious     |
| Git           | To clone everything        |
| Nerd Font     | For all the special icons  |
| luarocks, npm | To download the LSP        |
| fzf           | For telescope (fzf-native) |

### Clone the repo 📦

```sh
mkdir -p ~/.config/nvim
git clone https://github.com/Fiko767/neovim.git ~/.config/nvim
```

## Plugins

Adding your own plugins is easy. Just create a new file in `lua/plugins/plugin.lua`.

```
~/.config/nvim
├── lua/
│   ├── core/
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   │
│   ├── plugins/
│   │   ├── plugin.lua <-- Your plugin
│   │   ├── mason.lua
│   │   ├── telescope.lua
│   │   └── tree-sitter.lua
└── init.lua
```

### AI

I am using these plugins for AI:

- [Avante](https://github.com/yetone/avante.nvim)
- [Aider](https://aider.chat)
- [Aider.nvim](https://github.com/GeorgesAlkhouri/nvim-aider)

The keymaps for AI are:

- `<leader>A` - For Aider
- `<leader>a` - For Avante

### Keybinds ⌨

- 📂 **Telescope** – `<leader>f`
- 🧲 **Gitsigns** - `<leader>g`
- 🖥 **Neogit** - `<leader>n`
- 💡 **LSP** - `<leader>l` and `g`

> All the keymaps are in 👉 lua/core/keymaps.lua
