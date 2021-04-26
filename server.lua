local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_weaponcrafting")

-- [ Arrays ] --
local weapons = {
	{ item = "ak47" },
	{ item = "tech-9" },
	{ item = "uzi" },
	{ item = "snspistol" },
	{ item = "pistol50" }
}

-- [ Events ] --
RegisterServerEvent("vrp_weaponcrafting:crafting")
AddEventHandler("vrp_weaponcrafting:crafting",function(item)
	local source = source
	local user_id = vRP.getUserId({source})
    local new_weight = vRP.getInventoryWeight({user_id})+vRP.getItemWeight({"wbody|WEAPON_ASSAULTRIFLE"})
	if user_id then
		for k,v in pairs(weapons) do
			if item == v.item then
				if item == "ak47" then
                    if new_weight <= vRP.getInventoryMaxWeight({user_id}) then
                        if vRP.getInventoryItemAmount({user_id,"blueprint_ak47"}) >= 1 then
                            if vRP.getInventoryItemAmount({user_id,"steel"}) >= 30 then
                                if vRP.getInventoryItemAmount({user_id,"grip"}) >= 1 then
                                    if vRP.getInventoryItemAmount({user_id,"trigger"}) >= 1 then
                                        if vRP.tryGetInventoryItem({user_id,"blueprint_ak47",1}) and vRP.tryGetInventoryItem({user_id,"steel",30}) and vRP.tryGetInventoryItem({user_id,"grip",1}) and vRP.tryGetInventoryItem({user_id,"trigger",1}) then
                                            TriggerClientEvent("luk:nui",source)

                                            --exports['progressBars']:startUI(10000, "LAVER AK-47...")
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '25%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '50%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '75%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '95%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                                            SetTimeout(10000,function()
                                                vRPclient._stopAnim(source,false)
                                                vRP.giveInventoryItem({user_id,"wbody|WEAPON_ASSAULTRIFLE",1})
                                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du lavede en AK-47', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
                                            end)
                                        end
                                    else
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Trigger', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                    end
                                else
                                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Grip', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                end
                            else
                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 30x Stål', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                            end
                        else
                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Blueprint til AK-47', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                        end
					else
                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Du har ikke nok plads i rygsækken', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                    end
                elseif item == "tech-9" then
                    if new_weight <= vRP.getInventoryMaxWeight({user_id}) then
                        if vRP.getInventoryItemAmount({user_id,"blueprint_tech-9"}) >= 1 then
                            if vRP.getInventoryItemAmount({user_id,"steel"}) >= 15 then
                                if vRP.getInventoryItemAmount({user_id,"grip"}) >= 1 then
                                    if vRP.getInventoryItemAmount({user_id,"trigger"}) >= 1 then
                                        if vRP.tryGetInventoryItem({user_id,"blueprint_tech-9",1}) and vRP.tryGetInventoryItem({user_id,"steel",6}) and vRP.tryGetInventoryItem({user_id,"grip",1}) and vRP.tryGetInventoryItem({user_id,"trigger",1}) then
                                            TriggerClientEvent("luk:nui",source)

                                            --exports['progressBars']:startUI(10000, "LAVER TECH-9...")
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '25%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '50%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '75%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '95%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                                            SetTimeout(10000,function()
                                                vRPclient._stopAnim(source,false)
                                                vRP.giveInventoryItem({user_id,"wbody|WEAPON_MACHINEPISTOL",1})
                                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du lavede en Tech-9', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
                                            end)
                                        end
                                    else
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Trigger', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                    end
                                else
                                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Grip', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                end
                            else
                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 15x Stål', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                            end
                        else
                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Blueprint til Tech-9', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                        end
					else
                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Du har ikke nok plads i rygsækken', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                    end
                elseif item == "uzi" then
                    if new_weight <= vRP.getInventoryMaxWeight({user_id}) then
                        if vRP.getInventoryItemAmount({user_id,"blueprint_microsmg"}) >= 1 then
                            if vRP.getInventoryItemAmount({user_id,"steel"}) >= 20 then
                                if vRP.getInventoryItemAmount({user_id,"grip"}) >= 1 then
                                    if vRP.getInventoryItemAmount({user_id,"trigger"}) >= 1 then
                                        if vRP.tryGetInventoryItem({user_id,"blueprint_microsmg",1}) and vRP.tryGetInventoryItem({user_id,"steel",20}) and vRP.tryGetInventoryItem({user_id,"grip",1}) and vRP.tryGetInventoryItem({user_id,"trigger",1}) then
                                            TriggerClientEvent("luk:nui",source)

                                            --exports['progressBars']:startUI(10000, "LAVER MICROSMG...")
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '25%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '50%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '75%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            Citizen.Wait(2500)
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '95%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                            vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                                            SetTimeout(10000,function()
                                                vRPclient._stopAnim(source,false)
                                                vRP.giveInventoryItem({user_id,"wbody|WEAPON_MICROSMG",1})
                                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du lavede en Micro SMG', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
                                            end)
                                        end
                                    else
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Trigger', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                    end
                                else
                                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Grip', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                end
                            else
                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 20x Stål', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                            end
                        else
                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Blueprint til Micro SMG', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                        end
					else
                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Du har ikke nok plads i rygsækken', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                    end
                elseif item == "snspistol" then
                    if new_weight <= vRP.getInventoryMaxWeight({user_id}) then
                        if vRP.getInventoryItemAmount({user_id,"blueprint_snspistol"}) >= 1 then
                            if vRP.getInventoryItemAmount({user_id,"steel"}) >= 5 then
                                if vRP.getInventoryItemAmount({user_id,"trigger"}) >= 1 then
                                    if vRP.tryGetInventoryItem({user_id,"blueprint_snspistol",1}) and vRP.tryGetInventoryItem({user_id,"steel",5}) and vRP.tryGetInventoryItem({user_id,"trigger",1}) then
                                        TriggerClientEvent("luk:nui",source)

                                        --exports['progressBars']:startUI(10000, "LAVER SNSPISTOL...")
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '25%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        Citizen.Wait(2500)
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '50%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        Citizen.Wait(2500)
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '75%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        Citizen.Wait(2500)
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '95%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                                        SetTimeout(10000,function()
                                            vRPclient._stopAnim(source,false)
                                            vRP.giveInventoryItem({user_id,"wbody|WEAPON_SNSPISTOL",1})
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du lavede en SNS PISTOL', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
                                        end)
                                    end
                                else
                                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Trigger', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                end
                            else
                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 5x Stål', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                            end
                        else
                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Blueprint til SNS Pistol', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                        end
					else
                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Du har ikke nok plads i rygsækken', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                    end
                elseif item == "pistol50" then
                    if new_weight <= vRP.getInventoryMaxWeight({user_id}) then
                        if vRP.getInventoryItemAmount({user_id,"blueprint_pistol50"}) >= 1 then
                            if vRP.getInventoryItemAmount({user_id,"steel"}) >= 18 then
                                if vRP.getInventoryItemAmount({user_id,"trigger"}) >= 1 then
                                    if vRP.tryGetInventoryItem({user_id,"blueprint_pistol50",1}) and vRP.tryGetInventoryItem({user_id,"steel",18}) and vRP.tryGetInventoryItem({user_id,"trigger",1}) then
                                        TriggerClientEvent("luk:nui",source)

                                        --exports['progressBars']:startUI(10000, "LAVER PISTOL50...")
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '25%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        Citizen.Wait(2500)
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '50%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        Citizen.Wait(2500)
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '75%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        Citizen.Wait(2500)
                                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = '95%', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                                        vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                                        SetTimeout(10000,function()
                                            vRPclient._stopAnim(source,false)
                                            vRP.giveInventoryItem({user_id,"wbody|WEAPON_PISTOL50",1})
                                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du lavede en Pistol50', length = 2500, style = { ['background-color'] = '#4ad066', ['color'] = '#ffffff' } })
                                        end)
                                    end
                                else
                                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Trigger', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                                end
                            else
                                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 5x Stål', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                            end
                        else
                            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke 1x Blueprint til Pistol50', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
                        end
					else
                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Du har ikke nok plads i rygsækken', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
                        end
				    end
			    end
		    end
	    end
    end)