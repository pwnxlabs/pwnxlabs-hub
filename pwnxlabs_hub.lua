-- // Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // Create Window
local Window = Rayfield:CreateWindow({
  Name = "pwnxlabs | HUB",
  LoadingTitle = "Loading...",
  LoadingSubtitle = "by pwnxlabs",
  Theme = "Default",
})

-- // Create Tab
local Tab = Window:CreateTab("Main")

-- // Create Section
local ScriptsSection = Tab:CreateSection("HUB")

-- // Buttons
Tab:CreateButton({
  Name = "OctoSpy",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Octo-Spy/refs/heads/main/Main.lua", true))()
  end
})

Tab:CreateButton({
  Name = "DexExplorer (NEW)",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
  end
})

Tab:CreateButton({
  Name = "Rejoin",
  Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")

    local player = Players.LocalPlayer
    TeleportService:Teleport(game.PlaceId, player)
  end
})
