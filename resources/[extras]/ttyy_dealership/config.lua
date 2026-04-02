Config = {}

Config.minFinanceLength = 1 -- Minimum repayment time in weeks
Config.maxFinanceLength = 8 -- Maximum repayment time in weeks

Config.minDownpayment = 10  -- Minimum percent for downpayment
Config.maxDownpayment = 75  -- Maximum percent for downpayment

Config.financeInterest = 0.04  -- Percent interest charged for financing multiplied by the finance length to get total interest ex(finance length of 4 will have 16% interest)
Config.giveDealerCommision = true
Config.dealerCommision = 0.05

Config.maxMissedPayments = 1 -- The number of payments that can be missed before the vehicle is repoed 
Config.repoFine = 1.10 -- Tax added to get back a vehicle that was repoed

Config.allowPurchaseWithoutDealer = true

Config.usePEFCL = false

Config.OxTarget = false

Config.Dealerships = {
    ['pdm'] = {        --  PDM dealership
        label = "PDM",
        type = "car",
        job = "cardealer",
        noDealerUpcharge = 1.2,
        displayPoints = {
            {id = "1", x = -45.833209991455, y = -1101.8262939453, z = 26.048042297363, h = 297.41680908203, radius = 4.0},
            {id = "2", x = -40.188430786133, y = -1095.4486083984, z = 26.048389434814, h = 247.87591552734, radius = 4},
            {id= "3", x = -49.150390625, y = -1092.9564208984, z = 26.047922134399, h = 92.333885192871, radius = 4}
        },
        dealershipVehicles = {"adder", "carbonizzare", "zion", "rebel2", "kamacho", "winky", "oracle2", "felon", "exemplar", "oracle", "windsor2", "kalahari", "sandking", "sandking2", "brawler", "sanchez2", "rancherxl", "issi2", "dilettante", "blista", "panto", "prairie", "rhapsody", "weevil", "entity2", "bifta", "dukes", "bati", "dubsta3", "f620", "granger", "sentinel2", "dominator", "gauntlet", "ztype", "bullet", "bjxl", "baller", "baller2", "cheetah", "infernus", "vacca", "voltic", "jester", "turismor", "massacro", "zentorno", "autarch", "buffalo4", "cheburek", "cheetah2", "comet4", "comet5", "comet7", "coquette4", "cyclone", "deviant", "dominator3", "dukes3", "furia", "gauntlet3", "gauntlet4", "gauntlet5", "glendale2", "imorgon", "impaler", "issi3", "italigto", "italirsx", "jb700", "komoda", "krieger", "neon", "neo", "patriot", "patriot2", "raiden", "retinue", "sc1", "shinobi", "stafford", "stryder", "thrax", "tigon", "vagner", "visione", "xa21", "z190", "stretch"},
        purchaseSpawn = {x = -30.63775062561, y = -1089.9173583984, z = 26.047746658325, h = 341.53689575195},
        testDriveReturn = {x = -11.9, y = -1081.2, z = 27.0, l = 19.4, w = 6.4, h = 71},
        zone = {name = 'pdm', x = -46.302963256836, y = -1098.8643798828, z = 27.274354934692, l = 160.0, w = 125, h = 80},
        dealerZones = {{id = "1", x = -32.1, y = -1114.3, z = 26.4, l = 3.2, w = 2.2, h = 340}, {id = "2",x = -30.7, y = -1106.9, z = 26.4, l = 2.4, w = 4.2, h = 340}},
        dealerTargetZones = {
            {id = "1", x = -33.15, y = -115.0, z = 26.5, l = 0.65, w = 0.75, h = 340, height = 0.55},
        },
        blip = {
            scale = 0.7,
            sprite = 523,
            colour = 0
        },
    },
    -- ['pdm'] = {        --  Gabz PDM dealership
    --     label = "PDM",
    --     type = "car",
    --     job = "cardealer",
    --     noDealerUpcharge = 1.2,
    --     displayPoints = {
    --         {id = "1", x = -36.900897979736, y = -1093.4631347656, z = 26.953510284424, h = 205.84243774414, radius = 4.3},
    --         {id = "2", x = -42.393798828125, y = -1101.2033691406, z = 26.952049255371, h = 18.875175476074, radius = 4.3},
    --         {id= "3", x = -47.4553565979, y = -1092.25, z = 26.953269958496, h = 280.92864990234, radius = 4.3},
    --         {id = "4", x = -54.89, y = -1096.84, z = 26.953145980835, h = 31.069679260254, radius = 4.3},
    --         {id = "5", x = -49.85, y = -1083.92, z = 26.954120635986, h = 68.269973754883, radius = 4.3}
    --     },
    --     dealershipVehicles = {"adder", "carbonizzare", "zion", "rebel2", "kamacho", "winky", "oracle2", "felon", "exemplar", "oracle", "windsor2", "kalahari", "sandking", "sandking2", "brawler", "sanchez2", "rancherxl", "issi2", "dilettante", "blista", "panto", "prairie", "rhapsody", "weevil", "entity2", "bifta", "dukes", "bati", "dubsta3", "f620", "granger", "sentinel2", "dominator", "gauntlet", "ztype", "bullet", "bjxl", "baller", "baller2", "cheetah", "infernus", "vacca", "voltic", "jester", "turismor", "massacro", "zentorno", "autarch", "buffalo4", "cheburek", "cheetah2", "comet4", "comet5", "comet7", "coquette4", "cyclone", "deviant", "dominator3", "dukes3", "furia", "gauntlet3", "gauntlet4", "gauntlet5", "glendale2", "imorgon", "impaler", "issi3", "italigto", "italirsx", "jb700", "komoda", "krieger", "neon", "neo", "patriot", "patriot2", "raiden", "retinue", "sc1", "shinobi", "stafford", "stryder", "thrax", "tigon", "vagner", "visione", "xa21", "z190", "stretch"},
    --     purchaseSpawn = {x = -23.439552307129, y = -1093.9099121094, z = 26.93145942688, h = 340.0778503418},
    --     testDriveReturn = {x = -11.9, y = -1081.2, z = 27.0, l = 19.4, w = 6.4, h = 71},
    --     zone = {name = 'pdm', x = -46.302963256836, y = -1098.8643798828, z = 27.274354934692, h = 80, l = 160.0, w = 125},
    --     dealerZones = {{id = "1", x = -31.6, y = -1087.0, z = 27.3, l = 5, w = 3, h = 70}, {id = "2",x = -40.3, y = -1083.7, z = 27.3, l = 5, w = 3, h = 70}},
    --     dealerTargetZones = {
    --         {id = "1", x = -30.65, y = -1088.9, z = 27.3, l = 0.65, w = 0.75, h = 340, height = 0.65},
    --         {id = "2", x = -33.25, y = -1087.9, z = 27.35, l = 1.25, w = 0.7, h = 340, height = 0.65},
    --         {id = "3", x = -39.35, y = -1085.65, z = 27.4, l = 0.7, w = 0.7, h = 340, height = 0.7},
    --         {id = "4", x = -42.0, y = -1084.7, z = 27.3, l = 1.2, w = 0.7, h = 340, height = 0.55},
    --     },
    --     blip = {
    --         scale = 0.7,
    --         sprite = 523,
    --         colour = 0
    --     },
    -- },
}

