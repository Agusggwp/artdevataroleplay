Config_Selldrugs = {
    requiredCops = 1,
    npcFightOnReject = true,
    account = 'black_money', --change to 'money' if you want
    drugs = {
        ['packagedweed'] = 1500,
        ['bagmeth'] = 3400,
        --add as much as you want
    },
    cityPoint = vector3(0.0, -1000.0, 100.0), --set cityPoint to false to disable
    notify = {
        title = 'Drugs',
        nodrugs = 'You don\'t have any drugs to sell',
        cooldown = '~r~Please wait some time',
        toofar = '~r~You\'re too far from the city',
        cops = '~r~There\'s no cops in the city',
        searching = 'You\'re searching for clients for ~g~',
        abort = '~r~Client has resigned from the order',
        notfound = '~r~There\'s no nearby clients',
        approach = 'Your client is approaching',
        found = '~g~You\'ve found client on ~y~',
        press = 'Press ~INPUT_PICKUP~ to ~y~sell',
        reject = '~r~This stuff is shitty!',
        vehicle = '~r~You\'ve to leave vehicle to sell',
        sold = '~g~You\'ve sold ~y~x%s of %s ~g~for %s$',
        client = '~g~Your client ~n~~r~want\'s to buy x%s %s',
        police_notify_title = 'Police dispatch',
        police_notify_subtitle = '~r~Drugs sell',
    },
    pedlist = {
        'ig_abigail',
    }
}
