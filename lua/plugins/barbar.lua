return {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    config = function ()
        map('n', '<A-h>', ':BufferPrevious<CR>')
        map('n', '<A-l>', ':BufferNext<CR>')

        map('n', '<A-,>', ':BufferMovePrevious<CR>')
        map('n', '<A-.>', ':BufferMoveNext<CR>')

        map('n', '<A-q>', ':BufferClose<CR>')

        map('n', '<A-1>', ':BufferGoto 1<CR>')
        map('n', '<A-2>', ':BufferGoto 2<CR>')
        map('n', '<A-3>', ':BufferGoto 3<CR>')
        map('n', '<A-4>', ':BufferGoto 4<CR>')
        map('n', '<A-5>', ':BufferGoto 5<CR>')
        map('n', '<A-6>', ':BufferGoto 6<CR>')
        map('n', '<A-7>', ':BufferGoto 7<CR>')
        map('n', '<A-8>', ':BufferGoto 8<CR>')
        map('n', '<A-9>', ':BufferGoto 9<CR>')
    end
}
