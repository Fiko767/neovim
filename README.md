# **✨ My neovim config**

## **📦 Installation**

| Dependency | Description                    |
| ---------- | ------------------------------ |
| Neovim     | Obviously required             |
| Git        | Needed to clone the repository |
| Nerd Font  | Provides additional icons      |
| Luarocks   | I don't know for what          |

```sh
git clone https://github.com/Fiko767/neovim.git ~/.config/nvim/
```

## **📁 Structure**

The config is using the `lazy.nvim` package manager.

```
~/.config/nvim/
├── init.lua
└── lua/
    ├── catppuccin.lua
    └── tree-sitter.lua
```

## **🛠 Plugins**

If you want to add your own plugins, simply create a `.lua` file inside the `lua/plugins` directory.
All configurations, including keybindings, are defined in the corresponding `.lua` file for each plugin.

# Github Copilot AI

I use Github Copilot AI for code suggestions and completions.
The keybinds for copilot always start with <leader>a.

## **💬 Feedback and Issues**

This project uses the GitHub Copilot Neovim plugin to enhance coding productivity and provide AI-assisted code suggestions.

- 🐞 **Found a bug or issue?**  
  Report it in the [issue tracker](https://github.com/Fiko767/neovim/issues).

## **🏆 Credits**

Parts of this configuration were copied from various repositories, and I also used AI for some parts.
