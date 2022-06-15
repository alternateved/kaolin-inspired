local wezterm = require 'wezterm';

-- Kaolin Dark
local C_ACTIVE_BG = "#4b5254";
local C_ACTIVE_FG = "#e4e4e8";
local C_BG = "#18181b";
local C_HL_1 = "#f2c866";
local C_HL_2 = "#e36d5b";
local C_INACTIVE_FG = "#4b5254";

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  if tab.is_active then
    return {
      {Foreground={Color=C_HL_1}},
      {Text=" " .. tab.tab_index+1},
      {Foreground={Color=C_HL_2}},
      {Text=": "},
      {Foreground={Color=C_ACTIVE_FG}},
      {Text=tab.active_pane.title .. " "},
      {Background={Color=C_BG}},
      {Foreground={Color=C_HL_1}},
      {Text="|"},
    }
  end
  return {
    {Foreground={Color=C_HL_1}},
    {Text=" " .. tab.tab_index+1},
    {Foreground={Color=C_HL_2}},
    {Text=": "},
    {Foreground={Color=C_INACTIVE_FG}},
    {Text=tab.active_pane.title .. " "},
    {Foreground={Color=C_HL_1}},
    {Text="|"},
  }
end)

return {
  color_scheme = "kaolin-dark",
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,

  colors = {
    tab_bar = {
      background = C_BG,
      new_tab = {
        bg_color = C_BG,
        fg_color = C_HL_2,
      },
      active_tab = {
        bg_color = C_ACTIVE_BG,
        fg_color = C_ACTIVE_FG,
      },
      inactive_tab = {
        bg_color = C_BG,
        fg_color = C_INACTIVE_FG,
      },
      inactive_tab_hover = {
        bg_color = C_BG,
        fg_color = C_INACTIVE_FG,
      },
    },
  },
}
