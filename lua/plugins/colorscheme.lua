local hr = tonumber(os.date("%H", os.time()))
local flavour

if hr > 9 and hr < 18 then
  flavour = "latte"
else
  flavour = "mocha"
end

return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = flavour,
      transparent_background = true,
      color_overrides = {
        latte = {
          rosewater = "#c14a4a",
          flamingo = "#c14a4a",
          red = "#c14a4a",
          maroon = "#c14a4a",
          pink = "#945e80",
          mauve = "#945e80",
          peach = "#c35e0a",
          yellow = "#b47109",
          green = "#556b2f",
          teal = "#4c7a5d",
          sky = "#4c7a5d",
          sapphire = "#4c7a5d",
          blue = "#305056",
          lavender = "#45707a",
          text = "#654735",
          subtext1 = "#73503c",
          subtext0 = "#805942",
          overlay2 = "#8c6249",
          overlay1 = "#8c856d",
          overlay0 = "#a69d81",
          surface2 = "#bfb695",
          surface1 = "#d1c7a3",
          surface0 = "#e3dec3",
          base = "#f9f5d7",
          mantle = "#f0ebce",
          crust = "#e8e3c8",
        },
        mocha = {
          rosewater = "#e0ceca",
          flamingo = "#e3c1c1",
          pink = "#e0b1d4",
          mauve = "#c4a4eb",
          red = "#d2788c",
          maroon = "#eba0ac",
          peach = "#f6b596",
          yellow = "#e6d0a1",
          green = "#8faf77",
          teal = "#88d1c5",
          sky = "#82d2e0",
          sapphire = "#6dbade",
          blue = "#7aa0de",
          lavender = "#b4befe",
          text = "#d5daf0",
          subtext1 = "#bac2de",
          subtext0 = "#a6adc8",
          overlay2 = "#9399b2",
          overlay1 = "#7f849c",
          overlay0 = "#6c7086",
          surface2 = "#585b70",
          surface1 = "#45475a",
          surface0 = "#313244",
          base = "#1b1f20",
          mantle = "#151819",
          crust = "#0e1011",
        },
      },
      background = {
        light = "latte",
        dark = "macchiato",
      },
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        aerial = true,
        alpha = false,
        barbar = false,
        beacon = false,
        cmp = true,
        dap = true,
        dap_ui = true,
        fidget = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        hop = true,
        illuminate = true,
        indent_blankline = { enabled = true, colored_indent_levels = false },
        leap = false,
        lightspeed = false,
        lsp_saga = true,
        lsp_trouble = true,
        markdown = true,
        mason = true,
        mini = false,
        navic = { enabled = true },
        neogit = false,
        neotest = false,
        neotree = { enabled = false, show_root = true, transparent_panel = false },
        noice = false,
        notify = true,
        nvimtree = true,
        overseer = false,
        pounce = false,
        rainbow_delimiters = true,
        render_markdown = true,
        sandwich = false,
        semantic_tokens = true,
        symbols_outline = false,
        telekasten = false,
        telescope = { enabled = true, style = "nvchad" },
        treesitter_context = true,
        ts_rainbow = true,
        vim_sneak = false,
        vimwiki = false,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        functions = { bold = true },
        methods = { bold = true },
      },
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
          bg = prompt,
        }
        hl.TelescopePromptBorder = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePromptTitle = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
      end,
    },
  },
}
