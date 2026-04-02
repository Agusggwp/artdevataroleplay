MoneyWashCok = {}

MoneyWashCok.EnableVersionCheck = false
MoneyWashCok.VersionCheckInterval = 60

--POLICE NOTIFY
MoneyWashCok.EnablePoliceNotify = false -- When Player is Processing Drugs (MoneyWashCokured with linden_outlawalert)
MoneyWashCok.PoliceNotifyBlipSpirit = 161
MoneyWashCok.PoliceNotifyBlipScale = 1.0
MoneyWashCok.PoliceNotifyBlipColor = 1
MoneyWashCok.MinAmountToWash = 1000

--MONEYWASH
MoneyWashCok.NeedIDCardToWashMoney = true
MoneyWashCok.EnableTax = true 
MoneyWashCok.TaxRate = 15 --In percents %

-- BLIP --

MoneyWashCok.EnableMoneyWashBlip = false
MoneyWashCok.WashMoneyBlipName = "Laundry"

--Coordinates for Money Wash
MoneyWashCok.MoneyWash = {
    Loc = {
        WashMoney = {
            vector3(660.16, 1282.46, 360.3)
        }
    }
}