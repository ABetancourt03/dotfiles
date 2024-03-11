return {
	"wuelnerdotexe/vim-astro",
	config = function()
		vim.filetype.add({
			extension = {
				astro = "astro",
			},
		})
	end,
}
