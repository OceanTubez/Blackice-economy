-- Local Script
local ShowATMRE = game:GetService("ReplicatedStorage"):WaitForChild("GameStuff"):WaitForChild("Remote"):WaitForChild("ATMSystem")

ShowATMRE.OnClientEvent:Connect(function(prompt)
    
    prompt.Enabled = false
    script.Parent:WaitForChild("MainFrame").Visible = true
        
    script.Parent:WaitForChild("MainFrame").Changed:Connect(function()
    
        if script.Parent:WaitForChild("MainFrame").Visible = false then
        
            prompt.Enabled = true
            ShowATMRE:FireServer()

        end
        
    end)
        
end)

