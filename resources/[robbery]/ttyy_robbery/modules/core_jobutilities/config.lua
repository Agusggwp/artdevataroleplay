Config_Core = {

--BLIPS FOR JOB CENTERS
BlipCenterSprite = 498,
BlipCenterColor = 3,
BlipCenterText = 'Job Center',

MarkerSprite = 27,
MarkerColor = {66, 135, 245},
MarkerSize = 1.1,

LocationsJobCenters = { -- If you want you can setup locations to change jobs (Leave without entiries if you dont want locations) (ADDS 0.02 MS)
	{coords = vector3(-267.48895263672,-959.03033447266,31.22313308715), blip = true}
},

--Boss menu locations
BossMenuLocations = {

	{coords = vector3(448.53457641602,-973.14971923828,30.689594268799), job = "police", label = "POLICE"}

},



--Boss menu users by grade name and their permissions
BossMenuUsers = {
	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['chef'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['recruit'] = {canWithdraw = false, canDeposit = true, canHire = false, canRank = false, canFire = false, canBonus = false}
},


DefaultJobsInJobCenter = { -- Jobs that can be added by going to the job center. For icons use https://fontawesome.com/
	
	{job = 'miner', label = "Miner", icon = "fas fa-gem", description = "You mine stuff and get materials you can sell"},
	{job = 'fisherman', label = "Fisherman", icon = "fas fa-fish", description = "Get fish and sell for profit."}

},


Text = {

	['open_jobcenter_ui_hologram'] = '[~b~E~w~] Open Job Center',
	['promoted'] = 'You have been promoted',
	['promoted_other'] = 'You have been promoted in another job!',
	['fired'] = 'You have been fired',
	['fired_other'] = 'You have been fired',
	['hired'] = 'You have been hired',
	['bossmenu_hologram'] = '[~b~E~w~] Open Boss Menu',
	['action_success'] = 'Action successful',
	['action_unsuccessful'] = 'Action unsuccessful',
	['cant_access_bossmenu'] = 'You cant access boss menu',
	['insufficent_balance'] = 'Insufficent balance',
	['bonus_given'] = 'Bonus has been given!',
	['bonus_recieved'] = 'You recieved a bonus! +$'

}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['ttyy_nuipack']:SendAlert('error', msg)

end
