data:extend(
	{
		{
			type = "selection-tool",
			name = "tree-deconstructor",
			icon = "__TreeDeconstructor__/graphics/tree-deconstructor.png",
			flags = {"goes-to-quickbar"},
			subgroup = "tool",
			order = "c[automated-construction]-b[tree-deconstructor]",
			stack_size = 1,
			selection_color = { r = 0.6, g = 0.6, b = 0 },
			alt_selection_color = { r = 0, g = 0, b = 1 },
			selection_mode = {"deconstruct", "trees"},
			alt_selection_mode = {"cancel-deconstruct", "trees"},
			selection_cursor_box_type = "not-allowed",
			alt_selection_cursor_box_type = "not-allowed"
		},

		{
			type = "recipe",
			name = "tree-deconstructor",
			energy_required = 1,
			ingredients =
			{
				{"advanced-circuit", 1}
			},
			result = "tree-deconstructor",
			enabled = false
		},

		{
			type = "technology",
			name = "tree-deconstructor-tech",
			icon = "__TreeDeconstructor__/graphics/tree-deconstructor-tech.png",
			icon_size = 128,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "tree-deconstructor"
				},
			},
			prerequisites = {"construction-robotics"},
			unit =
			{
				count = 75,
				ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1},
					{"science-pack-3", 1},
				},
				time = 30
			},
			order = "c-k-b-b",
		},
	}
)
