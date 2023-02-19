-- https://github.com/goolord/alpha-nvim

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	-- Number of plugins
	local total_plugins = #vim.tbl_keys(packer_plugins)
	local datetime = os.date("%d-%m-%Y  %H:%M:%S")
	local plugins_text = "\t" .. total_plugins .. " plugins  " .. datetime

	-- Quote
	local fortune = require("alpha.fortune")
	local quote = table.concat(fortune(), "\n")

	return plugins_text .. "\n" .. quote
end

dashboard.section.footer.val = footer()
dashboard.section.buttons.opts.hl = "Function"
dashboard.section.footer.opts.hl = "Type"
dashboard.section.footer.opts.hl = "Constant"
dashboard.section.header.opts.hl = "Include"
dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.config)