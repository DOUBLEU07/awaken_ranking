ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
end)

RegisterNUICallback('selectWeapon', function(data)
    local weapon = data.weapon
    local pos = data.pos
    local count_poolcue = data.count_poolcue
    local count_machete = data.count_machete
    local count_bottle = data.count_bottle
    local count_knuckle = data.count_knuckle

    if (count_poolcue <= 0) and weapon == 'WEAPON_POOLCUERANKING' then
        SetNuiFocus(false, false)
    elseif (count_machete <= 0) and weapon == 'WEAPON_MACHETERANKING' then
        SetNuiFocus(false, false)
    elseif (count_bottle <= 0) and weapon == 'WEAPON_BOTTLERANKING' then
        SetNuiFocus(false, false)
    elseif (count_knuckle <= 0) and weapon == 'WEAPON_KNUCKLERANKING' then
        SetNuiFocus(false, false)
    else
        TriggerServerEvent('awaken_ranking:server:selectWeapon', weapon, pos)
        SetNuiFocus(false, false)
    end
end)

RegisterNUICallback('focusoff', function()

    SetNuiFocus(false, false)

end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData.job = xPlayer.job
end)

local revive = true
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        PlayerData = ESX.GetPlayerData()
        for i = 1, #Config.Center, 1 do
            local Center = Config.Center[i]
            local distanceDie = GetDistanceBetweenCoords(coords, Center, true) < 600
            if distanceDie and IsEntityDead(PlayerPedId()) and revive then
                revive = false
                TriggerEvent("mythic_progbar:client:ProgressForDead", {
                    name = "unique_action_name",
                    duration = 90 * 1000,
                    label = " กำลังกลับไปเกิด . . .",
                    useWhileDead = true,
                    canCancel = false,

                    controlDisables = {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true
                    }

                }, function(status)
                    if not status then
                        print('Revive')
                        if PlayerData.job ~= nil and PlayerData.job.name == "cs" then
                            print('Chaser Player')
                            SetEntityCoords(playerPed, Config.ChaserBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                        elseif PlayerData.job ~= nil and PlayerData.job.name == "atf" then
                            print('Antifake Player')
                            SetEntityCoords(playerPed, Config.ANTIFAKEBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                        elseif PlayerData.job ~= nil and PlayerData.job.name == "xz" then
                            print('XZEANT Player')
                            SetEntityCoords(playerPed, Config.XZEANTBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                        elseif PlayerData.job ~= nil and PlayerData.job.name == "mds" then
                            print('MADISUS Player')
                            SetEntityCoords(playerPed, Config.MadisusBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                        elseif PlayerData.job ~= nil and PlayerData.job.name == "awd" then
                            print('Ashwinder Player')
                            SetEntityCoords(playerPed, Config.AshwinderBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                        elseif PlayerData.job ~= nil and PlayerData.job.name == "cl" then
                            print('Clarice Player')
                            SetEntityCoords(playerPed, Config.ClariceBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                            -- elseif PlayerData.job ~= nil and PlayerData.job.name == "oxy" then
                            --   print('OXYGEN Player')
                            --   SetEntityCoords(playerPed, Config.OxyBase)
                            --   TriggerEvent("Aed:revive")
                            --   revive = true
                        elseif PlayerData.job ~= nil and PlayerData.job.name == "viper" then
                            print('NintyNine Player')
                            SetEntityCoords(playerPed, Config.NintyNineBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                        elseif PlayerData.job ~= nil and PlayerData.job.name == "zy" then
                            print('ZETYHOR Player')
                            SetEntityCoords(playerPed, Config.ZETYHORBase)
                            TriggerEvent("Aed:revive")
                            revive = true
                        else
                            print('Player')
                            SetEntityCoords(playerPed, Config.Hospital)
                            TriggerEvent("Aed:revive")
                            revive = true
                        end
                    end
                end)
                Citizen.Wait(1000)
                revive = true
            end
        end
    end
end)

-- Citizen.CreateThread(function()
--   for k, v in pairs(Config.Blips) do
--     for i = 1, #v.Pos, 1 do
--       RegisterFontFile('font4thai')
--       fontId = RegisterFontId('font4thai')
--       if v.Pos[i].radius == true then
--         local blip = AddBlipForRadius(v.Pos[i].coords, v.Pos[i].Size)
--         SetBlipColour(blip, v.Pos[i].ColorRadius)
--         SetBlipAlpha(blip, v.Pos[i].Alpha)
--       end
--       local blip = AddBlipForCoord(v.Pos[i].coords.x, v.Pos[i].coords.y, v.Pos[i].coords.z)
--       SetBlipHighDetail(blip, true)
--       SetBlipSprite(blip, v.Pos[i].sprite)
--       SetBlipScale(blip, v.Pos[i].scale or 0.6)
--       SetBlipColour(blip, v.Pos[i].color)
--       SetBlipAsShortRange(blip, true)
--       BeginTextCommandSetBlipName("STRING")
--       AddTextComponentString(v.Pos[i].text)
--       EndTextCommandSetBlipName(blip)
--     end
--   end

--   for i, crate in pairs(Config.Map.crates) do
--     local coordsBox = vector3(crate.x, crate.y, crate.z)
--     local blip = AddBlipForCoord(crate.x, crate.y, crate.z)
--     SetBlipSprite(blip, 306)
--     SetBlipDisplay(blip, 4)
--     SetBlipScale(blip, 1.0)
--     SetBlipColour(blip, 0)
--     SetBlipAsShortRange(blip, true)
--     BeginTextCommandSetBlipName('STRING')
--     AddTextComponentString('Supply Box')
--     EndTextCommandSetBlipName(blip)
--   end
-- end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- for key, data in pairs(Config.Draw) do
        --   DrawMarker(28, data.x, data.y, data.z - 15, 0, 0, 0, 0, 0, 0, 600.0, 600.0, 600.0,
        --     100, 0, 0, 100, false, false, 2, false, false,
        --     false, false)
        -- end
        for a, coord in pairs(Config.DeleteItem) do
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            if GetDistanceBetweenCoords(coords, coord.x, coord.y, coord.z, true) < 20.0 then
                DrawMarker(1, coord.x, coord.y, coord.z, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 255, 0, 0, 100, false,
                    false, 2, false, false, false, false)
                if GetDistanceBetweenCoords(coords, coord.x, coord.y, coord.z, true) < 5 then
                    ESX.ShowHelpNotification('Press [E] to Return Item and Weapon')
                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent('awaken_ranking:returnitem')
                    end
                end
            end
        end

        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        for i, j in pairs(Config.Blips) do
            for i = 1, #j.Pos, 1 do
                if GetDistanceBetweenCoords(coords, j.Pos[i].heal, true) < 50.0 and
                    not IsPedInAnyVehicle(PlayerPedId(), false) then
                    rgb = RGBRainbow(1)
                    DrawMarker(1, j.Pos[i].heal, 0, 0, 0, 0, 0, 0, 6.0, 6.0, 1.0, rgb.r, rgb.g, rgb.b, 100, false,
                        false, 2, false, false, false, false)
                    if GetDistanceBetweenCoords(coords, j.Pos[i].heal, true) < 3 then
                        ESX.ShowHelpNotification('Press [E] to heal')
                        if IsControlJustPressed(0, 38) then
                            TriggerEvent("mythic_progbar:client:progress", {
                                name = "unique_action_name",
                                duration = 20000,
                                label = "heal me...",
                                useWhileDead = false,
                                canCancel = true,
                                controlDisables = {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true
                                },
                                animation = {
                                    animDict = "amb@world_human_jog_standing@male@idle_a",
                                    anim = "idle_a"
                                }
                            }, function(status)
                                if not status then
                                    SetEntityHealth(playerPed, 200) ---- ส่วนของการ การเช็ตเลือด 200 = 100% 	
                                end
                            end)
                        end
                    end
                end

            end
        end
    end
end)

-- Citizen.CreateThread(function()
--   while true do
--     Citizen.Wait(0)
--     local playerPed = PlayerPedId()
--     local coords = GetEntityCoords(playerPed)
--     local count_poolcue = 3
--     local count_machete = 3
--     local count_bottle = 3
--     local count_knuckle = 3
--     for i, j in pairs(Config.Blips) do
--       for i = 1, #j.Pos, 1 do
--         if GetDistanceBetweenCoords(coords, j.Pos[i].npc, true) < 50.0 then
--           rgb = RGBRainbow(1)
--           DrawMarker(2, j.Pos[i].npc, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, rgb.r, rgb.g, rgb.b, 100, true, true, 2, false, false, false, false)
--           if GetDistanceBetweenCoords(coords, j.Pos[i].npc, true) < 3 then
--             ESX.ShowHelpNotification('Press [E] to Select Weapon')
--             if IsControlJustPressed(0, 38) then
--               ESX.TriggerServerCallback('awaken_ranking:CheckonSql', function(check)
--                 if check == 0 then
--                   local index = j.Pos[i].index
--                   ESX.TriggerServerCallback("awaken_ranking:server:getcountweapon", function(result)
--                     for i = 1, #result, 1 do
--                       if result[i].weapon == 'WEAPON_POOLCUERANKING' then
--                         count_poolcue = result[i].count
--                       elseif result[i].weapon == 'WEAPON_MACHETERANKING' then
--                         count_machete = result[i].count
--                       elseif result[i].weapon == 'WEAPON_BOTTLERANKING' then
--                         count_bottle = result[i].count
--                       elseif result[i].weapon == 'WEAPON_KNUCKLERANKING' then
--                         count_knuckle = result[i].count
--                       end
--                     end
--                     SendNUIMessage({
--                       action = 'start-weapon',
--                       pos = j.Pos[i].index,
--                       count_poolcue = count_poolcue,
--                       count_machete = count_machete,
--                       count_bottle = count_bottle,
--                       count_knuckle = count_knuckle
--                     })
--                   end, index)

--                   SetNuiFocus(true, true)
--                 elseif check == 1 then
--                   TriggerEvent("pNotify:SendNotification", {
--                     text = '<strong class="green-text">คุณได้เลือกอาวุธไปแล้ว</strong>',
--                     type = "error",
--                     timeout = 3000,
--                     layout = "bottomCenter",
--                     queue = "global"
--                   })
--                 end
--               end)
--             end
--           end
--         end
--       end
--     end
--   end
-- end)

function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

-- -- -- RegisterCommand("delbox", function(source, args)
-- -- -- 	TriggerEvent('awaken_ranking:client:deletebox')
-- -- --   Citizen.Wait(1000)
-- -- -- end, false)

RegisterNetEvent('awaken_ranking:deletebox')
AddEventHandler('awaken_ranking:deletebox', function(coord)
    ESX.TriggerServerCallback('awaken_ranking:coords', function(Box)
        Config.Box = Box
        for k, v in pairs(Config.Box[coord]) do
            print("Delete Box : " .. v)
            TriggerServerEvent('awaken_ranking:server:deletebox', coord, v)
        end
    end)
end)

-- -- -- countObj = {}

-- -- -- RegisterNetEvent('awaken_ranking:getbox')
-- -- -- AddEventHandler('awaken_ranking:getbox', function()
-- -- --   while true do
-- -- --     Citizen.Wait(0)
-- -- --     local pedCoords = GetEntityCoords(PlayerPedId())
-- -- --     local object    = GetClosestObjectOfType(pedCoords, 1000.0, GetHashKey("imp_prop_impexp_cargo_01"), false, false, false)
-- -- --     local objCoords = GetEntityCoords(object)
-- -- --     local distance  = GetDistanceBetweenCoords(pedCoords, objCoords, true) < 2
-- -- --     table.insert(countObj, object)
-- -- --     for i = 1,#countObj do
-- -- --       print(i)
-- -- --       print(countObj[i])
-- -- --       TriggerServerEvent('awaken_ranking:server:deletebox',countObj[i])
-- -- --       if i == 0 then
-- -- --         break
-- -- --       end
-- -- --     end
-- -- --   end
-- -- -- end)

-- -- -- Citizen.CreateThread(function()
-- -- --   while true do
-- -- --     Citizen.Wait(29999)
-- -- --     for i, crate in pairs(Config.Map.crates) do
-- -- --       local coordsBox = vector3(crate.x, crate.y, crate.z)
-- -- --       local blip = AddBlipForCoord(crate.x, crate.y, crate.z)
-- -- --       SetBlipSprite(blip, 306)
-- -- --       SetBlipDisplay(blip, 4)
-- -- --       SetBlipScale(blip, 1.0)
-- -- --       SetBlipColour(blip, 0)
-- -- --       SetBlipAsShortRange(blip, true)
-- -- --       BeginTextCommandSetBlipName('STRING')
-- -- --       AddTextComponentString('Crate')
-- -- --       EndTextCommandSetBlipName(blip)
-- -- --     end
-- -- --   end
-- -- -- end)

-- Citizen.CreateThread(function()
--   while true do
--     Citizen.Wait(0)
--     local pedCoords = GetEntityCoords(PlayerPedId())
--     local object    = GetClosestObjectOfType(pedCoords, 5.0, GetHashKey("imp_prop_impexp_cargo_01"), false, false, false)
--     local objCoords = GetEntityCoords(object)
--     local distance  = GetDistanceBetweenCoords(pedCoords, objCoords, true) < 2
--     if distance and not IsPedInAnyVehicle(PlayerPedId(), false) then
--       ESX.ShowHelpNotification(Config.Notification['store_crate'])
--       if IsControlJustReleased(0, 38) then
--         local result = exports.nc_minigames:Minigame('bar', {
--           text = 'กำลังเก็บทรัพยากร',
--           speed = 1.0,
--           success = 3,
--           failed = 2,
--           position = 'bottom',
--           sound = true
--         })
--         Citizen.Wait(500)
--         if result then
--           TriggerEvent("mythic_progbar:client:progress", {
--             name = "unique_action_name",
--             duration = 5000,
--             label = " กำลังเก็บ . . .",
--             useWhileDead = false,
--             canCancel = true,

--             controlDisables = {
--               disableMovement = true,
--               disableCarMovement = true,
--               disableMouse = false,
--               disableCombat = true
--             },

--             animation = {
--               animDict = nil,
--               anim = nil,
--               flags = 0,
--               task = 'PROP_HUMAN_BUM_BIN',
--             }

--           }, function(status)
--             if not status then
--               ClearPedTasksImmediately(PlayerPedId())
--               local pedCoords = GetEntityCoords(PlayerPedId())
--               local object    = GetClosestObjectOfType(pedCoords, 2.0, GetHashKey("imp_prop_impexp_cargo_01"), false, false, false)
--               local objCoords = GetEntityCoords(object)
--               local distance  = GetDistanceBetweenCoords(pedCoords, objCoords, true) < 2
--               if distance then
--                 TriggerServerEvent('awaken_ranking:server:storedItem')
--                   for i, crate in pairs(Config.Map.crates) do
--                     local pedCoords = GetEntityCoords(PlayerPedId())
--                     local coordsBox = vector3(crate.x, crate.y, crate.z)
--                     if distance and GetDistanceBetweenCoords(pedCoords, coordsBox, true) < 2 then
--                       TriggerServerEvent('awaken_ranking:server:deletebox', coordsBox)
--                     end
--                   end
--               else
--                 TriggerEvent("pNotify:SendNotification", {
--                   text = 'มีคนเก็บไปแล้ว หรือ อยู่ไกลจากล่องเกินไป',
--                   type = 'error',
--                   timeout = 3000,
--                   layout = "centerLeft",
--                   queue = "global"
--                 })
--               end
--             end
--           end)
--         end
--       end
--     end
--   end
-- end)

