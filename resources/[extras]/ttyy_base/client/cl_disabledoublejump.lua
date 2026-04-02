-- double jump 
local resetcounter = 0
local jumpDisabled = false

CreateThread( function()
  	while true do 
    	Wait(100)  
		if jumpDisabled and resetcounter > 0 and IsPedJumping(cache.ped) then
			SetPedToRagdoll(cache.ped, 1000, 1000, 3, 0, 0, 0)
			resetcounter = 0
		end

		if not jumpDisabled and IsPedJumping(cache.ped) then
			jumpDisabled = true
			resetcounter = 10
			Wait(1200)
		end

		if resetcounter > 0 then
			resetcounter = resetcounter - 1
		else
			if jumpDisabled then
				resetcounter = 0
				jumpDisabled = false
			end
		end
	end
end)