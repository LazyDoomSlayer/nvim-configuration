-- Let the terminal provide the translucent, blurred background.
-- Reapply after every colorscheme change so theme updates cannot restore an
-- opaque background.
local transparent_groups = {
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "FloatTitle",
  "SignColumn",
  "LineNr",
  "CursorLineNr",
  "FoldColumn",
  "EndOfBuffer",
  "MsgArea",
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "SnacksNormal",
  "SnacksNormalNC",
  "TelescopeNormal",
  "TelescopeBorder",
}

local function make_transparent()
  for _, group in ipairs(transparent_groups) do
    -- :highlight changes only the requested fields, preserving each theme's
    -- foreground colors and text styling.
    vim.cmd(("highlight %s guibg=NONE ctermbg=NONE"):format(group))
  end
end

return {
  {
    "LazyVim/LazyVim",
    init = function()
      local group = vim.api.nvim_create_augroup("transparent_background", { clear = true })
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = group,
        callback = make_transparent,
      })

      vim.schedule(make_transparent)
    end,
  },
}
