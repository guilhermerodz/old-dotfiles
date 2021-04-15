" Find files using Telescope command-line sugar.
nnoremap <C-p>f <cmd>Telescope find_files find_command=rg,--hidden,--files<cr>
nnoremap <C-p>g <cmd>Telescope live_grep<cr>
nnoremap <C-p>b <cmd>Telescope buffers<cr>
nnoremap <C-p>h <cmd>Telescope help_tags<cr>

" Using lua functions
"nnoremap <C-p>f <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <C-p>g <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <C-p>b <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <C-p>h <cmd>lua require('telescope.builtin').help_tags()<cr>

lua << EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "bottom",
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = { 'node_modules/','.git/' },
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.75,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = false,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
EOF
