local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.noremap = true  -- Verhindert rekursive Tastenkombinationen
  opts.silent = true   -- Unterdrückt die Anzeige der Befehle
  vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "

require("core")
require("lazy").setup({{ import = "plugins" }})

return {}
