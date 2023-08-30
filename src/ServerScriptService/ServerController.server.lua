local ModulesContainer = {}
local Modules = script.Parent.Modules

local Players = game:GetService("Players")

for _, Module in Modules.Utils:GetChildren() do
    ModulesContainer[Module.Name] = require(Module)
end

print(ModulesContainer.MathUtil:Sum(2, 1, 10, 2103))
print(ModulesContainer.MathUtil:Multiply(2, 5, 6, 10))
print(ModulesContainer.MathUtil:Minus(100, 5, 7, 8))
print(ModulesContainer.MathUtil:Divide(10, 5))
print(ModulesContainer.MathUtil:Square(121, 2))
print(ModulesContainer.MathUtil:Mod(26, 4))

print(ModulesContainer.StringUtil:ToUpperCase("thomas"))
print(ModulesContainer.StringUtil:ToLowerCase("THOMAS"))
print(ModulesContainer.StringUtil:GetLength("Thomas"))
print(ModulesContainer.StringUtil:trim("   thomas    "))

local function OnPlayerAdded(Player: Player)
    local FriendsList = ModulesContainer.PlayerUtil:GetFriendsInServer(Player)

    print("[" .. Player.Name .. "]: ", "Total Players: " ..  ModulesContainer.PlayerUtil:GetPlayersQuantity(),
    "Friends In Server: " .. #FriendsList)
    
    for _, ID in FriendsList do print(ID) end
end

for _, Player: Player in Players:GetPlayers() do OnPlayerAdded(Player) end
Players.PlayerAdded:Connect(OnPlayerAdded)