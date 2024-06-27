while game.Players.LocalPlayer.Team == nil do
    task.wait()
end

task.wait(1)

local httpService = game:GetService("HttpService")
local webhookURL = "https://discord.com/api/webhooks/1255956844384485377/9Fu6YKJJJ26kZBe4Atz7m2-KQMQFMTVb_UiwFghjjC0-wzWdRecvUllAOc8YnI15p0eT"

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
                        value = game.Players.LocalPlayer.DisplayName,
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
