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
        remote:FireServer('UseSpecialMove', Erwin1[1])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[3])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[2])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[4])
        wait(15.4)
    end
elseif #Erwin1 == 8 then
    for i = 1, 4 do
        table.insert(Erwin2, Erwin1[1])
        table.remove(Erwin1, 1)
    end
    for i = 1, 4 do
        table.insert(Erwin3, Erwin1[1])
        table.remove(Erwin1, 1)
    end
    while true do
        remote:FireServer('UseSpecialMove', Erwin2[1])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[1])
        wait(14.4)
        remote:FireServer('UseSpecialMove', Erwin2[3])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[3])
        wait(14.4)
        remote:FireServer('UseSpecialMove', Erwin2[2])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[2])
        wait(14.4)
        remote:FireServer('UseSpecialMove', Erwin2[4])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[4])
        wait(14.4)
    end
elseif #Erwin1 > 4 and #Erwin1 < 8 then
    repeat wait(1)
        table.remove(Erwin1, 1)
    until #Erwin1 == 4
    while true do
        remote:FireServer('UseSpecialMove', Erwin1[1])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[3])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[2])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[4])
        wait(15.4)
    end
end
