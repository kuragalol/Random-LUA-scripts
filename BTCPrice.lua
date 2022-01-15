--kuraga#1111 is me.
local function btc()
    local response = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.coinbase.com/v2/prices/spot?currency=USD"))
    local price = tonunber(response["data"]["amount"])
    return price
end
