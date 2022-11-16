local module = {}

function module.SpawnItem(Item : Instance, Value : String)
  
  local newitem = Item:Clone()
  newitem.Parent = game:GetService("Workspace")
  newitem:WaitForChild("Display"):WaitForChild("TextDisplay").Text = Value
  
  return newitem  
  
end

return module
