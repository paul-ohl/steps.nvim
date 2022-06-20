describe("steps", function()
	it("can be required", function()
		require("steps")
	end)

	it("can open a split", function()
		require("steps").open_steps_window()
	end)
end)
