-- command line completion
local ok, wilder = pcall(require, "wilder")
if ok then
  wilder.setup({ modes = { ':', '/', '?' } })
  wilder.set_option('renderer', wilder.popupmenu_renderer())
end
