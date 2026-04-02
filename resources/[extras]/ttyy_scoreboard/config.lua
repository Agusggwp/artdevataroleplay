-- ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
-- ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
-- ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
-- ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
-- ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
--  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
                                               
Config = {}

Config.Framework = "ESX"             -- QBCORE o ESX
Config.Debug     = false                 -- Debug mode
Config.Logo =                           "https://cdn.discordapp.com/attachments/1090846115936616509/1160665465404805251/20231007_060858-removebg-preview.png?ex=6547f1f3&is=65357cf3&hm=3392ed214841c221a2e07cebc84ce55fa4bc71bbc543971d1b861f9e95d1d90b&.png" 

Config.OpenScore =                      "scoreboard"
Config.ChatCommandSuggest =             "Open Scoreboard"
Config.KeyOpen =                        "F5"
Config.KeyClose =                        "F5"
Config.KeyName =                        "Open Scorebaord"

Config.MaxPlayers =                     GetConvarInt('sv_maxclients', 80)
Config.TypeIconMoney =                  " $"

Config.NoJob =                          "unemployed"

Config.UseRobberys = true

--!!WARNING!! 
-- The Label is not working yet, I only put it to make an order guide! 
-- if you want to change the rob you have to change it in the html

Config.RobList = {
    {order = 1 , label = 'FLEECA',          requieredCops = 3},
    {order = 2 , label = 'PACIFIC BANK',    requieredCops = 2},
    {order = 3 , label = 'VANGELICO',       requieredCops = 6},
    {order = 4 , label = 'STORE',           requieredCops = 3},
}
