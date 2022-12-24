local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = { "bash", "rust", "c", "python", "lua" }, -- "all", "maintained" or list
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
  }
}
