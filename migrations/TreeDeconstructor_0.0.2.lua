-- The alien-artifact-deconstructor recipe was added to the tree-deconstructor technology:
for _, force in pairs(game.forces) do 
	if (force.technologies["tree-deconstructor-tech"].researched) then 
		force.recipes["alien-artifact-deconstructor"].enabled = true
	end
end
