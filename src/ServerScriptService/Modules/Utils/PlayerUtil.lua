local PlayerUtil = {}

local Players = game:GetService("Players")

local function IsFriendsWith(PlayerA: Player, PlayerB: Player)
    return PlayerA:IsFriendsWith(PlayerB.UserId)
end

function PlayerUtil:GetFriendsInServer(Player: Player)
    local FriendsList: {number} = {}

    for _, CurrentPlayer: Player in Players:GetPlayers() do
        local Success, Result = pcall(IsFriendsWith, Player, CurrentPlayer)
        if Success and Result and not table.find(FriendsList, CurrentPlayer.UserId) then
            table.insert(FriendsList, CurrentPlayer.UserId)
        end
    end

    return FriendsList
end

function PlayerUtil:GetPlayersQuantity()
    return #Players:GetPlayers()
end

return PlayerUtil