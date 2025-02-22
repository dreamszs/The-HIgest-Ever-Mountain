local replicatedStorage = game:GetService("ReplicatedStorage")
local signal = replicatedStorage:WaitForChild("Signal")
local gameEvent = signal:WaitForChild("Game")

local function fireEvents()
    while true do
        local args1 = {"End"}
        gameEvent:FireServer(unpack(args1))
        
        local args2 = {"Rebirth"}
        gameEvent:FireServer(unpack(args2))
        
        wait(0.00001)
    end
end

fireEvents()
