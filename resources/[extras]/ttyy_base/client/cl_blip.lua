local blips = {
    {title="Gudang Kota", colour=3, id=473, x = -1607.61, y =  -831.04, z = 10.08},
    {title="Gudang Sandy", colour=3, id=473, x = 1960.63, y =  5184.78, z = 47.96},
    {title="Gudang Paleto", colour=3, id=473, x = 147.41, y =   6366.67, z = 31.53},
}

  Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.55)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
  end)