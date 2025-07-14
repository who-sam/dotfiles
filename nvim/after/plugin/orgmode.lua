-- init.lua

require('orgmode').setup({
  org_agenda_files = {'~/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/org/refile.org',
})


require('cmp').setup({
  sources = {
    { name = 'orgmode' }
  }
})


vim.g.completion_chain_complete_list = {
  org = {
    { mode = 'omni'},
  },
}
-- add additional keyword chars
vim.cmd[[autocmd FileType org setlocal iskeyword+=:,#,+]]
