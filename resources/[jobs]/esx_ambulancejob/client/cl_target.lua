

exports.qtarget:AddBoxZone('bossems', vector3(-673.68, 310.88, 92.76), 1.2, 3.8, {
	name="bossems",
	heading=70,
	--debugPoly=true,
	minZ=90.76,
	maxZ=94.76
	}, {
	options = {
		{
			event = "emsboss",
			icon = "far fas fa-tshirt",
			label = "EMPLOYEE MANAGEMENT",
			job = {
				["ambulance"] = 3,
			}
		},
	},
	distance = 2.0
})

exports.qtarget:Player({
	options = {
		{
			event = "esx_checkdeathcause:emsCheck",
			icon = "fas fa-stethoscope",
			label = "EMS | Periksa",
			job = "ambulance",
			canInteract = function()
				local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
				local closestPlayerPed = GetPlayerPed(closestPlayer)
				if IsPedDeadOrDying(closestPlayerPed, 1) then 
					return true
				else 
					return false
				end 
			end,
		},
	},
	distance = 1.3
})

exports.qtarget:AddBoxZone('emsbawah', vector3(327.39, -603.88, 43.28), 1, 4.6, {
	name="emsbawah",
	heading=340,
	--debugPoly=true,
	minZ=40.88,
	maxZ=44.88
	}, {
	options = {
		{
			event = "liftkeatas",
			icon = "far fas fa-tshirt",
			label = "Naik Ke Atas!",
		},
	},
	distance = 2.0
})

exports.qtarget:AddBoxZone('me', vector3(-665.1882, 327.5461, 140.1227), 1, 3.6, {
    name="me",
	heading=70,
	--debugPoly=true,
	minZ=71.76,
	maxZ=75.76
	}, {
	options = {
		{
			event = "liftkebawah",
			icon = "far fas fa-tshirt",
			label = "Turun Ke Bawah!",
		},
	},
	distance = 2.0
})