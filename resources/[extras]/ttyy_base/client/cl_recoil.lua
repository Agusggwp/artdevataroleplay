local recoils = {
	[453432689] = 0.1, -- PISTOL
	[3219281620] = 0.1, -- PISTOL MK2
	[-2084633992] = 0.1, -- CARBINE RIFLE
	[-86904375] = 0.1, -- CARBINE RIFLE MK2	
	[1593441988] = 0.1, -- COMBAT PISTOL
	[-1045183535] = 0.1, -- revolver
	[2578377531] = 0.1, -- PISTOL .50
	[-1746263880] = 0.1, -- double action


	[584646201] = 0.1, -- AP PISTOL
	[324215364] = 0.1, -- MICRO SMG
	[736523883] = 0.1, -- SMG
	[2024373456] = 0.1, -- SMG MK2
	[4024951519] = 0.1, -- ASSAULT SMG
	[3220176749] = 0.1, -- ASSAULT RIFLE
	[961495388] = 0.1, -- ASSAULT RIFLE MK2
	[-1357824103] = 0.1, --ADVANCED RIFLE
}

CreateThread(function()
	while true do
		Wait(2)
        local ped = cache.ped
		if IsPedShooting(ped) and not IsPedDoingDriveby(ped) then
			local _,wep = GetCurrentPedWeapon(ped)
			_,cAmmo = GetAmmoInClip(ped, wep)
			if recoils[wep] and recoils[wep] ~= 0 then
				tv = 0
				if GetFollowPedCamViewMode() ~= 4 then
					repeat 
						Wait(0)
						p = GetGameplayCamRelativePitch()
						SetGameplayCamRelativePitch(p+0.1, 0.2)
						tv = tv+0.1
					until tv >= recoils[wep]
				else
					repeat 
						Wait(0)
						p = GetGameplayCamRelativePitch()
						if recoils[wep] > 0.1 then
							SetGameplayCamRelativePitch(p+0.6, 1.2)
							tv = tv+0.6
						else
							SetGameplayCamRelativePitch(p+0.016, 0.333)
							tv = tv+0.1
						end
					until tv >= recoils[wep]
				end
			end
		else
			Wait(100)
		end
	end
end)

CreateThread(function()
	while true do
		local isShooting = false
		local ped = cache.ped
		local weapon = GetSelectedPedWeapon(ped)

		-- Shakycam

		if weapon == `WEAPON_CARBINERIFLE_MK2` then			
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.001)
			end
			isShooting = true
		end

		if weapon == `WEAPON_CARBINERIFLE` then	
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.001)
			end
			isShooting = true
		end

		if weapon == `WEAPON_ASSAULTRIFLE` then	
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.001)
			end
			isShooting = true
		end

		if weapon == `WEAPON_ADVANCEDRIFLE` then	
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.085)
			end
			isShooting = true
		end

		if weapon == `WEAPON_PISTOL` then		
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.125)
			end
			isShooting = true
		end
		if weapon == `WEAPON_PISTOL_MK2` then		
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.500)
			end
			isShooting = true
		end

		if weapon == `WEAPON_COMBATPISTOL` then		
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.125)
			end
			isShooting = true
		end

		if weapon == `WEAPON_REVOLVER` then		
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.350)
			end
			isShooting = true
		end

		if weapon == `WEAPON_DOUBLEACTION` then		
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.350)
			end
			isShooting = true
		end

		if weapon == `WEAPON_PISTOL50` then		
			if IsPedShooting(ped) then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.001)
			end
			isShooting = true
		end
		if not isShooting then
			Wait(1000)
		end
		Wait(5)
	end
end)