require("myconf.packer")
require("myconf.set")
require("myconf.remap")
require("nightfox").setup({
	options = {
		transparent = true,
		dim_inactive = true,
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "italic",
		},
	},
})
vim.cmd("colorscheme nightfox")
