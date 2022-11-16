local Mainmodel = script.Parent
local HealthTopVal = Mainmodel:WaitForChild("MaxHealth")
local Health = Mainmodel:WaitForChild("Health")
local RespawnTime = Mainmodel:WaitForChild("RespawnDelay")
local IsBroken = Mainmodel:WaitForChild("IsBroken")
local FX = Mainmodel:WaitForChild("FX")

local SPMPenguin = require(game:GetService("ReplicatedStorage"):WaitForChild("GameStuff"):WaitForChild("Modules"):WaitForChild("SPMPenguin"))
local CashMesh = game:GetService("ReplicatedStorage"):WaitForChild("GameStuff"):WaitForChild("ATM"):WaitForChild("CashMesh")

local TweenService = game:GetService("TweenService")

local Tweeninfobruv = TweenInfo.new(
    
    1,
    Enum.EasingStyle.Cubic,
    Enum.EasingDirection.In,
    false,
    0
    
)

local Door = Mainmodel:WaitForChild("Door")

IsBroken.Changed:Connect(function()

    local currentval = IsBroken.Value
    
    if currentval == true then
            
        local NewTween = TweenService:Create(Door, Tweeninfobruv, {Orientation = blahblahblah})
        FX.Enabled = true
            
        NewTween:Play()
        NewTween.Completed:Wait()
        
        local spawningamount = math.random(2,6)
        
        while spawningamount > 0 do

            spawningamount -= 1
            
            SPMPenguin:SpawnItem(CashMesh, math.random(60, 200))

        end

        while task.wait(RespawnTime.Value) then

            IsBroken.Value = false
            Health = HealthTopVal.Value
            local newtween = TweenService:Create(Door, Tweeninfobruv, {Orientation = blahblahblah})
            newtween:Play()
            FX.Enabled = false

        end

    end

end)

