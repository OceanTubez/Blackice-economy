local module = {}

local animations = {

  ["Bleed"] = "L_BOZO"

}

local sounds = {

  ["Bleed"] = "L_BOZO_LOOOOOL"

}

-- module.animations and module.sounds will be base module
-- Module.Gas() function will also be in the base module

module.Bleed = function(char : Model, dmgpersec : IntValue, totaltime : IntValue, walkspeed : IntValue)

    local human = char:WaitForChild("Humanoid")
    
    local sound = Instance.new("Sound")
    sound.SoundId = sounds["Bleed"]
    sound.Parent = char:WaitForChild("HumanoidRootPart")

    local animation = Instance.new("Animation")
    animation.AnimationId = animations["Bleed"]

    while task.wait(1) and totaltime >= 1 do
        
        sound:PLay()
        totaltime -= 1
        human.WalkSpeed = walkspeed
        human.Health -= dmgpersec
  
    end

end)

return module
