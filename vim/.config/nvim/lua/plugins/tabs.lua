return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "rebelot/kanagawa.nvim" },
    opts = function(_, opts)
      local kanagawa = require("kanagawa.colors").setup({ theme = "dragon" })
      local theme_colors = kanagawa.theme
      local palette_colors = kanagawa.palette

      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        separator_style = { "", "" },
        -- separator_style = { "➤", "➤" },
        -- separator_style = { "", "" },
        diagnostics = "nvim_lsp", -- Show LSP diagnostics
        show_buffer_close_icons = false, -- Cleaner look
        show_close_icon = false,
        always_show_bufferline = false,
        custom_areas = {
          left = function()
            return {
              {
                name = "Tabs",
                text = " 󰓩 tabs ",
                bg = theme_colors.syn.fun,
                fg = theme_colors.ui.bg_m3,
              },
              { name = "Tabs separator", text = "", fg = theme_colors.syn.fun }, -- Display Tabs count
            }
          end,
          right = function()
            local lines = vim.api.nvim_buf_line_count(0)
            local lines_text = ""

            if lines == 1 then
              lines_text = " line "
            else
              lines_text = " lines "
            end

            return {

              { name = "Lines separator", text = "", fg = theme_colors.syn.fun },
              {
                name = "Lines",
                text = "  " .. lines .. lines_text .. "",
                bg = theme_colors.syn.fun,
                fg = theme_colors.ui.bg_m3,
              },
            }
          end,
        },
        offsets = {
          {
            filetype = "snacks_layout_box",
          },
        },
      })

      opts.highlights = {
        fill = { bg = theme_colors.ui.bg_p1, fg = theme_colors.ui.fg },
        background = { bg = theme_colors.ui.bg_p1, fg = theme_colors.ui.fg },

        -- Active buffer
        buffer_selected = { bg = theme_colors.ui.bg_p1, fg = palette_colors.fujiWhite, bold = true },

        -- Inactive buffers
        buffer_visible = { fg = palette_colors.fujiGray, bg = theme_colors.ui.bg_p1 },

        pick = { bg = theme_colors.ui.bg_p1 },
        tab_separator = { bg = theme_colors.ui.bg_p1 },
        indicator_visible = { bg = theme_colors.ui.bg_p1 },
        indicator_selected = { bg = theme_colors.ui.bg_p1 },

        duplicate = { bg = theme_colors.ui.bg_p1 },
        duplicate_selected = { bg = theme_colors.ui.bg_p1 },

        diagnostic = { bg = theme_colors.ui.bg_p1 },
        warning = { bg = theme_colors.ui.bg_p1 },
        warning_selected = { bg = theme_colors.ui.bg_p1 },
        warning_diagnostic = { bg = theme_colors.ui.bg_p1 },
        warning_diagnostic_selected = { bg = theme_colors.ui.bg_p1 },

        error = { bg = theme_colors.ui.bg_p1 },
        error_selected = { bg = theme_colors.ui.bg_p1 },
        error_diagnostic = { bg = theme_colors.ui.bg_p1 },
        error_diagnostic_selected = { bg = theme_colors.ui.bg_p1 },

        hint = { bg = theme_colors.ui.bg_p1 },
        hint_selected = { bg = theme_colors.ui.bg_p1 },
        hint_diagnostic = { bg = theme_colors.ui.bg_p1 },
        hint_diagnostic_selected = { bg = theme_colors.ui.bg_p1 },

        info = { bg = theme_colors.ui.bg_p1 },
        info_selected = { bg = theme_colors.ui.bg_p1 },
        info_diagnostic = { bg = theme_colors.ui.bg_p1 },
        info_diagnostic_selected = { bg = theme_colors.ui.bg_p1 },

        offset_separator = { bg = theme_colors.ui.bg_p1 },

        -- Separators
        separator = { fg = palette_colors.fujiGray, bg = theme_colors.ui.bg_p1 },
        separator_visible = { fg = palette_colors.fujiGray, bg = theme_colors.ui.bg_p1 },
        separator_selected = { fg = palette_colors.fujiWhite, bg = theme_colors.ui.bg_p1 },

        -- Modified indicators
        modified = { fg = palette_colors.peachRed, bg = theme_colors.ui.bg_p1 },
        modified_selected = { fg = palette_colors.autumnRed, bg = theme_colors.ui.bg_p1 },

        -- Tabs
        tab = { fg = palette_colors.fujiGray, bg = theme_colors.ui.bg_p1 },
        tab_selected = { fg = palette_colors.fujiWhite, bg = theme_colors.ui.bg_p1, bold = true },
      }
    end,
  },
}
