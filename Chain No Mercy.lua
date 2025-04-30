
loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Chain No Mercy",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local MainTab = GUI:Tab{
	Name = "New Tab",
	Icon = "rbxassetid://6594776225"
}
MainTab:Button{
	Name = "Infinite Stamina 🏃",
	Description = "Gives INF Stamnia"
	Callback = function() 
    while true do 
            task.wait(1)
            game.Players.LocalPLayer.Character.Stats:FindFirstChild("Stamnia").Value = 100
    end
}
    local combatToggle
MainTab:Toggle{
    Name = "Infinite Combat Stamina ⚔️",
    StartingState = false,
    Description = "Gives Infinite Combat Stamina",
    Callback = function(state)
   while true do
	task.wait(0.5)
	game.Players.LocalPlayer.Character.Stats:FindFirstChild("CombatStamina").Value = 100
if combatStaminaToggle == false then
					break
				end
			end
		elseif combatStaminaToggle == true then
			combatStaminaToggle = false
}
        MainTab:Button{
	Name = "Auto Collect Scrap ⚙️ ",
	Description = "Automaticly Collects Scrap From All Around Map",
	Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/BongCloudMaster/CHAIN/main/scrapcollector.lua"))()
end

GUI:Notification{
	Title = "Collecting Scrap",
	Text = "Wait.. Collecting Scrap, If stop you can move.",
	Duration = 3,
	Callback = function() end
}
            local TeleportTab = GUI:Tab{
    Name = "🌀 Teleports 🌀",
    Icon = "rbxassetid://10382429808"
}

TeleportTab:Button{
    Name = "Small Cabin 🏠",
    Description = nil,
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.680023, -94.2610092, 230.036407, 0.999293089, -1.40679939e-08, 0.0375940055, 1.348163e-08, 1, 1.58507891e-08, -0.0375940055, -1.53327555e-08, 0.999293089)
    end
}

TeleportTab:Button{
    Name = "Storage Shed",
    Description = nil,
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-324.801575, -88.6199799, 290.675598, 0.451050401, 1.02070366e-07, -0.892498493, -2.45230627e-08, 1, 1.01971303e-07, 0.892498493, -2.41073987e-08, 0.451050401)
    end
}

TeleportTab:Button{
    Name = "Warehouse",
    Description = nil,
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(314.623566, -113.515549, -258.481567, 0.99898839, 1.88050908e-08, -0.0449683107, -1.91088674e-08, 1, -6.32548991e-09, 0.0449683107, 7.17838455e-09, 0.99898839)
    end
}
    TeleportTab:Button{
	Name = "Shop Location",
	Description = "Teleports to Shop"
	Callback = function() 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-111.376678, -87.2069778, 203.522934, -0.851789057, -5.88233995e-08, 0.523884892, -1.06661249e-08, 1, 9.49409156e-08, -0.523884892, 3281811e-08, -0.851789057)        
        end
}
 TeleportTab:Button{
	Name = "Workshop",
	Description = "Teleports to Workshop"
	Callback = function() 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169.560654, -103.651337, -30.0143433, 0.262320459, 1.83968858e-08, -0.964980841, 9.02348959e-11, 1, 1.90890379e-08, 0.964980841, -5.09452036e-09, 0.262320459)
        end
}
local AmmoTab = GUI:Tab{
    Name = "💥Ammo💥",
    Icon = "rbxassetid://13488840422"
}
    AmmoTab:Button{
	Name = "INF M1911 Ammo",
	Description = "Gives INF M1911 Ammo"
	Callback = function() 
    game.Players.LocalPlayer.Character.Items.M1911:SetAttribute("Ammo", 30)
    end
}
        AmmoTab:Button{
	Name = "INF Double Barrel Ammo",
	Description = "Gives INF Double Barrel Ammo"
	Callback = function() 
    game.Players.LocalPlayer.Character.Items.DoubleBarrel:SetAttribute("Ammo", 30)
    end
}    
