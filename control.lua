-- control.lua

-- Implements the logic for the newly-added items





--- Maps the type of the deconstructor to the type of entities it deconstructs
-- If not assigned, will not be handled by this mod at all
local g_EntitiesToDeconstruct =
{
	["tree-deconstructor"] = "tree",
	["alien-artifact-deconstructor"] = "item-entity",
}



--- Maps the type of the deconstructor to the name of stack item in an item-entity it deconstructs
-- If not assigned, doesn't check the stack item name
-- Used to distinguish between the vairous items laying on the ground (alien artifact etc.)
local g_StacksToDeconstruct =
{
	["alien-artifact-deconstructor"] = "alien-artifact",
}





script.on_event(defines.events.on_player_selected_area,
	function(a_Event)
		local entityType = g_EntitiesToDeconstruct[a_Event.item]
		if not(entityType) then
			return
		end
		local stackName = g_StacksToDeconstruct[a_Event.item]

		-- Deconstruct trees in the selected area:
		local force = game.players[a_Event.player_index].force
		for _, entity in ipairs(a_Event.entities) do
			if (
				(entity.type == entityType) and
				(not(stackName) or (stackName == entity.stack.name))
			) then
				entity.order_deconstruction(force)
			end
		end  -- for entity
	end
)
