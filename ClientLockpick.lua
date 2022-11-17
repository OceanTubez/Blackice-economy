-- localscript inside the tool

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local tool = script.Parent
local LockpickRE = tool:WaitForChild("LockpickRE")

tool.Activated:Connect(function()

  local targetedpart = mouse.Target

  LockpickRE:FireServer(targetedpart)

end)
