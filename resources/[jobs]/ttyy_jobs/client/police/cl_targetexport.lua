exports.qtarget:AddBoxZone('bosspol', vector3(468.48, -981.68, 26.72), 2, 2, {
    name="bosspol",
    heading=0,
    --debugPoly=true,
    minZ=24.72,
    maxZ=28.72
    }, {
        options = {
            {
                event = "policeboss",
                icon = "far fas fa-tshirt",
                label = "Employee Management",
                job = {
                    ["police"] = 15,
                }
            },
        },
        distance = 3.0
    })
exports.qtarget:AddBoxZone('policeveh', vector3(437.36, -991.68, 25.8), 1, 1.2, {
    name="policeveh",
    heading=270,
    --debugPoly=true,
    minZ=23.8,
    maxZ=27.8
    }, {
        options = {
            {
                event = "ttyy-police:openvehmenu",
                icon = "far fas fa-tshirt",
                label = "Vehicle Spawner",
                job = {
                    ["police"] = 0,
                }
            },
        },
        distance = 3.0
    })
exports.qtarget:AddBoxZone('helipolice', vector3(464.64, -982.39, 43.69), 1, 1.8, {
    name="helipolice",
    heading=270,
    --debugPoly=true,
    minZ=41.69,
    maxZ=45.69
    }, {
        options = {
            {
                event = "ttyy-police:opengeki",
                icon = "far fas fa-tshirt",
                label = "Helicopter Spawner",
                job = {
                    ["police"] = 0,
                }
            },
        },
        distance = 3.0
    })


    exports.qtarget:Player({
        options = {
            {
                event = "bixbi_prison:Prison",
                icon = "fas fa-house-user",
                label = "[PD] Prison",
                job = "police",
                canInteract = function(entity)
                    if IsPedAPlayer(entity) then
                        local targetId = GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity))
                        return (not IsPedDeadOrDying(entity, 1))
                    end
                end
            },
        },
        distance = 3.0
    })