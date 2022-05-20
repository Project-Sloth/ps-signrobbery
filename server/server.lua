local QBCore = exports['qb-core']:GetCoreObject()
local objects = {}

QBCore.Functions.CreateCallback("qb-signrobbery:server:GetObjects", function(source, cb)
    cb(objects)
end)

RegisterNetEvent('qb-signrobbery:server:delete')
AddEventHandler('qb-signrobbery:server:delete', function(object)
    local src = source
    local sourceCoords = GetEntityCoords(GetPlayerPed(src))
    if #(sourceCoords - object.coords) < 4 then
        local Player = QBCore.Functions.GetPlayer(tonumber(src))
        objects[#objects+1] = {coords = object.coords, model = object.model}
        TriggerClientEvent("signrobbery:client:delete", -1, object)
        if object.model == -949234773 then
            Player.Functions.AddItem("stopsign", 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stopsign'], "add")
        elseif object.model == 1502931467 then
            Player.Functions.AddItem("walkingmansign", 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['walkingmansign'], "add")
        elseif object.model == 1191039009 then
            Player.Functions.AddItem("dontblockintersectionsign", 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['dontblockintersectionsign'], "add")
        elseif object.model == -156356737 then
            Player.Functions.AddItem("uturnsign", 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['uturnsign'], "add")
        end
    end
end)

---------------------
--- Usable Signs ----
---------------------
QBCore.Functions.CreateUseableItem("stopsign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:StopSign', src, item)
end)

QBCore.Functions.CreateUseableItem("walkingmansign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:WalkingManSign', src, item)
end)

QBCore.Functions.CreateUseableItem("dontblockintersectionsign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:DontBlockIntersectionSign', src, item)
end)

QBCore.Functions.CreateUseableItem("uturnsign", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('qb-signrobbery:use:UturnSign', src, item)
end)
