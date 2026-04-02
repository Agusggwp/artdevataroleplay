Config = {}
Config.DrawDistance           = 10.0
Config.DiscordWebook          = ""
Config.Zones = {
	Actions = {
		Pos   = {-429.22, 1111.75, 327.68},
		Size  = {x = 1.5, y = 1.5, z = 0.4},
		Color = {r = 102, g = 102, b = 204},
		Type  = 1
	},
}


-- Config pajak

-- Class bank
Config.HoboClassLimit  =  0
Config.PoorClassLimit  =  0
Config.LowerClassLimit  =  0
Config.LowerMiddleClassLimit = 0
Config.MiddleClassLimit = 0
Config.UpperMiddleClassLimit = 0
Config.LowerHigherClassLimit =  0
Config.HigherClassLimit =  0

-- pengalian dari class bank
Config.HoboClassTax  =  0
Config.PoorClassTax  =  0
Config.LowerClassTax  =  0
Config.LowerMiddleClassTax = 0
Config.MiddleClassTax =  0
Config.UpperMiddleClassTax =  0
Config.LowerHigherClassTax = 0
Config.HigherClassTax =  0
Config.UpperHigherClassTax = 0
--[[
    Contoh : 
    kita meiliki uang dibank senilai 50k berarti kita sudah memasuki class "LowerMiddleClassLimit"
    atau jika kita memiliki uang diatas 20k tetapi tidak lebih dari 50k berarti kita masuk ke calss "LowerClassLimit".
    
    Perhitungan : 
    Misal kita memiliki uang 100k berarti kita masuk ke class "MiddleClassLimit"

    Di ketahui uang yang kita miliki adalah 100k 
    makan 100k dikali 2 di bagi 1000
    
    jadi hasilnya adalah 200

    200 adalah pajak bank yang harus dibayar
]]


--[[
    Pengalian banyak kendaraan

    misal kita memiliki kendaraan 4 jadi 4 dikali 250 = 1000
    pajak kendaraan yang harus dibayar adalah 1.000
]]
Config.CarTax = 0


-- Untuk property sama seperti kendaraan
Config.PropertyTax = 0

-- Setiap berapa kali player mendapat pajak. 60000 adalah 1 menit dalam ms 
Config.TaxInterval = 15 * 0 -- setaip 15 menit

-- Society Account
Config.SocietyAccount = "society_pemerintah" 
--[[
    setelah player membayar pajak uang pajak akan masuk kemana. INGAT script ini tidak me-ngecek apakah perusahaan tersebut ada atau tidak ini dapat menyebabkan script error
    HARAP dicek terlebih dahulu
]]