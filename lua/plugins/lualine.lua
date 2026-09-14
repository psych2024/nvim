return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, {
      function()
        local wc = vim.fn.wordcount()
        if wc.visual_words then
          return wc.visual_words .. " selected"
        end
        return wc.words .. " words"
      end,
      cond = function()
        return vim.bo.buftype == ""
      end,
    })
  end,
}
