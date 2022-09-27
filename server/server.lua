ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('awaken_ranking:coords', function(src, cb)
	cb(Config.Box)
end)


RegisterCommand("delbox", function()
	for k, v in pairs(Config.Box) do 
		print('Delete Box : '..v.crateObj)
		if pcall(DeleteEntity,v.crateObj) then
			DeleteEntity(v.crateObj)
		else
			print("Can't Find The Box : "..v.crateObj)
		end
	end
end, false)

-- RegisterCommand("getbox", function(source, args)
-- 	TriggerClientEvent('awaken_ranking:getbox',-1)
-- end, true)

RegisterNetEvent('awaken_ranking:server:delbox')
AddEventHandler('awaken_ranking:server:delbox', function(coord)
	TriggerClientEvent('awaken_ranking:deletebox',-1,coord)
	print(coord)
end)

RegisterNetEvent('awaken_ranking:server:deletebox')
AddEventHandler('awaken_ranking:server:deletebox', function(coord)
	for k,v in pairs(Config.Box[coord]) do
		if pcall(DeleteEntity,v) then
			print("Delete Box Last : "..v)
			DeleteEntity(v)
			Config.Box[coord] = nil
		else
			print("Can't Find The Box : "..v)
		end
	end
end)

RegisterNetEvent('awaken_ranking:server:createbox')
AddEventHandler('awaken_ranking:server:createbox', function(coord)
	local crateHash = GetHashKey('imp_prop_impexp_cargo_01')
	local crateObj = CreateObject(crateHash, coord, true, true)
	FreezeEntityPosition(crateObj, true)
	Config.Box[coord] = {crateObj = crateObj}
	print("Create Box : "..crateObj)
end)

RegisterNetEvent('awaken_ranking:server:firstdelete')
AddEventHandler('awaken_ranking:server:firstdelete', function(coord)
	if Config.Box[coord] == nil then
		print("Can't Find The Box")
	else
		for k, v in pairs(Config.Box[coord]) do 
			if pcall(DeleteEntity,v) then
				print('Delete Box : '..v)
				DeleteEntity(v)
				Config.Box[coord] = nil
			else
				print("Can't Find The Box : "..v)
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
	  Citizen.Wait(180000)
	  for i, crate in pairs(Config.Map.crates) do
		local coordsBox = vector3(crate.x, crate.y, crate.z)
		TriggerEvent('awaken_ranking:server:firstdelete',coordsBox)
	  end
	  Citizen.Wait(0)
	  for i, crate in pairs(Config.Map.crates) do
		local coordsBox = vector3(crate.x, crate.y, crate.z)
		TriggerEvent('awaken_ranking:server:createbox', coordsBox)
	  end
	  exports.nc_notify:PushNotification(-1, {
		title = 'Supply Box Refill',  
		type = 'warning',  
		position = 'bottom',  
		direction = 'right',  
		color = '#000000',  
		bgColor = '#006eff', 
		duration = 10000  
		})
	end
end)


RegisterNetEvent('awaken_ranking:server:storedItem')
AddEventHandler('awaken_ranking:server:storedItem', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local random = math.random(1,100)
    for k, v in pairs(Config.SupplyInCrate) do
		if random >= 0 and random <= 10 then
			xPlayer.addInventoryItem("fixkitforesport", math.random(1,2))
			return
		elseif random >= 11 and random <= 21 then
			xPlayer.addInventoryItem("aedforesport", math.random(1,3))
			return
		elseif random >= 21 and random <= 100 then
			xPlayer.addInventoryItem("painkillerforesport", math.random(15,20))
			return
		end
    end 
end)

RegisterNetEvent('awaken_ranking:server:selectWeapon')
AddEventHandler('awaken_ranking:server:selectWeapon', function(weapon,pos)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	MySQL.Async.fetchScalar('SELECT weaponforranking FROM users WHERE identifier=@identifier', {
		['@identifier']   = xPlayer.identifier
	}, function(resultadorecebeu)
		if resultadorecebeu == 0 then
             MySQL.Sync.execute("UPDATE users SET weaponforranking=1 WHERE identifier=@identifier", 
				{   ['@identifier']   = xPlayer.identifier,	}
			)
		end
	end)

	MySQL.Async.execute('UPDATE awaken_ranking SET count = (count - 1) WHERE WEAPON = @weapon AND house = @house', {
		['@weapon'] = weapon,
		['@house']   = pos
	},function()	
	end)


	SetPlayerWeapon(_source, weapon)
end)


ESX.RegisterServerCallback("awaken_ranking:server:getcountweapon", function(source,cb,index)
    local _source = source
	MySQL.Async.fetchAll('SELECT house,weapon,count FROM awaken_ranking WHERE house = @index ', {
		['@index']   = index
	}, function(result)	
		cb(result)
	end)
end)

ESX.RegisterServerCallback('awaken_ranking:CheckonSql', function (source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	MySQL.Async.fetchScalar('SELECT weaponforranking FROM users WHERE identifier=@identifier', {
		['@identifier']   = xPlayer.identifier
	}, function(check)
		cb(check)
	end)
end)



function SetPlayerWeapon(source, weapon)
    local xPlayer = ESX.GetPlayerFromId(source)
    local ammo = 0

    xPlayer.addWeapon(weapon, ammo)
	xPlayer.addInventoryItem('painkillerforesport', 15)
	xPlayer.addInventoryItem('aedforesport', 5)

    Wait(5000)
    if not xPlayer.hasWeapon(weapon) then
        xPlayer.addWeapon(weapon, ammo)
    end
end

RegisterNetEvent('awaken_ranking:returnitem')
AddEventHandler('awaken_ranking:returnitem', function()
	local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeWeapon('WEAPON_POOLCUERANKING')
	xPlayer.removeWeapon('WEAPON_BOTTLERANKING')
	xPlayer.removeWeapon('WEAPON_KNUCKLERANKING')
	xPlayer.removeWeapon('WEAPON_MACHETERANKING')
	xPlayer.setInventoryItem('painkillerforesport', 0)
	xPlayer.setInventoryItem('aedforesport', 0)
	xPlayer.setInventoryItem('fixkitforesport', 0)

end)