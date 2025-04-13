# My neovim config ✨

## Information

This is my personal Neovim configuration, so it might not suit everyone's taste. The setup includes all the basic features like syntax highlighting, LSP, and more.

I use the [lazy.nvim](https://github.com/folke/lazy.nvim) packet manager.

## Installation

| Depency       | Reason                     |
| ------------- | -------------------------- |
| Neovim        | This should be obvious     |
| Git           | To clone everthing         |
| Nerd Font     | For all the speacial icons |
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

### Keybinds ⌨

- 📂 **Telescope** – `<leader>f`
- 🧲 **Gitsigns** - `<leader>g`
- 🖥 **Neogit** - `<leader>n`
- 💡 **LSP** - `<leader>l` and `g`

> All the keymaps are in 👉 lua/core/keymaps.lua
