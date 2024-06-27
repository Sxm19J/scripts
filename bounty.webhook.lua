local httpService = game:GetService("HttpService")
local webhookURL = getgenv().webhook

local request = (syn and syn.request) or request or (http and http.request) or http_request

request({
    Url = webhookURL,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
    },
    Body = httpService:JSONEncode({
        content = "",
        embeds = {
            {
                title = "Bounty Update!",
                description = "Updates every execution",
                color = 0x051,
                fields = {
                    {
                        name = "Username",
                        value = game.Players.LocalPlayer.Name,
                        inline = true,
                    },
                    {
                        name = "Bounty/Honor",
                        value = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value,
                        inline = true,
                    }, 
                },
            },
        },
    }),
})
