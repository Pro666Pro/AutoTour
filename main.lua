local GameName = "auto tour win - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "op script fr", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Badge = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local GetBadges = Badge:AddSection({
	Name = "Auto Win"
})

GetBadges:AddToggle({
	Name = "Auto-Enter Tour",
        Default = true,
	Callback = function(Value)
        trap1 = Value
while trap1 == true do
game:GetService("ReplicatedStorage").PromptEvent:FireServer()
game:GetService("ReplicatedStorage").EventAnswered:FireServer()
game:GetService("ReplicatedStorage").EventGameBegin:FireServer()
end
  	end    
})

GetBadges:AddToggle({
	Name = "Auto-Anchor Player",
        Default = true,
	Callback = function(Value)
        trap3 = Value
while trap3 == true do
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end
  	end    
})

GetBadges:AddButton({
	Name = "Un-anchor player",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
  	end    
})
