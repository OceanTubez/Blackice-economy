local CurrencyFolder = game.Players.LocalPlayer:WaitForChild("Currency")
local Cash = CurrencyFolder:WaitForChild("Cash")
local Bank = CurrencyFolder:WaitForChild("Bank")

local CashDisplay = script.Parent:WaitForChild("CashDisp")
local BankDisplay = script.Parent:WaitForChild("BankDisp")

CashDisplay.Text = "$"..Cash.Value
BankDisplay.Text = "$"..Bank.Value

Cash.Changed:Connect(function()
  
  CashDisplay.Text = "$"..Cash.Value
  
end)

Bank.Changed:Connect(function()
  
  BankDisplay.Text = "$"..Bank.Value
  
end)


