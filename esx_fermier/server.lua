
local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("dat_Faina")
AddEventHandler("dat_Faina",function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local chance = math.random(10)
    xPlayer.addInventoryItem("faina", chance)
end)


RegisterNetEvent("fermier_sell")
AddEventHandler("fermier_sell",function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem("faina")
    local cantitate = item.amount
    local price = math.random(40, 70)
    local amount = price * cantitate
    if cantitate > 0  then 
        xPlayer.addMoney(amount)
        xPlayer.removeInventoryItem("faina", amount)
        TriggerClientEvent('esx:showNotification', source, '~y~You sold all the flour you had!')
    else
        TriggerClientEvent('esx:showNotification', source, "~r~You don't have any flour!")
    end
end)