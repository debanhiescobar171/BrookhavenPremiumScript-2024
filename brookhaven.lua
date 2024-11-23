local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BROOKHAVEN PREMIUM SCRIPT 2024", "DarkTheme")

-- MAIN
local Main = Window:NewTab("Principal")
local MainSection = Main:NewSection("Funciones Premium")

MainSection:NewButton("Admin Commands", "Comandos de administrador", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewToggle("Super-Velocidad", "Corre muy rápido", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

MainSection:NewToggle("Super-Salto", "Salta muy alto", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

-- EXTRAS
local Extra = Window:NewTab("Extras")
local ExtraSection = Extra:NewSection("Funciones Extra")

ExtraSection:NewButton("Fly GUI V3", "Te permite volar", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt'))()
end)

ExtraSection:NewButton("Noclip", "Atraviesa paredes", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/MaksBloxX/NoClipScript/main/Noclip'))()
end)

ExtraSection:NewButton("Infinite Jump", "Salto infinito", function()
    local InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)
