return {
  'romek-codes/bruno.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    require('bruno').setup({
      collection_paths = {
        { name = "cgpt", path = "~/repo/Carbon-GPT/cgpt/cgpt-bruno/cgpt/" },
      }
    })
  end
}
