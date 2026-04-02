local coordonate = {
    -- TOKO SENJATA
    {-661.72, -933.52, 20.84,"",181.12,1631478380,"csb_mweather"},
    {114.27, -140.76, 53.86,"",155.03,-1589423867,"a_m_y_business_03"}, -- DEALER
    {241.16, -1378.89, 32.74,"",144.11,1581098148,"s_m_y_cop_01"},-- DMV SCHOOL
    --{464.49, -990.15, 24.79,"",92.44,368603149,"s_f_y_cop_01"}-- ON OFF DUTY POLICE
}

Citizen.CreateThread(function()

    for _,v in pairs(coordonate) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
  
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      --TaskPlayAnim(ped,"anim@mp_player_intcelebrationmale@salute","salute", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

Nonok = function()
        local pos = GetEntityCoords(cache.ped, true)
        Citizen.Wait(0)
        for _,v in pairs(coordonate) do
            x = v[1]
            y = v[2]
            z = v[3]
            if(Vdist(pos.x, pos.y, pos.z, x, y, z) < 10.0)then
            end
        end
end