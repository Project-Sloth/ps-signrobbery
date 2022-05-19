local QBCore = exports['qb-core']:GetCoreObject()

--Deleting The Sign Client Side--
local netObj = ObjToNet(object)
TriggerServerEvent("signrobbery:server:delete", netObj)

--Events For Robbing The Signs --
RegisterNetEvent("stopsign:client:Target")
AddEventHandler("stopsign:client:Target", function()
    local coords = GetEntityCoords(PlayerPedId())
    local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, -949234773, false, false, false)
    SetEntityAsMissionEntity(obj, true, true)
    loadAnimDict("amb@prop_human_bum_bin@base")
    TaskPlayAnim(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    QBCore.Functions.Progressbar("robbing_sign", "Stealing Stop Sign..", math.random(5000, 7000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, function()
    end, function()
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 1.0)
        TriggerServerEvent("stopsign:server:additem")
        DeleteEntity(obj)
    end)
end)

RegisterNetEvent("walkingmansign:client:Target")
AddEventHandler("walkingmansign:client:Target", function()
    local coords = GetEntityCoords(PlayerPedId())
    local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, 1502931467, false, false, false)
    SetEntityAsMissionEntity(obj, true, true)
    loadAnimDict("amb@prop_human_bum_bin@base")
    TaskPlayAnim(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    QBCore.Functions.Progressbar("robbing_sign", "Stealing Pedestrian Sign..", math.random(5000, 7000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, function()
    end, function()
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 1.0)
        TriggerServerEvent("walkingmansign:server:additem")
        DeleteEntity(obj)
    end)
end)

RegisterNetEvent("dontblockintersectionsign:client:Target")
AddEventHandler("dontblockintersectionsign:client:Target", function()
    local coords = GetEntityCoords(PlayerPedId())
    local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, 1191039009, false, false, false)
    SetEntityAsMissionEntity(obj, true, true)
    loadAnimDict("amb@prop_human_bum_bin@base")
    TaskPlayAnim(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    QBCore.Functions.Progressbar("robbing_sign", "Stealing Intersection Sign..", math.random(5000, 7000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, function()
    end, function()
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 1.0)
        TriggerServerEvent("dontblockintersectionsign:server:additem")
        DeleteEntity(obj)
    end)
end)

RegisterNetEvent("uturnsign:client:Target")
AddEventHandler("uturnsign:client:Target", function()
    local coords = GetEntityCoords(PlayerPedId())
    local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, 4138610559, false, false, false)
    SetEntityAsMissionEntity(obj, true, true)
    loadAnimDict("amb@prop_human_bum_bin@base")
    TaskPlayAnim(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    QBCore.Functions.Progressbar("robbing_sign", "Stealing U Turn Sign..", math.random(5000, 7000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, function()
    end, function()
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 1.0)
        TriggerServerEvent("uturnsign:server:additem")
        DeleteEntity(obj)
    end)
end)

function loadAnimDict(dict)
    while(not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end
