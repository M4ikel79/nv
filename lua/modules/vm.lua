local M = {}

M.vm_status = function()
  -- Check if VM is active
  if vim.b.visual_multi then
    local vm_info = vim.fn["VMInfos"]()
    if vm_info and vm_info.ratio then
      vim.api.nvim_set_hl(0, "multi", { fg = "#C0C0C0", bold = true })
      vim.api.nvim_set_hl(0, "multiText", { fg = "#C0C0C0" })

      local mode_icon = "%#multi# %*"
      local ratio_text = "%#multiText#" .. vm_info.ratio .. "%*"

      return "%#StText# " .. mode_icon .. " " .. ratio_text
    end
  end
  return ""
end

return M
