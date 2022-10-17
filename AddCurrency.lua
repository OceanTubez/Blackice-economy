local Players = game:GetService("Players")

local amountrange = {700, 1900} -- first one is minimum, second is maximum

local delayer = 5 -- in seconds

Players.PlayerAdded:Connect(function(plr)
    
    local currencyfolder = plr:WaitForChild("Currency")
    local bank = currencyfolder:WaitForChild("Bank")
    
    while task.wait(delayer) do
      
      bank.Value += math.random(amountrange[1], amountrange[2])
      
    end 
    
end) 
