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


if game.PlaceId == 6872265039 then
    
    local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

local s = VLib:Window("BERRY HUB", "BedWars", "G")

local ss = s:Tab("Tab 1")

ss:Button("Buy Wool",function(qua)
        getgenv().autoTap = bool
    if bool then
        buyWool();
        end
end)


ss:Toggle("Insta Break",function(bool)
    getgenv().InstaBreak = bool
    if bool then
        buyWool();
        end
    end)


ss:Slider("Speed",0,100,70,function(speed)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)


ss:Dropdown("Dropdown",{"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"},function(t)
print(t)
end)
   
   
ss:Colorpicker("Colorpicker",Color3.fromRGB(255, 1, 1),function(t)
print(t)
    end)

ss:Textbox("Textbox", true,function(t)
print(t)
end)

ss:Label("Label")
s:Tab("Misc")






getgenv().InstaBreak = bool
getgenv().autoTap = bool

 function buyWool()
    spawn(function()
    while getgenv().buyWool == true do

local args = {
    [1] = {
        ["shopItem"] = {
            ["price"] = 8,
            ["currency"] = "iron",
            ["itemType"] = "wool_white",
            ["amount"] = 16
        }
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BedwarsPurchaseItem:InvokeServer(unpack(args))
end
end)
 end
 
function InstaBreak()
    spawn(function()
    while getgenv().InstaBreak == true do
while wait() do
    for i,v in pairs(workspace.Map.Blocks:GetChildren()) do
        v:SetAttribute("Health",0)
    end
end
end
end)
end
end
