require("neogit").setup({
	disable_builtin_notifications = false,
	disable_commit_confirmation = true,
	sections = {
		untracked = { folded = false ,hidden = false},
		unstage ={ folded = false ,hidden = false},
		staged = { folded = false ,hidden = false}
	},
	integrations = {
		diffview = true
	}
})
