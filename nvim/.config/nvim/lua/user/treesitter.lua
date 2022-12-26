local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = { "bash", "rust", "c", "cpp", "fortran", "python", "lua" }, -- list
  sync_install = false,                          -- install languages synchronously
  ignore_install = { "" },                       -- list of languages to be ignored
  highlight = {
    enable = true,  -- false disables extension
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = { "" },
  },
  rainbow = {
    enable = true,
    -- disable = { "" }, 
    extended_mode = true, -- highlight non-bracket delimiters like html tags, and types
    max_file_lines = nil, -- do not enable for files with more than these lines
    -- colors = {}, -- table of hex strings
    -- termcolors = {}, -- table of colour name strings
  },
  playground = {
    enable = true,
    -- disable = { "" },
    -- updatetime = 25,  -- debounced time for highliting nodes in playground from source code
    -- persist_queries = false, -- persisting queries across sessions
    -- keybindings = {
      -- toggle_query_editor = 'o',
      -- toggle_hl_groups = 'l',
      -- toggle_injected_languages = 't',
      -- toggle_anonymous_nodes = 'a',
      -- toggle_language_display = 'I',
      -- focus_language = 'f',
      -- unfocus_language = 'F',
      -- update = 'R',
      -- goto_node = '<cr>',
      -- show_help = '?'      
    -- },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
