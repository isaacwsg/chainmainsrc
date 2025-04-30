-- Load Mercury UI Library
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

-- GUI Setup
local GUI = Mercury:Create{
    Name = "Chain No Mercy",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

-- Tabs
local MainTab = GUI:Tab{
    Name = "Main",
    Icon = "rbxassetid://6594776225"
}

-- Infinite Stamina Button (not toggle for now)
MainTab:Button{
    Name = "Infinite Stamina 🏃",
    Description = "Gives INF Stamina",
    Callback = function()
        task.spawn(function()
            while true do
                task.wait(1)
                local player = game.Players.LocalPlayer
                if player and player.Character and player.Character:FindFirstChild("Stats") then
                    local stamina = player.Character.Stats:FindFirstChild("Stamina") or player.Character.Stats:FindFirstChild("Stamnia") -- typo fallback
                    if stamina then
                        stamina.Value = 100
                    end
                end
            end
        end)
    end
}

-- Infinite Combat Stamina Toggle
local combatStaminaToggle = false
MainTab:Toggle{
    Name = "Infinite Combat Stamina ⚔️",
    StartingState = false,
    Description = "Gives Infinite Combat Stamina",
    Callback = function(state)
        combatStaminaToggle = state
        if state then
            task.spawn(function()
                while combatStaminaToggle do
                    task.wait(0.5)
                    local player = game.Players.LocalPlayer
                    if player and player.Character and player.Character:FindFirstChild("Stats") then
                        local cs = player.Character.Stats:FindFirstChild("CombatStamina")
                        if cs then
                            cs.Value = 100
                        end
                    end
                end
            end)
        end
    end
}

-- Auto Collect Scrap
MainTab:Button{
    Name = "Auto Collect Scrap ⚙️",
    Description = "Automatically Collects Scrap From All Around Map",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BongCloudMaster/CHAIN/main/scrapcollector.lua"))()
    end
}

-- Notification
GUI:Notification{
    Title = "Collecting Scrap",
    Text = "Wait.. Collecting Scrap, If stop you can move.",
    Duration = 3,
    Callback = function() end
}
local blueprintToggle = false

MainTab:Toggle{
    Name = "Unlock All Blueprints 🔓",
    StartingState = false,
    Description = "Unlocks every available blueprint",
    Callback = function(state)
        blueprintToggle = state
        if state then
            task.spawn(function()
                while blueprintToggle do
                    task.wait(1)
                    local player = game.Players.LocalPlayer
                    local stats = player:FindFirstChild("PlayerStats")
                    if stats then
                        local bp = stats:FindFirstChild("Blueprints")
                        if bp then
                            -- Set all attributes to true
                            for attrName, _ in pairs(bp:GetAttributes()) do
                                bp:SetAttribute(attrName, true)
                            end
                            -- Set all BoolValue children to true
                            for _, obj in pairs(bp:GetChildren()) do
                                if obj:IsA("BoolValue") then
                                    obj.Value = true
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
}

-- Teleports
local TeleportTab = GUI:Tab{
    Name = "🌀 Teleports 🌀",
    Icon = "rbxassetid://10382429808"
}

local function tp(cframe)
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        hrp.CFrame = cframe
    end
end

TeleportTab:Button{
    Name = "Small Cabin 🏠",
    Callback = function()
        tp(CFrame.new(162.68, -94.26, 230.03))
    end
}

TeleportTab:Button{
    Name = "Storage Shed",
    Callback = function()
        tp(CFrame.new(-324.8, -88.62, 290.67))
    end
}

TeleportTab:Button{
    Name = "Warehouse",
    Callback = function()
        tp(CFrame.new(314.62, -113.51, -258.48))
    end
}

TeleportTab:Button{
    Name = "Shop Location",
    Description = "Teleports to Shop",
    Callback = function()
        tp(CFrame.new(-111.376, -87.206, 203.523))
    end
}

TeleportTab:Button{
    Name = "Workshop",
    Description = "Teleports to Workshop",
    Callback = function()
        tp(CFrame.new(169.561, -103.651, -30.014))
    end
}

-- Ammo Tab
local AmmoTab = GUI:Tab{
    Name = "💥Ammo💥",
    Icon = "rbxassetid://13488840422"
}

AmmoTab:Button{
    Name = "INF M1911 Ammo",
    Description = "Gives INF M1911 Ammo",
    Callback = function()
        local m1911 = game.Players.LocalPlayer.Character:FindFirstChild("Items") and game.Players.LocalPlayer.Character.Items:FindFirstChild("M1911")
        if m1911 then
            m1911:SetAttribute("Ammo", 30)
        end
    end
}

AmmoTab:Button{
    Name = "INF Double Barrel Ammo",
    Description = "Gives INF Double Barrel Ammo",
    Callback = function()
        local db = game.Players.LocalPlayer.Character:FindFirstChild("Items") and game.Players.LocalPlayer.Character.Items:FindFirstChild("DoubleBarrel")
        if db then
            db:SetAttribute("Ammo", 30)
        end
    end
}
