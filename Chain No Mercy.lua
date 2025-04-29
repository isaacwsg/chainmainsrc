local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "⚔️Chain No Mercy⚔️",
    Size = UDim2.fromOffset(600, 400),
Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local Tab = GUI:Tab{
    Name = "Main",
    Icon = "rbxassetid://8569322835"
}

local staminaToggle
Tab:Toggle{
    Name = "Infinite Stamina 🏃",
    StartingState = false,
    Description = "Gives Infinite Stamina!",
    Callback = function(state)
        if state then
            staminaToggle = game:GetService("RunService").Heartbeat:Connect(function()
                local player = game.Players.LocalPlayer
                local char = player.Character
                if char and char:FindFirstChild("Stats") and char.Stats:FindFirstChild("Stamina") then
                    char.Stats.Stamina.Value = 100
                end
            end)
        elseif staminaToggle then
            staminaToggle:Disconnect()
        end
    end
}

local combatToggle
Tab:Toggle{
    Name = "Infinite Combat Stamina ⚔️",
    StartingState = false,
    Description = "Gives Infinite Combat Stamina",
    Callback = function(state)
        if state then
            combatToggle = game:GetService("RunService").Heartbeat:Connect(function()
                local player = game.Players.LocalPlayer
                local char = player.Character
                if char and char:FindFirstChild("Stats") and char.Stats:FindFirstChild("CombatStamina") then
                    char.Stats.CombatStamina.Value = 100
                end
            end)
        elseif combatToggle then
            combatToggle:Disconnect()
        end
    end
}


local TeleportTab = GUI:Tab{
    Name = "🌀 Teleports 🌀",
    Icon = "rbxassetid://8569322835"
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
