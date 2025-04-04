# **✨ My neovim config**

## **📦 Installation**

| Dependency    | Description    |
|---------------|----------------|
| Neovim        | Obviously required |
| Git           | Needed to clone the repository |
| Nerd Font     | Provides additional icons |

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

## **🤖 Avante (AI Integration)**

Avante is an AI-powered plugin for Neovim.
By default, this configuration uses Gemini-2.0-Flash as the AI provider because the [Gemini API key is free to claim.](https://ai.google.dev/gemini-api/docs/api-key)
If you prefer to use **ChatGPT** or **Claude**, refer to the official Avante [repo](https://github.com/yetone/avante.nvim) 

## **💬 Feedback and Issues**

- 💡 **Have ideas for improvements?**  
  Start a [discussion](https://github.com/Fiko767/neovim/discussions/new?category=ideas) and share your thoughts!

- 🐞 **Found a bug or issue?**  
  Report it in the [issue tracker](https://github.com/Fiko767/neovim/issues).

## **🏆 Credits**

Parts of this configuration were copied from various repositories, and I also used AI for some parts.
