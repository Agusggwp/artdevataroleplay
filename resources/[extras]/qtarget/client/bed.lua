local Interactables = {
	`v_med_bed1`,
	`v_med_bed2`,
	`v_med_emptybed`,
}

exports.qtarget:AddTargetModel(Interactables, {
    options = {
        {
            event = 'essentials:sleepbed',
            icon = "fas fa-bed",
            label = "Sleep on bed",
        },
    },
    distance = 2.0
})