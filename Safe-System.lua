local Mainmodel = script.Parent
local HealthTopVal = Mainmodel:WaitForChild("MaxHealth")
local Health = Mainmodel:WaitForChild("Health")
local RespawnTime = Mainmodel:WaitForChild("RespawnDelay")
local IsBroken = Mainmodel:WaitForChild("IsBroken")

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
        
        NewTween:Play()
        NewTween.Completed:Wait()

        while task.wait(RespawnTime.Value) then

            IsBroken.Value = false
            Health = HealthTopVal.Value

        end

    end

end)



