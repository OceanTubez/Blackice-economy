-- map

local tool = script.Parent

local extendedmap = tool:WaitForChild("ExtendedMap")
local foldedMap = tool:WaitForChild("Handle")

local equipanim = tool:WaitForChild("EquipAnimation")
local idleanim = tool:WaitForChild("IdleAnimation")

local highlights = {}

tool.Equipped:Connect(function()

    extendedmap.Transparency = 1
    foldedmap.Transparency = 0

    local char = tool.Parent
    local humanoid = char:WaitForChild("Humanoid")
        
    local idleanim = humanoid:LoadAnimation(idleanim)

    local loadanim = humanoid:LoadAnimation(equipanim)
    loadanim:Play()
    
    loadanim:GetMarkerReachedSignal("OpenMap"):Connect(function()

        foldedmap.Transparency = 1
        extendedmap.Transparency = 0

    end)

    loadanim.Stopped:Wait()
    
    idleanim:Play()

    local safes = game:GetService("Workspace"):WaitForChild("Locations"):WaitForChild("Safes"):GetChildren()
    
    for i, safe in ipairs(safes) do
        
        if safe.IsBroken.Value == true then

            local newhigh = Instance.new("Highlight")
            newhigh.FillColor = Color3.fromRGB(0, 234, 242)
            newhigh.OutlineColor = Color3.fromRGB(122, 245, 61)

            newhigh.Parent = safe
            highlights[i] = newhigh

        else

            local newhigh = Instance.new("Highlight")
            newhigh.FillColor = Color3.fromRGB(247, 39, 2)
            newhigh.OutlineColor = Color3.fromRGB(122, 245, 61)

            newhigh.Parent = safe
            highlights[i] = newhigh

        end
    
    end
    
    
end)

tool.Unequipped:Connect(function()

    for i, highlight in ipairs(highlights) do

        highlight:Destroy()

    end

end)


