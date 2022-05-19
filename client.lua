local QBCore = exports['qb-core']:GetCoreObject()
local netObj = ObjToNet(object)
TriggerServerEvent("signrobbery:server:delete", netObj)

RegisterNetEvent("qb-signrobbery:client:StopSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        local coords = GetEntityCoords(PlayerPedId())
        local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, -949234773, false, false, false)
        print(obj)
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
            TriggerServerEvent("qb-signrobbery:server:StopSign")
            DeleteEntity(obj)
        end)
    end
end)

RegisterNetEvent("qb-signrobbery:client:WalkingManSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        local coords = GetEntityCoords(PlayerPedId())
        local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, 1502931467, false, false, false)
        print(obj)
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
            TriggerServerEvent("qb-signrobbery:server:WalkingManSign")
            DeleteEntity(obj)
        end)
    end
end)

RegisterNetEvent("qb-signrobbery:client:DontBlockIntersectionSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        local coords = GetEntityCoords(PlayerPedId())
        local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, 1191039009, false, false, false)
        print(obj)
        SetEntityAsMissionEntity(obj, true, true)
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        AlertCops()
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Intersection Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 1.0)
            TriggerServerEvent("qb-signrobbery:server:DontBlockIntersectionSign")
            DeleteEntity(obj)
        end)
    end
end)

RegisterNetEvent("qb-signrobbery:client:UTurnSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        local coords = GetEntityCoords(PlayerPedId())
        local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 10.0, 4138610559, false, false, false)
        print(obj)
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
            TriggerServerEvent("qb-signrobbery:server:UTurnSign")
            DeleteEntity(obj)
        end)
    end
end)

CreateThread(function()
    exports['qb-target']:AddTargetModel('prop_sign_road_01a', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:StopSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })
end)

CreateThread(function()
    exports['qb-target']:AddTargetModel('prop_sign_road_05a', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:WalkingManSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })
end)
CreateThread(function()
    exports['qb-target']:AddTargetModel('prop_sign_road_03e', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:DontBlockIntersectionSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })
end)
CreateThread(function()
    exports['qb-target']:AddTargetModel('prop_sign_road_03m', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:UTurnSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })
end)



RegisterNetEvent("qb-signrobbery:use:StopSign", function(src) 
    TriggerEvent('animations:client:EmoteCommandStart', {"stopsign"}) 
end)

RegisterNetEvent("qb-signrobbery:use:WalkingManSign", function(src) 
    TriggerEvent('animations:client:EmoteCommandStart', {"walkingmansign"}) 
end)

RegisterNetEvent("qb-signrobbery:use:DontBlockIntersectionSign", function(src) 
    TriggerEvent('animations:client:EmoteCommandStart', {"dontblockintersectionsign"}) 
end)

RegisterNetEvent("qb-signrobbery:use:UturnSign", function(src) 
    TriggerEvent('animations:client:EmoteCommandStart', {"uturnsign"}) 
end)


function AlertCops()
    --- Default QBCore Dispatch
    ----------------------------------------------------------------------
    --TriggerServerEvent('police:server:policeAlert', 'Sign being stolen')
    ----------------------------------------------------------------------
    -- Will add qb-dispatch (Project Sloth) later
end

function loadAnimDict(dict)
    while(not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end
