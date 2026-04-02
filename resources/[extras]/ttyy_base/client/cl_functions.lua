AddEventHandler('esx:onPlayerSpawn', function()
	local playerPed = cache.ped
	if GetEntityHealth(playerPed) ~=  200 then
		SetEntityMaxHealth(playerPed, 200)
		SetEntityHealth(playerPed, 200)
	end
end)

function DrawText2D(x, y, z, text)
	SetDrawOrigin(x, y, z)
	SetTextScale(0.25, 0.25)
	SetTextFont(4)
	SetTextEntry('STRING')
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(0.0, 0.0)
	DrawRect(0.0, 0.0125, 0.02 + text:gsub('~.-~', ''):len() / 360, 0.03, 10, 10, 10, 140)
	ClearDrawOrigin()
end
exports('DrawText2D', DrawText2D)

function DrawText3D(coords, text)
	SetDrawOrigin(coords)
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextEntry('STRING')
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(0.0, 0.0)
	DrawRect(0.0, 0.0125, 0.02 + text:gsub('~.-~', ''):len() / 360, 0.03, 25, 25, 25, 140)
	ClearDrawOrigin()
end
exports('DrawText3D', DrawText3D)

function playAnim(ped, animDict, animName, duration, emoteMoving, playbackRate)
	local movingType = 49
	if (emoteMoving == nil) then 
		movingType = 49
	elseif (emoteMoving == false) then
		movingType = 0
	end

    lib.requestAnimDict(animDict)
	local playbackSpeed = playbackRate or 0
	TaskPlayAnim(ped, animDict, animName, 2.0, 2.0, duration, movingType, playbackSpeed, false, false, false)
    RemoveAnimDict(animDict)
end
exports('playAnim', playAnim)

function addProp(ped, prop1, bone, off1, off2, off3, rot1, rot2, rot3, timer)
	local x,y,z = table.unpack(GetEntityCoords(ped))
	if not HasModelLoaded(prop1) then LoadPropDict(prop1) end
  
	prop = CreateObject(GetHashKey(prop1), x, y, z+0.2,  true,  true, true)
	AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
	SetModelAsNoLongerNeeded(prop1)
	Wait(timer)
	DeleteEntity(prop)
end
exports('addProp', addProp)

function itemCount(item)
	if (Config.OxInventory) then
		return exports.ox_inventory:Search(2, item)
	end
end
exports('itemCount', itemCount)


--- clothing system
AddEventHandler('ox-core:SetClothing', function(Type, Drawable, Texture)
    local playerPed = cache.ped
    Type = string.lower(Type)

    if (Type == 'hat') then -- head
        exports['fivem-appearance']:setPedProp(playerPed, { prop_id = 0, drawable = Drawable, texture = Texture })
    elseif (Type == 'glasses') then -- glasses
        exports['fivem-appearance']:setPedProp(playerPed, { prop_id = 1, drawable = Drawable, texture = Texture })
    elseif (Type == 'mask') then -- masks
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 1, drawable = Drawable, texture = Texture })
    elseif (Type == 'jacket') then -- tops
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 11, drawable = Drawable, texture = Texture })
    elseif (Type == 'chain') then -- accessories
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 7, drawable = Drawable, texture = Texture })
    elseif (Type == 'arm') then -- torso
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 3, drawable = Drawable, texture = Texture })
    elseif (Type == 'shirt') then -- undershirt
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 8, drawable = Drawable, texture = Texture })
    elseif (Type == 'pants') then -- legs
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 4, drawable = Drawable, texture = Texture })
    elseif (Type == 'shoes') then -- shoes
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 6, drawable = Drawable, texture = Texture })
    elseif (Type == 'armour') then -- body armors
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 9, drawable = Drawable, texture = Texture })
	elseif (Type == 'bag') then -- bag
        exports['fivem-appearance']:setPedComponent(playerPed, { component_id = 5, drawable = Drawable, texture = Texture })
    end
end)