vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_weaponcrafting")

-- [ Locals ] --
local menuactive = false
local onmenu = false


-- [ Threads ] --
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
			if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 606.67120361328,-3092.9738769531,6.069251537323) < 3 then
		  		DrawText3Ds(606.67120361328,-3092.9738769531,6.069251537323,"~b~E ~w~| tilgå ~b~VÅBENCRAFTING")
		  		DrawMarker(21, 606.67120361328,-3092.9738769531,6.069251537323 - 0.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 151, 255, 100, false, true, 2, true, false, false, false)
                if (IsControlJustReleased(1, 38)) then
				ToggleActionMenu()            
        	end
		end
	end
end)

-- [ MENU ] --

function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		TransitionFromBlurred(1000)
		SendNUIMessage({ hidemenu = true })
	end
end

-- [ NUI ] --
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "producer-ak47" then
		TriggerServerEvent("vrp_weaponcrafting:crafting","ak47")

	elseif data == "producer-tech-9" then
		TriggerServerEvent("vrp_weaponcrafting:crafting","tech-9")

	elseif data == "producer-uzi" then
		TriggerServerEvent("vrp_weaponcrafting:crafting","uzi")

	elseif data == "producer-snspistol" then
		TriggerServerEvent("vrp_weaponcrafting:crafting","snspistol")

	elseif data == "producer-pistol50" then
		TriggerServerEvent("vrp_weaponcrafting:crafting","pistol50")

	elseif data == "Luk" then
		ToggleActionMenu()
		onmenu = false
	end
end)

RegisterNetEvent("luk:nui")
AddEventHandler("luk:nui", function()
	ToggleActionMenu()
	onmenu = false
end)

-- [ Draw Text 3Ds ] --
function DrawText3Ds(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())

	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.015+ factor, 0.00, 20, 20, 20, 150)
end