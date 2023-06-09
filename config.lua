Config = {}

Config.Locale = 'en'

Config.ItemName = 'lotteryticket'
Config.AccountType = 'money' -- Where should the player recieve the money? (money, bank, black_money)

Config.Prices = { -- chance can't be more then 100 all together
    {amount = 0, chance = 60},
    {amount = 100, chance = 20},
    {amount = 500, chance = 10},
    {amount = 1000, chance = 6},
    {amount = 5000, chance = 4},
    -- {amount = 10000, chance = 2},
}