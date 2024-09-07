return{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
                theme = 'hyper',
                shortcut_type = "number",
                hide = {
                 statusline = false,   -- hide statusline default is true
                 tabline = false,      -- hide the tabline
                 winbar = false,       -- hide winbar

                },
                config = {
                    header = {
[[    ______               __     _    __ ____ __  ___]],
[[   / ____/____ _ ____ _ / /___ | |  / //  _//  |/  /]],
[[  / __/  / __ `// __ `// // _ \| | / / / / / /|_/ / ]],
[[ / /___ / /_/ // /_/ // //  __/| |/ /_/ / / /  / /  ]],
[[/_____/ \__,_/ \__, //_/ \___/ |___//___//_/  /_/   ]],
[[              /____/                               ]],
[[]],
[[]],
[[]],
},
      packages = { enable = false },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
      },
         mru = { limit = 8, icon = '', label = '  Last used: ', cwd_only = false },
         footer = {
                    [[]],
                    [[]],
                    [[]],
                    [[Nest]],
                }, -- footer--
    },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
