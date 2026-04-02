AirportRoute = {

    Name = 'bandara_route',

    BusModel = 'bus',

    Capacity = 1,

    Doors = {2, 3},

    FirstSeat = 1,

    SpawnPoint = {x = -282.29, y = 1206.97, z = 318.78, heading = 312.12},

    Payment = 2000,

    PaymentPerPassenger = 1000,

    Lines = {

        {

            Name = 'bandara_route',

            BusColor = 1,

            Stops = {

                {x = 167.35, y = -1353.94,  z = 29.3, name = 'stop_banner_hotel', unloadType = UnloadType.None}, --SEBERANG DISNAKER

                {x = -1042.85, y = -2727.64,  z = 20.17, name = 'stop_von_crastenburg', unloadType = UnloadType.None}, --RUSUN

                {x = 209.46, y = -1349.54, z = 29.27, name = 'stop_airport', unloadType = UnloadType.All}, --SEBERANG TAXI

                {x = -413.82, y = 1171.33,  z = 325.83, name = 'stop_banner_hotel', unloadType = UnloadType.None}, --SEBERANG DISNAKER

            }

        }

    }

}