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
    -- README: UNCOMMENT WHICHEVER ALERT YOU WANNA USE UNLESS YOU USE A DIFFERENT ALERT SYSTEM
    --TriggerServerEvent('police:server:policeAlert', 'Sign being stolen') -- Default QBCore Dispatch
    --exports['ps-dispatch']:SignRobbery() -- ps-dispatch
end

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end

--Events
RegisterNetEvent("qb-signrobbery:client:StopSign", function(data)
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
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "stopsign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:WalkingManSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Pedestrian Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 1502931467}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "walkingmansign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:DontBlockIntersectionSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Intersection Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 1191039009}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "dontblockintersectionsign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:UTurnSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing U Turn Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 4138610559}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "uturnsign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:NoParkingSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing No Parking Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 3830972543}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "noparkingsign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:LeftTurnSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Left Turn Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 2643325436}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "leftturnsign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:RightTurnSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Right Turn Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 793482617}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "rightturnsign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:NoTrespassingSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing No Trespassing Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 1021214550}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "notrespassingsign")
    end
end)

RegisterNetEvent("qb-signrobbery:client:YieldSign", function(data)
    local seconds = math.random(9,12)
    local circles = math.random(1,3)
    local ped = PlayerPedId()
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Progressbar("robbing_sign", "Stealing Yield Sign..", math.random(5000, 7000), false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, function()
        end, function()
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = 3654973172}
            TriggerServerEvent("qb-signrobbery:server:delete", object)
            AlertCops()
        end, "yieldsign")
    end
end)

--Emote Events
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

RegisterNetEvent("qb-signrobbery:use:NoParkingSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"noparkingsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
    
end)

RegisterNetEvent("qb-signrobbery:use:LeftTurnSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"leftturnsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
    
end)

RegisterNetEvent("qb-signrobbery:use:RightTurnSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"rightturnsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
    
end)

RegisterNetEvent("qb-signrobbery:use:NoTrespassingSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"notrespassingsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
    
end)

RegisterNetEvent("qb-signrobbery:use:YieldSign", function(src)
    if not holdingSign then
        holdingSign = true
        TriggerEvent('animations:client:EmoteCommandStart', {"yieldsign"})
    else
        holdingSign = false
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
    
end)

--Deleting The Sign Event
RegisterNetEvent("signrobbery:client:delete", function(object)
    objects[#objects+1] = {coords = object.coords, model = object.model}
    local ent = GetClosestObjectOfType(object.coords.x, object.coords.y, object.coords.z, 0.1, object.model, false, false, false)
    if DoesEntityExist(ent) then
        SetEntityAsMissionEntity(ent, 1, 1)
        DeleteObject(ent)
        SetEntityAsNoLongerNeeded(ent)
    end
end)

--Target Exports
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

    exports['qb-target']:AddTargetModel('prop_sign_road_04a', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:NoParkingSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })

    exports['qb-target']:AddTargetModel('prop_sign_road_05e', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:LeftTurnSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })

    exports['qb-target']:AddTargetModel('prop_sign_road_05f', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:RightTurnSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })

    exports['qb-target']:AddTargetModel('prop_sign_road_restriction_10', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:NoTrespassingSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })

    exports['qb-target']:AddTargetModel('prop_sign_road_02a', {
        options = {
            {
                type = 'client',
                event = "qb-signrobbery:client:YieldSign",
                icon = 'fas fa-user-secret',
                label = 'Steal Sign',
            }
        },
        distance = 4.0, 
    })
end)

--Sell Animation
RegisterNetEvent('SignRobbery:TradeAnim', function(data)
	local pid = PlayerPedId()
	loadAnimDict("mp_common")
	TriggerServerEvent('SignRobbery:TradeItems', data)
	TaskPlayAnim(pid, "mp_common", "givetake2_a", 100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
    Wait(1500)
    holdingSign = false
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    StopAnimTask(pid, "mp_common", "givetake2_a", 1.0)
    RemoveAnimDict("mp_common")
end)

--Sign Robbery To Scrap Material Event
RegisterNetEvent('SignRobbery:Trade:Menu', function()
    exports['qb-menu']:openMenu({
		{ header = "Sign Scrapping", txt = "Trade Signs for Materials", isMenuHeader = true },
		{ header = "Stop Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 1 } },
		{ header = "Walking Man Signs",  txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 2 } },
        { header = "Don't Block Intersections Signs",  txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 3 } },
        { header = "U Turn Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 4 } },
        { header = "No Parking Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 5 } },
        { header = "Turn Left Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 6 } },
        { header = "Turn Right Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 7 } },
        { header = "No Trespassing Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 8 } },
        { header = "Yield Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 8 } },
        { header = "", txt = "❌ Close", params = { event = "SignRobbery:CloseMenu" } },
    })
end)

RegisterNetEvent("SignRobbery:CloseMenu", function() exports['qb-menu']:closeMenu() end)

--Export For Scrapping The Sign
exports['qb-target']:AddBoxZone("SignRobberyScrap", vector3(2332.43, 3026.89, 48.15), 1.5, 1, {
	name = "SignRobberyScrap",
	heading = 270,
	debugPoly = false,
	minZ = 44.35,
	maxZ = 48.35,
}, {
	options = {
		{
            type = "client",
            event = "SignRobbery:Trade:Menu",
			icon = "fas fa-recycle",
			label = "Scrap Sign",
		},
	},
	distance = 2.5
})

CreateThread(function()
    while true do
        for k = 1, #objects, 1 do
            v = objects[k]
            local ent = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 0.1, v.model, false, false, false)
            if DoesEntityExist(ent) then
                SetEntityAsMissionEntity(ent, 1, 1)
                DeleteObject(ent)
                SetEntityAsNoLongerNeeded(ent)
            end
        end
        Wait(1000)
    end
end)
