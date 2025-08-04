vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local dir = vim.fn.expand("<afile>:p:h")
    if vim.fn.isdirectory(dir) == 0 then
      local choice = vim.fn.confirm("Directory does not exist. Create it?", "&Yes\n&No", 1)
      if choice == 1 then
        vim.fn.mkdir(dir, "p")
      else
        -- cancel write
        vim.api.nvim_command("echo 'Canceled save: directory does not exist'")
        vim.api.nvim_command("silent! execute 'bdelete!'")
      end
    end
  end
})

