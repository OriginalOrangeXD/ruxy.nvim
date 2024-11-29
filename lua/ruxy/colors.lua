local catppuccin = require 'catppuccin'
local onedark = require 'onedarkpro'
local colorizer = require 'colorizer'
local gitsigns = require 'gitsigns'
local lualine = require 'lualine'
local noice = require 'noice'
local tokyonight = require 'tokyonight'

local function init()


    lualine.setup {
        options = {
            component_separators = { left = '', right = '' },
            icons_enabled = false,
            section_separators = { left = '', right = '' },
            theme = "gruvbox"
        }
    }

    vim.cmd.colorscheme "gruvbox"
end

function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    ColorMyPencils = ColorMyPencils,
    init = init,
}
