local me = game.Players.LocalPlayer
local remote = game.ReplicatedStorage.Remotes.Input
local Erwin1 = {}
local Erwin2 = {}
local Erwin3 = {}

for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
    if v.Name == 'Erwin' and v.Owner.Value == me then
        table.insert(Erwin1, v)
    end
end

if #Erwin1 == 4 then
    while true do
        remote:FireServer('UseSpecialMove', Erwin1[3])
        wait(0.2)
        remote:FireServer('UseSpecialMove', Erwin1[1])
        wait(30.2)
        remote:FireServer('UseSpecialMove', Erwin1[4])
        wait(0.2)
        remote:FireServer('UseSpecialMove', Erwin1[2])
        wait(30.2)

    end
end