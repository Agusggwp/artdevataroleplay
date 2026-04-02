exports['qtarget']:AddBoxZone("ProsesKayu", vector3(342.3677, 4459.6899, 64.7491), 8.0, 30.8, {
    name="ProsesKayu",
    heading=99.5079,
   -- debugPoly=true,
    minZ=61.70,
    maxZ=65.80
}, {
    options = {
        {
        event = "ttyy_jobs:prosesKayu",
        icon = "fas fa-tree",
        label = "Potong Kayu",
        },
    },
    distance = 2.5 
})

exports['qtarget']:AddBoxZone("PackingKayu", vector3(-504.07, 5276.28, 80.61), 5, 5, {
    name="PackingKayu",
    heading=0,
    
--debugPoly=true,
    minZ=77.61,
    maxZ=83.61
}, {
    options = {
        {
        event = "ttyy_jobs:packingKayu",
        icon = "fas fa-tree",
        label = "Packing Kayu",
        },
    },
    distance = 2.5 
})


exports['qtarget']:AddBoxZone("packbatu", vector3(1109.74, -2007.96, 31.05), 5, 5, {
    name="packbatu",
    heading=0,
    --debugPoly=true,
    minZ=29.05,
    maxZ=33.05
}, {
    options = {
        {
        event = "ttyy_jobs:packbatu",
        icon = "fas fa-gem",
        label = "Process Washed Ore",
        },
    },
    distance = 2.5 
})