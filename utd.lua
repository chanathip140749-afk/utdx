
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

-- 1. เช็คก่อนว่าตอนนี้อยู่ใน Lobby หรือเปล่า เพื่อป้องกันการวาร์ปมั่วตอนอยู่แมพอื่น
local lobby = workspace:FindFirstChild("Lobby")

if lobby then
    -- 2. ค่อยๆ มุดหาตาม Path ที่คุณระบุ
    -- ใช้ FindFirstChild(..., true) เพื่อให้มันหา "หลาน" (Recursive) ให้เองเลย จะได้ไม่ต้องเขียนยาว
    local targetHitbox = lobby:FindFirstChild("ClassicPartyTeleporters") 
        and lobby.ClassicPartyTeleporters:FindFirstChild("Teleporter6")
        and lobby.ClassicPartyTeleporters.Teleporter6:FindFirstChild("hitbox", true)

    if targetHitbox then
        -- วาร์ปตัวเราไปทับตำแหน่ง hitbox 
        -- ผมบวกระยะ Y ขึ้นมา 2 หน่วยเพื่อให้ตัวไม่จมดิน/จมแท่นครับ
        root.CFrame = targetHitbox.CFrame * CFrame.new(0, 2, 0)
        print("Successfully teleported to Teleporter 6 Hitbox")
    else
        warn("หา Hitbox ใน Teleporter 6 ไม่เจอ!")
    end
else
    -- ถ้าไม่อยู่ใน Lobby มันจะแค่ Print บอกและไม่วาร์ปครับ
    print("Lobby not found. Skipping teleport to avoid errors in other maps.")
end
local player = game.Players.LocalPlayer
local MapSelection = player:WaitForChild("PlayerGui"):WaitForChild("MainGui")
    :WaitForChild("MainFrames"):WaitForChild("MapSelection")

local remote = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
    :WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerQuickstartTeleport")

-- ดักจับการเปลี่ยนแปลงของค่า Visible
MapSelection:GetPropertyChangedSignal("Visible"):Connect(function()
    if MapSelection.Visible == true then
        print("UI เปิดแล้ว! กำลังส่ง Remote...")
        remote:FireServer()
    end
end)
