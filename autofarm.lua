function af(bool) local players = game:GetService("Players")
    local stages = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
    local penguin, gold = workspace:WaitForChild("ChangeCharacter"), workspace:WaitForChild("ClaimRiverResultsGold")
    local client = players.LocalPlayer
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, -4, 0)
        bodyVelocity.Parent = client.Character.HumanoidRootPart
        
        for i = 1, 9 do
            if not client.Character or not client.Character:FindFirstChild("Humanoid") then
                repeat wait() until client.Character and client.Character:FindFirstChild("Humanoid")
            end
        client.Character.HumanoidRootPart.CFrame = stages["CaveStage"..i].DarknessPart.CFrame wait(0.1)
        
      if i == 1 then
            wait(4)
        else
            wait(2)
        end
        
        gold:FireServer()
    end
 
    penguin:FireServer("PenguinCharacter")
    client.Character:Remove()
 
    repeat wait() 
    until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
     local function stop() end if bool == true then start() else stop() end end
    
    -- to autofarm type af(true), to stop autofarm type af(false
