-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

Config = {}

Config.checkForUpdates = true -- Check for Updates?

Config.Elevators = {
    PillboxElevatorNorth = { -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vector3(-664.24, 326.04, 78.12), -- Coords, if you're new; last number is heading
            heading = 356.36, -- Heading of how will spawn on floor
            title = 'Floor Basement', -- Title 
            description = 'Basement', -- Description
            target = { -- Target length/width
                width = 5,
                length = 4
            },
        },

        [2] = {
            coords = vector3(-664.24, 326.04, 83.08), -- Coords, if you're new; last number is heading
            heading = 350.04,
            title = 'Floor 1',
            description = 'Lantai 1',
            target = {
            width = 5,
            length = 4
            }-- Example without group
        },

        [3] = {
            coords = vector3(-664.36, 326.12, 88.0), -- Coords, if you're new; last number is heading
            heading = 354.6,
            title = 'Floor 2',
            description = 'Lantai 2',
            target = {
            width = 5,
            length = 4
            } -- Example without group
        },

        [4] = {
            coords = vector3(-664.36, 326.16, 92.76), -- Coords, if you're new; last number is heading
            heading = 356.36,
            title = 'Floor 3',
            description = 'Lantai 3',
            target = {
            width = 5,
            length = 4
            } -- Example without group
        },

    },
}