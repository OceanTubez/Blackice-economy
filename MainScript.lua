-- should be in the lockpick
local tool = script.Parent

local tries = tool:WaitForChild("Tries")
local LockpickRE = tool:WaitForChild("LockpickRE")

local highlights = {}

tool.Equipped:Connect(function()

    local allsafes = game:GetService("Workspace"):WaitForChild("Locations"):WaitForChild("Safes")

    local char = tool.Parent
    local HRP = char:WaitForChild("HumanoidRootPart")

    while task.Wait(0.5) do

        for i, safe in ipairs(allsafes) do

            if (HRP.Position - safe.Hitbox).Magnitude < 15 then

                local high = Instance.new("Highlight")
                high.FillColor = Color3.fromRGB(0, 218, 242)
                high.OutlineColor = Color3.fromRGB(0, 255, 0)
                high.Parent = safe
                
                highlights[i] = high

            end

        end

    end

end)

tool.UnEquipped:Connect(function()

    for i, highlight in ipairs(highlights) do

        highlight:Destroy()

    end

end)

LockpickRE.OnServerEvent:Connect(function(targetedpart)

    local safes = game:GetService("Workspace"):WaitForChild("Locations"):WaitForChild("Safes"):GetChildren()

    for i, safe in ipairs(safes) do

        if targetedpart.Parent == safe then

            tries -= 1
            safe.Health -= 100

        end

    end

end)
