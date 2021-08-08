--Doge miner


if game.PlaceId == 6542731310 then

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("BerryHub") -- Creates the window

local b = w:CreateFolder("main")-- Creates the folder(U will put here your buttons,etc)

local g = w:CreateFolder("misc")

local o = w:CreateFolder("credits")

o:Label("Credits: BerryGod",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Sell (Over 240)",function()


local args = {
    [1] = "Exchange",
    [2] = {
        ["Rate"] = 240
    }
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer(unpack(args))

end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    if bool then 
        local args = {
    [1] = "Exchange",
    [2] = {
        ["Rate"] = 247
    }
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer(unpack(args))
end
end)
    
    
    g:Slider("Sell Settings",{
    min = 10; -- min value of the slider
    max = 200; -- max value of the slider
    precise = true; -- max 2 decimals
},function(Rater)
end)

g:Slider("WalkSpeed",{
    min = 10; -- min value of the slider
    max = 200; -- max value of the slider
    precise = true; -- max 2 decimals
},function(Walk)
   hum = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
   hum.WalkSpeed = (Walk)
end)

g:Slider("JumpPower",{
    min = 10; -- min value of the slider
    max = 200; -- max value of the slider
    precise = true; -- max 2 decimals
},function(Jump)
   hum = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
   hum.JumpPower = (Jump)
end)


b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)





b:DestroyGui()
end

--TOH

if game.PlaceId == 1962086868 then

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("BerryHub") -- Creates the window

local b = w:CreateFolder("Tower Of Hell") -- Creates the folder(U will put here your buttons,etc)



b:Button("delete kill parts",function()
 for i,v in pairs(game:GetService("Workspace").tower:GetDescendants()) do
    if v:IsA("BoolValue") and v.Name == "kills" then
        v.Parent:Destroy()
    end
end
end)



b:Button("Insta win",function()
    wait(10)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.finishes:GetChildren()[1].CFrame
end)
b:Label("Wait 10 sec",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 



b:Slider("Slider",{
    min = 50; -- min value of the slider
    max = 300; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
end)

b:Slider("Slider",{
    min = 50; -- min value of the slider
    max = 300; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)


b:DestroyGui()
end

-- Legends of Speed

if game.PlaceId == 3101667897 then

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("BerryHub") -- Creates the window

local b = w:CreateFolder("Legends of speed") -- Creates the folder(U will put here your buttons,etc)



b:Button("Gem Farm",function()
    for i=1, 1000 do
     local A_1 = "collectOrb"
local A_2 = "Gem"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
end
end)

b:Button("Step Farm",function()
    for i=1, 7500 do
     local A_1 = "collectOrb"
local A_2 = "Red Orb"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
end
end)


b:Button("5x LUCK",function()
    print("Get scammed boyz")
end)

b:Button("Hoops Farm",function()
    local children = workspace.Hoops:GetChildren()
for i, child in ipairs(children) do
    if child.Name == "Hoop" then
child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end    
end
end)


b:DestroyGui()
end

if game.PlaceId == 6284583030 then

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("A") -- Creates the window

local b = w:CreateFolder("B") -- Creates the folder(U will put here your buttons,etc)

b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Unlock All Gamepass",function()
    local gmppath = require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Gamepasses"])
gmppath.Owns = function() return true end
end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    AutoFarm = bool
end)


b:Slider("Slider",{
    min = 50; -- min value of the slider
    max = 500; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)







b:DestroyGui()
end

spawn(function()
    if AutoFarm == true then
        getgenv().speed=150

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do v:Disable() 
end
end
end)
