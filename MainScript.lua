-- should be in the lockpick
local tool = script.Parent

local tries = tool:WaitForChild("Tries")

tool.Equipped:Connect(function()

    local allsafes = game:GetService("Workspace"):WaitForChild("Locations"):WaitForChild("Safes")

    local highlights = {}
    
    for i, safe in ipairs(allsafes) do

        local hitbox = safe:WaitForChild("HitBox")
        local highlight = Instance.new("Highlight")
        highlight.FillTransparency = 1
        highlight.Adornee = hitbox
        highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
        highlight.Enabled = true
        highlights[i] = highlight

    end

end)

tool.UnEquipped:Connect(function()

    for i, highlight in ipairs(highlights) do

        highlight:Destroy()

    end

end)
