task.spawn(function()
    while task.wait(2) do -- ลูปวนทุก 0.5 วินาที ครอบทุกอย่างไว้ข้างใน
        
        -- ==========================================
        -- โซนยิง Remote วางป้อมและข้าม Wave (จากโค้ดคุณ)
        -- ==========================================
        local args1 = {
            "2391446696:4175",
            Vector3.new(774.2693481445312, 108.6319808959961, 300.87628173828125),
            0
        }
        game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args1))
        
        local args2 = {
            "675376953:9091",
            Vector3.new(774.2291259765625, 108.6319808959961, 296.93841552734375),
            0
        }
        game:GetService("ReplicatedStorage"):WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower"):FireServer(unpack(args2))
        
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerVoteToStartMatch"):FireServer()
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerReadyForNextWave"):FireServer()
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerVoteReplay"):FireServer()

        -- ==========================================
        -- โซนวาร์ปหา Hitbox Teleporter 6 (จากโค้ดคุณ)
        -- ==========================================
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local root = character:FindFirstChild("HumanoidRootPart")
        
        local lobby = workspace:FindFirstChild("Lobby")
        if lobby and root then
            local targetHitbox = lobby:FindFirstChild("ClassicPartyTeleporters") 
                and lobby.ClassicPartyTeleporters:FindFirstChild("Teleporter6")
                and lobby.ClassicPartyTeleporters.Teleporter6:FindFirstChild("hitbox", true)

            if targetHitbox then
                root.CFrame = targetHitbox.CFrame * CFrame.new(0, 2, 0)
                -- ไม่ใส่ print นะครับ Console จะได้ไม่ไหลเป็นน้ำ
            end
        end

        -- ==========================================
        -- โซนเช็ค UI เพื่อเข้าเกม (จากโค้ดคุณ)
        -- ==========================================
        local MapSelection = player:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("MainFrames"):WaitForChild("MapSelection")
        local remote = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerQuickstartTeleport")
        
        -- ในเมื่ออยู่ในลูปแล้ว เช็คตรงๆ ไปเลย ไม่ต้อง Connect ให้ยุ่งยาก
        if MapSelection.Visible == true then
            remote:FireServer()
        end

    end
end)
