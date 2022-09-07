-- OR setup with some options
require("nvim-tree").setup({ -- Beginning of setup
  sort_by = "case_sensitive",
  view = { -- Beginning of view
    adaptive_size = true,
    relativenumber = false,
    mappings = {
      list = {
       -- { key = "u", action = "dir_up" },
       -- {key = "d", action = "dir_down"},
      },
    },
  }, -- End of view

  renderer = { -- Beginning of renderer
    group_empty = true,
    icons = {
        webdev_colors = true,
        git_placement = "before",
        padding = " ",
        symlink_arrow = " ➛ ",
        show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
        },
    },
}, -- End of renderer

git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400,
      },

}) -- End of setup
