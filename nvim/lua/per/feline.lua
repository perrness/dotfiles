local components = {
  active = {},
  inactive = {},
}

-- Insert three sections (left, mid and right) for the active statusline
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})

-- Insert two sections (left and right) for the inactive statusline
table.insert(components.inactive, {})
table.insert(components.inactive, {})

local one_monokai = {
  fg = "#abb2bf",
  bg = "#1e2024",
  green = "#98c379",
  yellow = "#e5c07b",
  purple = "#c678dd",
  orange = "#d19a66",
  peanut = "#f6d5a4",
  red = "#e06c75",
  aqua = "#61afef",
  darkblue = "#282c34",
  dark_red = "#f75f5f",
}

local file_info_component = {
  provider = {
    name = 'file_info',
    opts = {
      type = 'relative'
    },
  },
  hl = {
    style = 'bold'
  }
}

local file_type_component = {
  provider = {
    name = 'file_type',
    opts = {
      filetype_icon = true,
      case = 'titlecase',
    },
  },
  hl = {
    style = 'bold',
  },
  left_sep = ' ',
}

local vi_mode_component = {
  provider = 'vi_mode',
  hl = function()
    return {
      name = require('feline.providers.vi_mode').get_mode_highlight_name(),
      fg = require('feline.providers.vi_mode').get_mode_color(),
      style = 'bold'
    }
  end,
  right_sep = ' ',
  icon = ''
}

local scroll_bar_component = {
  provider = 'scroll_bar',
  left_sep = ' ',
  reverse = false,
  hl = {
    fg = 'blue'
  }
}

local line_percentage_component = {
  provider = 'line_percentage',
  left_sep = ' ',
  hl = {
    style = 'bold'
  }
}

local position_component = {
  provider = 'position',
  left_sep = ' ',
  padding = true,
  padding = {
    line = 2,
    col = 2,
  },
}

local git_component = {
  provider = 'git_branch',
  left_sep = ' ',
  hl = {
    fg = 'magenta',
    style = 'bold',
  }
}

local git_diff_added_component = {
  provider = 'git_diff_added',
  hl = {
    fg = 'green',
  },
  left_sep = 'block',
  right_sep = 'block',
}

local git_diff_removed_component = {
  provider = 'git_diff_removed',
  hl = {
    fg = 'red',
  },
  left_sep = 'block',
  right_sep = 'block',
}

local git_diff_changed_component = {
  provider = 'git_diff_changed',
  hl = {
    fg = 'yellow',
  },
  left_sep = 'block',
  right_sep = 'block',
}

local encoding_component = {
  provider = 'file_encoding',
  left_sep = ' ',
  hl = {
    fg = 'violet',
    style = 'bold',
  }
}

-- components.active[1][1] = {
--     provider = 'vi_mode',
--     hl = function()
--         return {
--             name = require('feline.providers.vi_mode').get_mode_highlight_name(),
--             fg = require('feline.providers.vi_mode').get_mode_color(),
--             style = 'bold'
--         }
--     end,
--     right_sep = ' ',
--     -- Uncomment the next line to disable icons for this component and use the mode name instead
--     icon = ''
-- }

components.active[1][1] = vi_mode_component
components.active[1][2] = git_component
components.active[1][3] = git_diff_added_component
components.active[1][4] = git_diff_removed_component
components.active[1][5] = git_diff_changed_component

components.active[2][1] = file_info_component

components.active[3][1] = position_component
components.active[3][2] = file_type_component
components.active[3][3] = encoding_component
components.active[3][4] = line_percentage_component
components.active[3][5] = scroll_bar_component

require('feline').setup({
  components = components
})
