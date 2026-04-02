Config = {}

-- The following groups are allowed to use /reports command.
Config.WhitelistedGroups      = { ['staff'] = true, ['superadmin'] = true, ['moderator'] = true, ['admin'] = true, ['administrator'] = true, ['superadmin'] = true, ['owner'] = true }

Config.ServerPrefix           = "[ARTDEVATA ROLEPLAY INDONESIA]"

-- Set it to false if you don't want to send logs where discord webhook is located.
Config.USE_WEBHOOK            = true

-- Insert the channel webhook that you want in order to send logs when a player submits a report.
Config.WEBHOOK                = "https://discordapp.com/api/webhooks/1166720705870696528/hafstui94QAtffjBiAn5nAykMu49YKmoUnwJdhDSXGP3BMiMo5h0sQ5_Q0bSMA4ufbIu"

-- Insert your discord server name, example: [MY SERVER]
Config.DISCORD_NAME           = "ARTDEVATA ROLEPLAY"

-- Insert your discord logo image, example: https://i.imgur.com/xxxxxx.png
Config.DISCORD_IMAGE          = "https://i.imgur.com/xxxxxxxx.png"

-- Insert your discord footer text.
Config.DISCORD_FOOTER         = "HIGH STAFF"

-- Set it to false if you dont want any reports to be stored in sql (database).
Config.STORE_IN_SQL           = true