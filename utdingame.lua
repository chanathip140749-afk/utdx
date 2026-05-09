task.spawn(function()
    while task.wait(1) do
local args = {
	"2391446696:11034",
	vector.create(-134.95765686035156, -300.14556884765625, -475.5625),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
local args = {
	"675376953:9091",
	vector.create(-125.54085540771484, -300.14697265625, -476.0462646484375),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
local args = {
	"2391446696:7695",
	vector.create(-134.499755859375, -300.14654541015625, -469.4424133300781),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
local args = {
	"2391446696:4175",
	vector.create(-124.33197784423828, -300.149169921875, -463.5196228027344),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
local args = {
	"2391446696:5121",
	vector.create(-136.17193603515625, -300.14697265625, -464.5888977050781),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
local args = {
	"2391446696:5121",
	vector.create(-135.71145629882812, -300.1482849121094, -456.07733154296875),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
local args = {
	"2391446696:126",
	vector.create(-125.53621673583984, -300.1492919921875, -459.86456298828125),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
local args = {
	"2391446696:126",
	vector.create(-125.55421447753906, -300.1500549316406, -456.2205810546875),
	0
}
game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args))
--------------


game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerVoteToStartMatch"):FireServer()
local args = {
	3
}
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerVoteForChallenge"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerVoteReplay"):FireServer()
end
end)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local targetPlaceId = 5902977746
while true do
    local success1, found1 = pcall(function()
        return workspace.Lobby.EnvironmentSummer.Map.Ruins.CenterArea["Cylinder.006"]
    end)
    local success2, found2 = pcall(function()
        return workspace.Map.Environment.map.Pillars["big-pillars2"]
    end)
    if (success1 and found1) or (success2 and found2) then
        print("")
    else
        print("")
        TeleportService:Teleport(targetPlaceId, player)
        break
    end
    task.wait(2)
end
