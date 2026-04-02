Ziptiess = {}

Ziptiess.ZiptieSpeed = 3 -- 3 seconds
Ziptiess.HandcuffTimer = 10 * 60000 -- 10 minutes.
Ziptiess.ZiptieRemovers = {
	scissors = { -- Name of item.
		timer = 5, -- How long it takes to remove zipties.
		OneTimeUse = false -- Remove after use? or allowed to use again.
	},
	ziptieremover = {
		timer = 3,
		OneTimeUse = false
	}
}
Ziptiess.qtarget = true -- Disable if you don't use qtarget.