local passengerDriveBy = true

if Config.DisableDriveBy then
	CreateThread(function()
		while true do
			local sleep = 500
			local ped = cache.ped
			local inVehicle = GetVehiclePedIsUsing(ped)
			
			if inVehicle then
				if GetPedInVehicleSeat(car, -1) == ped then
					sleep = 1
					SetPlayerCanDoDriveBy(PlayerId(), false)
				elseif passengerDriveBy then
					SetPlayerCanDoDriveBy(PlayerId(), true)
				else
					SetPlayerCanDoDriveBy(PlayerId(), false)
				end
			end
			Wait(sleep)
		end
	end)
end