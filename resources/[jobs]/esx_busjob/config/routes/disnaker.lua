DisnakerRoute = {

    Name = 'disnaker_route',

    BusModel = 'bus',

    Capacity = 1,

    Doors = {2, 3},

    FirstSeat = 1,

    SpawnPoint = {x = -347.08, y = 1156.25, z = 325.54, heading = 14.36},

    Payment = 2000,

    PaymentPerPassenger = 1000,

    Lines = {

        {

            Name = 'disnaker_route',

            BusColor = 1,

            Stops = {

                {x = -299.15, y = -1514.86,  z = 28.57, name = 'stop_banner_hotel', unloadType = UnloadType.None}, --SEBERANG DISNAKER

                {x = -1096.13, y = -2018.57,  z = 13.21, name = 'stop_von_crastenburg', unloadType = UnloadType.None}, --RUSUN

                {x = 928.88, y = -2185.19, z = 30.25, name = 'stop_airport', unloadType = UnloadType.All}, --SEBERANG TAXI

                {x = 855.44, y = -1642.8, z = 30.22, name = 'stop_elgin', unloadType = UnloadType.Some}, --PERUM

                {x = 1257.92, y = -1299.34, z = 35.55,  name = 'stop_venetian', unloadType = UnloadType.Some}, --SAMSAT

                {x = 737.14, y = -995.82, z = 27.61, name = 'stop_airport', unloadType = UnloadType.All}, --IMPOUND

                {x = 391.14,  y = -1085.46, z = 29.41,  name = 'stop_viceroy', unloadType = UnloadType.Some}, --SIM

                {x = 256.73, y = -1121.2, z = 29.37,  name = 'stop_crastenburg', unloadType = UnloadType.Some}, --RS PILLBOX

                {x = 275.76, y = -592.99,  z = 43.25, name = 'stop_opium_nights', unloadType = UnloadType.Some}, --RUSUN

                {x = 271.72, y = -220.22,  z = 53.97, name = 'stop_airport', unloadType = UnloadType.All}, --DISNAKER

            }

        }

    }

}