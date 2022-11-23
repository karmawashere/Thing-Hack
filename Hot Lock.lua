_G.TargetAim = {
    ["Key"] = "q",
    ["Mode"] = "Toggle", -- "Toggle" or "Hold"
    ["Prediction"] = 0.12831, -- Lower if Lower Ping, Higher if Higher Ping
    ["Auto-Prediction"] = false,
    ["Aimpart"] = "HumanoidRootPart",
    ["Face-Target"] = false,
    ["Notif-Toggle"] = false,
    ["Chat-Toggle"] = false,
    ["View-Toggle"] = false,
    ["Resolver-V1"] = false,
    ["Resolver-Delay"] = 0.195,
    ["Resolver-Aimpart"] = "HumanoidRootPart",
    ["Resolver-AntiSky"] = false,
    ["Resolver-AntiGround"] = false,
    ["Resolver-Reverse"] = false,
    ["Orbit-Toggle"] = false,
    ["Orbit-Speed"] = 8,
    ["Orbit-Size"] = 8,
    ["Orbit-Height"] = 0, -- No Negatives
    ["Vertical-Velocity-Toggle"] = false,
    ["Vertical-Velocity"] = 0,
    ["Horizontal-Velocity-Toggle"] = false,
    ["Horizontal-Velocity"] = 0,
    ["Onshot-Visual"] = false,
    ["Onshot-Visual-Color"] = Color3.fromRGB(0, 0, 139),
    ["Onshot-Visual-Material"] = "ForceField", -- "Plastic", "ForceField", "Neon"
    ["Onshot-Visual-Life"] = 1, -- Seconds
    ["Onshot-Sound"] = false,
    ["Onshot-Sound-Sound"] = 12413331,
    ["Check-For-Part"] = "HumanoidRootPart",
    ["FOV-Check"] = true,
    ["FOV-Check-Color"] = Color3.fromRGB(0, 0, 139),
    ["FOV-Size"] = 100,
    ["Circle-Thickness"] = 2, 
    ["Filled-Circle"] = true,
    ["Circle-Transparency"] = 0.5, --Invisible
    ["Visible-Check"] = true,
    ["Down-Check"] = true, -- For Hood Customs and Untitled Hood
    ["Dot"] = true,
    ["Dot-Color"] = Color3.fromRGB(0, 0, 139),
    ["Tracer"] = true,
    ["Tracer-Color"] = Color3.fromRGB(0, 0, 139),
    ["Highlight"] = false,
    ["Highlight-Color"] = Color3.fromRGB(255,255,255),
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/Standalones/SilentAim", true))()
local Target = Victim
game:GetService("RunService").heartbeat:Connect(function()
    for i,v in pairs(game.Players:GetPlayers()) do
        Target = v.Name 
        if Target ~= game.Players.LocalPlayer.Name then
        vel = game.Players[Target].Character.HumanoidRootPart.Velocity
        game.Players[Target].Character.HumanoidRootPart.Velocity = Vector3.new(0, -0, 0)
    end
    end
end) 
