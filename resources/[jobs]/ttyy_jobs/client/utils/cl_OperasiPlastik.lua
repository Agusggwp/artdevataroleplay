local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX                           = nil
local GUI                     = {}
GUI.Time                      = 0
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local HasPayed                = false

CreateThread(function()

	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

end)

--- EVENT UNTUK NON TARGET ---
function OpenMenuOplas()
	HasPayed = false

	local config = {
		ped = true,
		headBlend = true,
		faceFeatures = true,
		headOverlays = true,
		components = false,
		props = false
	}

	exports['fivem-appearance']:startPlayerCustomization(function (appearance)
		if (appearance) then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
				title = _U('valid_this_purchase'),
				align = 'top-left',
				elements = {
					{label = _U('yes'), value = 'yes'},
					{label = _U('no'), value = 'no'},
				}
			}, function(data, menu)
				menu.close()
		
				if data.current.value == 'yes' then
					ESX.TriggerServerCallback('esx_plasticsurgery:checkMoney', function(hasEnoughMoney)
						if hasEnoughMoney then
							TriggerServerEvent('fivem-appearance:save', appearance)
							TriggerServerEvent('esx_plasticsurgery:pay')
							HasPayed = true
						else
							TriggerEvent('esx_skin:getLastSkin', function(skin)
								TriggerEvent('skinchanger:loadSkin', skin)
							end)
							error(_U('not_enough_money'))
						end
					end)
				end
		
				if data.current.value == 'no' then
					TriggerEvent('esx_skin:getLastSkin', function(skin)
						TriggerEvent('skinchanger:loadSkin', skin)
					end)
				end
		
				CurrentAction     = 'shop_menu'
				CurrentActionMsg  = _U('press_access')
				CurrentActionData = {}
			end,function(data, menu)
				menu.close()
				CurrentAction     = 'shop_menu'
				CurrentActionMsg  = _U('press_access')
				CurrentActionData = {}
			end)
		end
	end, config)
end

AddEventHandler('esx_plasticsurgery:hasEnteredMarker', function(zone)
	CurrentAction     = 'shop_menu'
	CurrentActionMsg  = _U('press_access')
	CurrentActionData = {}
end)

AddEventHandler('esx_plasticsurgery:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil

	if not HasPayed then
		TriggerEvent('esx_skin:getLastSkin', function(skin)
			TriggerEvent('skinchanger:loadSkin', skin)
		end)
	end

end)

--- EVENT UNTUK MENGGUNAKAN TARGET ---
if Cfg_Oplas.Target then
	AddEventHandler('ttyy_oplas:Oplas', function()
		ESX.TriggerServerCallback('ttyy_oplas:getItemAmount', function(quantity)
			if quantity > 0 then
				TriggerServerEvent('ttyy_oplas:hapustiket', tiket)
				OpenMenuOplas()
			else
				error('Anda Tidak Memiliki Tiket Oplas')
			end          
		end, 'tiketoplas')
	end)
end

exports.qtarget:AddBoxZone('oplas', vector3(334.42, -574.46, 43.28), 3.2, 2.8, {
	name="oplas",
	heading=340,
	--debugPoly=true,
	minZ=41.28,
	maxZ=45.28
	}, {
		options = {
			{
				event = "ttyy_oplas:Oplas",
				icon = "far fas fa-tshirt",
				label = "Oplas",
			},
		},
		distance = 3.0
	})