-- control.lua

-- Implements the logic for the newly-added item





--- Mark all loot near to each player for deconstruction, every few ticks:
script.on_event(defines.events.on_player_selected_area,
	function(a_Event)
		-- Only process the TreeDeconstructor-related selections:
		if (a_Event.item ~= "tree-deconstructor") then
			return
		end

		-- Deconstruct trees in the selected area:
		local force = game.players[a_Event.player_index].force
		for _, entity in ipairs(a_Event.entities) do
			if (entity.type == "tree") then
				entity.order_deconstruction(force)
			end
		end  -- for entity
	end
)
