require("myconf.remap")
require("myconf.packer")
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
