ESX.RegisterUsableItem(Config.ItemName, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local randomNumber = math.random(1, #Config.Prices)

    local price = GetRandomAmount()

    xPlayer.removeInventoryItem(Config.ItemName, 1)

    if price > 0 then
        xPlayer.addAccountMoney(Config.AccountType, price)
        TriggerClientEvent('LamaLottery:showNotification', source, _U('won', price))
    else
        TriggerClientEvent('LamaLottery:showNotification', source, _U('lost'))
    end
end)

function GetRandomAmount()
    local totalChance = 0
    
    for _, option in ipairs(Config.Prices) do
        totalChance = totalChance + option.chance
    end
    
    local randomNumber = math.random(totalChance)
    local currentChance = 0
    
    for _, option in ipairs(Config.Prices) do
        currentChance = currentChance + option.chance
        
        if randomNumber <= currentChance then
            return option.amount
        end
    end
    
    return 0
end