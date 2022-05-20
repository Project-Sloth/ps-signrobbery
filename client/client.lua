local QBCore = exports['qb-core']:GetCoreObject()
local objects = {}
local holdingSign = false

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('qb-signrobbery:server:GetObjects', function(incObjects)
        objects = incObjects
    end)
end)

--Functions
local function AlertCops()
    --- Default QBCore Dispatch
    ----------------------------------------------------------------------
    --TriggerServerEvent('police:server:policeAlert', 'Sign being stolen')
    ----------------------------------------------------------------------
    -- Will add qb-dispatch (Project Sloth) later
end

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end

--Events
RegisterNetEvent("qb-signrobbery:client:StopSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Stop Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(ped)
            local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 2.0, -949234773, false, false, false)
            SetEntityAsMissionEntity(obj, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(obj)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end)
    end
end)

RegisterNetEvent("qb-signrobbery:client:WalkingManSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Pedestrian Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(ped)
            local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 2.0, 1502931467, false, false, false)
            SetEntityAsMissionEntity(obj, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(obj)
            local object = {coords = coords, model = 1502931467}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end)
    end
end)

RegisterNetEvent("qb-signrobbery:client:DontBlockIntersectionSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        local coords = GetEntityCoords(ped)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Intersection Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(ped)
            local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 2.0, 1191039009, false, false, false)
            SetEntityAsMissionEntity(obj, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(obj)
            local object = {coords = coords, model = 1191039009}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end)
    end
end)

RegisterNetEvent("qb-signrobbery:client:UTurnSign", function()
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        QBCore.Functions.Progressbar("robbing_sign", "Stealing U Turn Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(ped)
            local obj = GetClosestObjectOfType(coords.x, coords.y, coords.z, 2.0, 4138610559, false, false, false)
            SetEntityAsMissionEntity(obj, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(obj)
            local object = {coords = coords, model = 4138610559}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end)
    end
end)

RegisterNetEvent("qb-signrobbery:use:StopSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"stopsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
end)

RegisterNetEvent("qb-signrobbery:use:WalkingManSign", function(src) 
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"walkingmansign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
end)

RegisterNetEvent("qb-signrobbery:use:DontBlockIntersectionSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"dontblockintersectionsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
end)

RegisterNetEvent("qb-signrobbery:use:UturnSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"uturnsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
    
end)

RegisterNetEvent("signrobbery:client:delete", function(object)
    print("Recieved object", object.coords, object.model)
    objects[#objects+1] = {coords = object.coords, model = object.model}
    local ent = GetClosestObjectOfType(object.coords.x, object.coords.y, object.coords.z, 2.0, object.model, false, false, false)
    if DoesEntityExist(ent) then
        SetEntityAsMissionEntity(ent, 1, 1)
        DeleteObject(ent)
        SetEntityAsNoLongerNeeded(ent)
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

CreateThread(function()
    while true do
        for k = 1, #objects, 1 do
            v = objects[k]
            local ent = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 2.0, v.model, false, false, false)
            if DoesEntityExist(ent) then
                SetEntityAsMissionEntity(ent, 1, 1)
                DeleteObject(ent)
                SetEntityAsNoLongerNeeded(ent)
            end
        end
        Wait(1000)
    end
end)