local CurrencyFolder = game.Players.LocalPlayer:WaitForChild("Currency")
local Cash = CurrencyFolder:WaitForChild("Cash")
local Bank = CurrencyFolder:WaitForChild("Bank")

local CashDisplay = script.Parent:WaitForChild("CashDisp")
local BankDisplay = script.Parent:WaitForChild("BankDisp")

local BankChange = script.Parent:WaitForChild("BankChangeDisp")
local CashChange = script.Parent:WaitForChild("CashChangeDisp")

CashDisplay.Text = "$"..Cash.Value
BankDisplay.Text = "$"..Bank.Value

function TweenChanger(display, othervalue)
  
  display.Text = othervalue
  local TS = game:GetService("TweenService")
  
  local tweeninfoish = TweenInfo.new(
    
    1,
    Enum.EasingStyle.Cubic,
    Enum.EasingDirection.In,
    0,
    false
    
  )
  
  local tween = TS:Create(display, tweeninfoish, {TextTransperency = 1})
  tween:Play()
  
end)

Cash.Changed:Connect(function(change)
  
  CashDisplay.Text = "$"..Cash.Value
  TweenChanger(CashChange, "+"..change)
  
end)

Bank.Changed:Connect(function(change)
  
  BankDisplay.Text = "$"..Bank.Value
  TweenChanger(BankChange, "-"..change)
  
end)


