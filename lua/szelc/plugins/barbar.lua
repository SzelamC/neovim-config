vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    callback = function()
      if vim.bo.filetype == "NvimTree" then
        require("bufferline.api").set_offset(30, "FileTree")
      end
    end,
})

vim.api.nvim_create_autocmd("BufWinLeave", {
    pattern = "*",
    callback = function()
      if vim.fn.expand("<afile>"):match("NvimTree") then
        require("bufferline.api").set_offset(0)
      end
    end,
})

-- Set barbar's options
require("bufferline").setup({
    -- Enable/disable animations
    animation = false,
})
