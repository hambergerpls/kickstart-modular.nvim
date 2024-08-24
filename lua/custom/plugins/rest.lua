return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
      luarocks_install_vars = { "CURL_DIR=" .. (os.getenv("CURL_DIR") or "") }
    }
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup({
        result = {
          split = {
            horizontal = true
          }
        }
      })
    end,
  }
}
