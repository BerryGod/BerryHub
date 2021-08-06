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

-- Bedwars
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("A") -- Creates the window

local b = w:CreateFolder("B") -- Creates the folder(U will put here your buttons,etc)

b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Button",function()
    print("Elym Winning")
end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Slider("Slider",{
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    print(value)
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGui()
end