Config.AllVehicles = {

    ----------
    -- Cars --
    ----------

    ["adder"] = {price = 500000},
    ["akuma"] = {price = 7500},
    ["alpha"] = {price = 60000},
    ["ardent"] = {price = 150000},
    ["asea"] = {price = 5500},
    ["autarch"] = {price = 955000},
    ["avarus"] = {price = 18000},
    ["bagger"] = {price = 13500},
    ["baller"] = {price = 40000},
    ["baller2"] = {price = 45000},
    ["baller3"] = {price = 45000},
    ["banshee"] = {price = 60000},
    ["banshee2"] = {price = 70000},
    ["bati"] = {price = 12000},
    ["bati2"] = {price = 19000},
    ["bestiagts"] = {price = 55000},
    ["bf400"] = {price = 6500},
    ["bfinjection"] = {price = 16000},
    ["bifta"] = {price = 5000},
    ["bison"] = {price = 45000},
    ["bjxl"] = {price = 37500},
    ["blade"] = {price = 15000},
    ["blazer"] = {price = 6500},
    ["blazer4"] = {price = 8500},
    ["blista"] = {price = 8000},
    ["bobcatxl"] = {price = 32000},
    ["brawler"] = { price = 47500},
    ["brioso"] = {price = 18000},
    ["btype"] = {price = 62000},
    ["btype2"] = {price = 155000},
    ["btype3"] = {price = 85000},
    ["buccaneer"] = {price = 18000},
    ["buccaneer2"] = {price = 24000},
    ["buffalo"] = {price = 12000},
    ["buffalo2"] = {price = 17500},
    ["buffalo4"] = {price = 32500},
    ["bullet"] = {price = 90000},
    ["burrito3"] = {price = 19000},
    ["camper"] = {price = 26500},
    ["carbonizzare"] = {price = 175000},
    ["cheburek"] = {price = 3000},
    ["cheetah"] = {price = 375000},
    ["cheetah2"] = {price = 325000},
    ["cogcabrio"] = {price = 55000},
    ["comet"] = {price = 65000},
    ["comet4"] = {price = 75000},
    ["comet5"] = {price = 145000},
    ["comet6"] = {price = 135000},
    ["comet7"] = {price = 135000},
    ["coquette"] = {price = 65000},
    ["coquette2"] = {price = 40000},
    ["coquette3"] = {price = 55000},
    ["coquette4"] = {price = 175000},
    ["cyclone"] = {price = 890000},
    ["deviant"] = {price = 47500},
    ["dilettante"] = {price = 29000},
    ["dominator"] = {price = 32500},
    ["dominator3"] = {price = 111000},
    ["double"] = {price = 28000},
    ["dubsta3"] = {price = 166611},
    ["dukes"] = {price = 28000},
    ["dukes3"] = {price = 32000},
    ["entity2"] = {price = 475000},
    ["entityxf"] = {price = 425000},
    ["exemplar"] = {price = 32000},
    ["f620"] = {price = 40000},
    ["felon"] = {price = 42000},
    ["furia"] = {price = 490000},
    ["gauntlet"] = {price = 30000},
    ["gauntlet3"] = {price = 32500},
    ["gauntlet4"] = {price = 98000},
    ["gauntlet5"] = {price = 38500},
    ["glendale"] = {price = 6500},
    ["glendale2"] = {price = 19000},
    ["granger"] = {price = 35000},
    ["imorgon"] = {price = 77000},
    ["impaler"] = {price = 13000},
    ["infernus"] = {price = 180000},
    ["issi2"] = {price = 10000},
    ["issi3"] = {price = 9000},
    ["italigto"] = {price = 234000},
    ["italirsx"] = {price = 359000},
    ["jb700"] = {price = 98000},
    ["jester"] = {price = 65000},
    ["kalahari"] = {price = 6500},
    ["kamacho"] = {price = 345000},
    ["komoda"] = {price = 62000},
    ["krieger"] = {price = 389000},
    ["manchez"] = {price = 5300},
    ["massacro"] = {price = 65000},
    ["neo"] = {price = 500000},
    ["neon"] = {price = 450000},
    ["oracle"] = {price = 35000},
    ["oracle2"] = {price = 35000},
    ["panto"] = {price = 10000},
    ["pariah"] = {price = 420000},
    ["patriot"] = {price = 32000},
    ["patriot2"] = {price = 40000},
    ["prairie"] = {price = 12000},
    ["raiden"] = {price = 375000},
    ["rancherxl"] = {price = 21000},
    ["rebel2"] = {price = 31000},
    ["retinue"] = {price = 61500},
    ["rhapsody"] = {price = 26000},
    ["sanchez2"] = {price = 5300},
    ["sandking"] = {price = 55000},
    ["sandking2"] = {price = 60000},
    ["sc1"] = {price = 603000},
    ["sentinel2"] = {price = 47000},
    ["shinobi"] = {price = 44500},
    ["stafford"] = {price = 98000},
    ["stretch"] = {price = 20000},
    ["stryder"] = {price = 40000},
    ["thrax"] = {price = 769000},
    ["tigon"] = {price = 736000},
    ["turismor"] = {price = 350000},
    ["tyrant"] = {price = 800000},
    ["vacca"] = {price = 120000},
    ["vagner"] = {price = 684000},
    ["visione"] = {price = 625000},
    ["voltic"] = {price = 90000},
    ["weevil"] = {price = 26000},
    ["windsor2"] = {price = 125000},
    ["winky"] = {price = 23500},
    ["xa21"] = {price = 546000},
    ["z190"] = {price = 99000},
    ["zentorno"] = {price = 590000},
    ["zion"] = {price = 36000},
    ["ztype"] = {price = 220000},

    -----------
    -- Bikes --
    -----------
    ["bmx"] = {price = 150},

    -----------
    -- Boats --
    -----------

    ["dinghy"] = {price = 5364},
    ["dinghy2"] = {price = 8652},
    ["jetmax"] = {price = 245},
    ["longfin"] = {price = 3752},
    ["marquis"] = {price = 278},
    ["seashark"] = {price = 952},
    ["speeder"] = {price = 297},
    ["squalo"] = {price = 467},
    ["suntrap"] = {price = 3378},
    ["toro"] = {price = 735},
    ["tropic"] = {price = 1385},
    ["tug"] = {price = 287},
    
    --------------
    -- Aircraft --
    --------------

    ["alphaz1"] = {price = 245},
    ["buzzard2"] = {price = 245},
    ["conada"] = {price = 245},
    ["cuban800"] = {price = 245},
    ["dodo"] = {price = 245},
    ["duster"] = {price = 245},
    ["frogger"] = {price = 245},
    ["frogger2"] = {price = 245},
    ["havok"] = {price = 245},
    ["howard"] = {price = 245},
    ["luxor"] = {price = 245},
    ["mammatus"] = {price = 245},
    ["maverick"] = {price = 245},
    ["microlight"] = {price = 245},
    ["nimbus"] = {price = 245},
    ["seabreeze"] = {price = 245},
    ["seasparrow"] = {price = 245},
    ["stunt"] = {price = 245},
    ["velum2"] = {price = 245},
    ["vestra"] = {price = 245},
    ["volatus"] = {price = 245},
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}