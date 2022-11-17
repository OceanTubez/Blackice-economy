-- map

local tool = script.Parent

local extendedmap = tool:WaitForChild("ExtendedMap")
local foldedMap = tool:WaitForChild("Handle")

local equipanim = tool:WaitForChild("EquipAnimation")

tool.Equipped:Connect(function()

    local char = tool.Parent
    local humanoid = char:WaitForChild("Humanoid")

    local loadanim = humanoid:LoadAnimation(equipanim)
    loadanim:Play()
    
    
end)
