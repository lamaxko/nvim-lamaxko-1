return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
		"mfussenegger/nvim-dap-python", -- Add this line for Python debugging
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		require("dap-go").setup()
		require("dap-python").setup("/usr/bin/python3") -- Adjust the path as needed

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>dc", dap.continue, {})
		-- Keymaps for Python debugging with nvim-dap
		vim.keymap.set("n", "<Leader>ds", dap.step_over, { desc = "Step over" })
		vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "Step into" })
		vim.keymap.set("n", "<Leader>do", dap.step_out, { desc = "Step out" })
		vim.keymap.set("n", "<Leader>dr", dap.repl.open, { desc = "Open REPL" })
		vim.keymap.set("n", "<Leader>dl", dap.run_last, { desc = "Run Last" })
		vim.keymap.set("n", "<Leader>dk", dap.terminate, { desc = "Terminate" })

		-- Optional: Add more keymaps for Python debugging features
	end,
}
