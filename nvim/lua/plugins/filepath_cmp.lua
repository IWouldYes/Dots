--filepath completion
local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<Right>'] = cmp.mapping.confirm({ select = true }),  -- Enter accepts selection
    ['<Tab>'] = cmp.mapping.select_next_item(),        -- Tab to move down
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),      -- Shift+Tab to move up
  },
  sources = {
    { name = 'path' },
  },
})
