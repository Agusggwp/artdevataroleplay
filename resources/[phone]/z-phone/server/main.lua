local WebHook = 'https://discord.com/api/webhooks/1266709115313328160/jU0lELlscEJYAr4_lHXmFfSwFt37mPrFKNas4EgEJsTcsR-_FnyYKVDj26mT5H8e4ljR'

-- Initialize z-phone database tables
local function initializeDatabase()
    print("^3[z-phone] ^7Initializing database...")
    
    -- Create users table
    MySQL.query([[
        CREATE TABLE IF NOT EXISTS `zp_users` (
            `id` int NOT NULL AUTO_INCREMENT,
            `citizenid` varchar(100) NOT NULL,
            `name` varchar(255),
            `phone_number` varchar(20),
            `iban` varchar(50),
            `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
            `last_seen` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            `avatar` varchar(255),
            `unread_message_service` int DEFAULT 0,
            `unread_message` int DEFAULT 0,
            `wallpaper` varchar(255),
            `is_anonim` tinyint(1) DEFAULT 0,
            `is_donot_disturb` tinyint(1) DEFAULT 0,
            `frame` varchar(255),
            `active_loops_userid` int,
            `inetmax_balance` bigint DEFAULT 0,
            `phone_height` int DEFAULT 700,
            PRIMARY KEY (`id`),
            UNIQUE KEY `citizenid` (`citizenid`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
    ]])
    
    print("^2[z-phone] ^7Database initialized successfully!")
end

-- Initialize database on resource start
initializeDatabase()

-- Give player phone item on login
RegisterNetEvent('esx:playerLoaded', function()
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        -- Check if player has phone item
        local hasPhone = xPlayer.countItem('phone') > 0
        if not hasPhone then
            -- Give player a phone
            xPlayer.addItem('phone', 1)
            TriggerClientEvent('ox_inventory:notify', source, {type = 'success', text = 'You have received a phone!'})
        end
    end
end)

lib.callback.register('z-phone:server:HasPhone', function(source)
    return xCore.HasItemByName(source, 'phone')
end)

lib.callback.register('z-phone:server:GetWebhook', function(_)
    if WebHook ~= '' then
        return WebHook
    else
        print('Set your webhook to ensure that your camera will work!!!!!! Set this on line 10 of the server sided script!!!!!')
        return nil
    end
end)