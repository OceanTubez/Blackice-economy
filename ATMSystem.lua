-- Server Script
local Prompt = script.Parent

local ShowATMRE = game:GetService("ReplicatedStorage"):WaitForChild("GameStuff"):WaitForChild("Remote"):WaitForChild("ATMSystem")

Prompt.Triggered:Connect(function(plr)
    
   ShowATMRE:FireClient(plr)
   
   local ForceFLD = Instance.new("ForceField")
   ForceFLD.Parent = plr.Character
   
        
end)

ShowATMRE.OnServerEvent:Connect(function(plr)

    plr.Character:FindFirstChild("ForceField"):Destroy()

end)
