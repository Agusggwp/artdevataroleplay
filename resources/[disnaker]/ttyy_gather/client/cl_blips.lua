local blips = {

    {name="Tempat Ambil Kerja", color=5, id=479, x = 1200.5754, y = -1274.3639, z = 35.2234, scale = 0.7}, -- PT KORI
    {name="Tempat Menjual Hasil Kerja", color=5, id=479, x = 462.8510, y = -743.8375, z = 27.3607, scale = 0.7}, -- PT KORI GUDANG
    {name="Tempat Jual Buah", color=3, id=365, x = 1477.1555, y = 2723.5627, z = 37.5677, scale = 1.0}, -- PT KORI GUDANG
}

CreateThread(function()
   for _, info in pairs(blips) do
     info.blip = AddBlipForCoord(info.x, info.y, info.z)
     SetBlipSprite(info.blip, info.id)
     SetBlipDisplay(info.blip, 4)
     SetBlipScale(info.blip, info.scale or 0.6)
     SetBlipColour(info.blip, info.color)
     SetBlipAsShortRange(info.blip, true)
     BeginTextCommandSetBlipName("STRING")
     AddTextComponentString(info.name)
     EndTextCommandSetBlipName(info.blip)
   end
end)