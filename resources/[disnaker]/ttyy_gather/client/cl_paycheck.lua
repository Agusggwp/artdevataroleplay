local paycheckdata

RegisterNetEvent('ttyy_gaji', function()
    TriggerEvent('zf_context:openMenu', {

		{
            id = 1,
            header = "🔙 Go Back",
            txt = "",
            params = {
                event = "ttyy_jobs",
            }
        },
        {
            id = 2,
            header = "💼 Ambil Gajian",
            txt = "Pengambilan gaji",
            params = {
                event = "ttyy_ambilgaji:all",
            }
        },		
    })
end)

RegisterNetEvent('ttyy_ambilgaji:all')
AddEventHandler('ttyy_ambilgaji:all', function()
	OpenPaycheckMenu()
end)

function OpenPaycheckMenu()
	local elements = {}
	ESX.TriggerServerCallback('ttyy_paycheck:server:GetDataMoney', function(count)
		paycheckdata = json.decode(count)
		table.insert(elements,{label = '&nbsp;&nbsp;<span style="color:#13ea13 ;"> You have ' ..paycheckdata..'$ to collect</span>'})
		table.insert(elements,{label = 'Withdraw All', value = 'withdraw_all'})
		table.insert(elements, {label = 'Withdraw an amount', value = 'withdraw_quantity'})

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'paycheck_actions', {
					title    = 'Bursa Kerja',
					align    = 'top-right',
					elements = elements
				}, function(data, menu)
						if data.current.value == 'withdraw_all' then
							menu.close()
							exports.ox_inventory:Progress({
								duration = 10000,
								label = "Mengambil gaji",
								anim = {
									dict = "missheistdockssetup1clipboard@idle_a",
									clip = "idle_a",
									flags = 49,
								},
								DisableControls = {
									Mouse = false,
									Player = true,
									Vehicle = true
								}
							})
							TriggerServerEvent('ttyy_paycheck:Payout')
						elseif data.current.value == 'withdraw_quantity'then
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_quantity_count', {
								title = 'Quantity'
							}, function(data2, menu2)
								local count = tonumber(data2.value)
				
								if count == nil then
									ESX.ShowNotification('Invalid Quantity')
								else
									menu2.close()
									menu.close()
									exports.ox_inventory:Progress({
										Duration = 10000,
										Label = "Cashing out...",
										Animation = {
											scenario = "WORLD_HUMAN_CLIPBOARD", 
											animationDictionary = "idle_a", 
										},
										DisableControls = {
											Mouse = false,
											Player = true,
											Vehicle = true
										}
									})
									TriggerServerEvent('ttyy_paycheck:withdrawMoney', count)
								end
							end)
						elseif data.current.value == 'Salir' then
							menu.close()
						end
		end, function(data, menu)
			menu.close()
		end)
	end)
end
