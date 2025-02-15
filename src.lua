local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Silent Hub | RivalsđŸ¤«đŸ¤«", HidePremium = false, SaveConfig = true, ConfigFolder = "Skibidi"})

local chams = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Chams-Highlight/refs/heads/main/Highlight.lua"))()

local aimTab = Window:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = aimTab:AddSection({
	Name = "Aim Settings"
})

local rsa = aimTab:AddButton({
	Name = "Silent Aim",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Yizziii/RSA-Roblox/refs/heads/main/RSA.lua')))()
  	end    
})


local espTab = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = espTab:AddSection({
	Name = "Visuals Settings"
})

espTab:AddToggle({
	Name = "Chams",
	Default = false,
	Callback = function(Value)
		getgenv().chams.enabled = Value
	end    
})


espTab:AddColorpicker({
	Name = "Chams Outline Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		getgenv().chams.outlineColor = Value
	end	  
})

espTab:AddColorpicker({
	Name = "Chams Fill Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		getgenv().chams.fillColor = Value
	end	  
})


espTab:AddSlider({
	Name = "Chams FillTransparency",
	Min = 0,
	Max = 5,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "I love Bananas",
	Callback = function(Value)
		getgenv().chams.fillTransparency = Value
	end    
})

local plrTab = Window:MakeTab({
	Name = "Self",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = plrTab:AddSection({
	Name = "Players Settings"
})
