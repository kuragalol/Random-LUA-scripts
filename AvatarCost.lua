local function avatarcost(plr)
    local target = plr
    local name = target.DisplayName
    local userid = target.UserId
    local response1 = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://avatar.roblox.com/v1/users/"..userid.."/currently-wearing"))
    local total = 0
    for i,v in pairs(response1["assetIds"]) do
        pcall(function()
            print(v)
            local Asset = game:GetService("MarketplaceService"):GetProductInfo(tonumber(v))
            local price = Asset.PriceInRobux
            total = total + price
        end)
    end
    if total > 1000 then
        total = tostring(math.ceil(total)).."K"
    else
        total = tostring(total)
    end
    return  total
end
