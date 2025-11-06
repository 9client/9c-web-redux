local ns = game:GetService("NetworkServer")
local rs = game:GetService("RunService")
local plrs = game:GetService("Players")

function start(place,port)
    game:Load(place)
    rs:Run()
    ns:Start(port,20)

    plradded = plrs.PlayerAdded:connect(function(plr)
        print("connection from "..plr.UserId)
        plr:LoadCharacter(0)
    end)
end