--[[
    hello my friend, made by stern#9792
    game link: https://www.roblox.com/games/9800759618/Amanda-Story
]]

local plr = game:GetService("Players").LocalPlayer;
local repst = game:GetService("ReplicatedStorage");

plr.Character.Humanoid.HealthChanged:Connect(function(newhp)
    local totalhp = math.abs(plr.Character.Humanoid.Health - newhp)
    if totalhp == 0 then
        local events = repst.Events;
        wait(3)
        events.revv:FireServer()
    end
end)
