a
zawaadas
ROBLOX

a [Sols],  — 17/06/2026 1:16 PM
Image
igor — 17/06/2026 1:32 PM
Image
a [Sols],  — 17/06/2026 2:21 PM
MACUS ZW SRAM\
You missed a call from 
igor
 that lasted 3 minutes. — 17/06/2026 2:25 PM
You missed a call from 
igor
 that lasted 3 minutes. — 17/06/2026 2:35 PM
a
 started a call that lasted 3 minutes. — 17/06/2026 2:52 PM
igor
 started a call that lasted 4 minutes. — 17/06/2026 2:57 PM
igor
 started a call that lasted 4 minutes. — 17/06/2026 3:23 PM
a [Sols],  — 17/06/2026 3:23 PM
CZEKAJ
a
 started a call that lasted a few seconds. — 17/06/2026 3:32 PM
a
 started a call that lasted 3 minutes. — 17/06/2026 7:01 PM
igor
 started a call that lasted 2 minutes. — 17/06/2026 7:38 PM
a
 started a call that lasted 3 minutes. — 17/06/2026 7:50 PM
igor
 started a call that lasted a few seconds. — 17/06/2026 8:22 PM
igor — 17/06/2026 8:22 PM
czeka
a
 started a call that lasted 20 minutes. — 17/06/2026 8:25 PM
a [Sols],  — 17/06/2026 8:27 PM
Image
a
 started a call that lasted 3 minutes. — 17/06/2026 9:38 PM
a
 started a call that lasted 3 minutes. — 17/06/2026 10:23 PM
a
 started a call that lasted 3 minutes. — Yesterday at 12:43 PM
a [Sols],  — Yesterday at 1:08 PM
Image
igor
 started a call that lasted an hour. — Yesterday at 5:41 PM
igor
 started a call that lasted 24 minutes. — Yesterday at 7:25 PM
a
 started a call that lasted 20 minutes. — Yesterday at 7:54 PM
igor — Yesterday at 7:54 PM
czekaj
3:00
a
 started a call that lasted a minute. — Yesterday at 8:17 PM
a
 started a call that lasted a minute. — Yesterday at 9:03 PM
a
 started a call that lasted 3 minutes. — 1:46 PM
Clyde
APP
 — 1:49 PM
It appears you’ve been by yourself in this call for more than 3 minutes. The bandwidth patrol has asked me to disconnect you to save bandwidth. That stuff doesn’t grow on trees!
Only you can see this • Dismiss message
a
 started a call that lasted 3 minutes. — 2:03 PM
Clyde
APP
 — 2:06 PM
It appears you’ve been by yourself in this call for more than 3 minutes. The bandwidth patrol has asked me to disconnect you to save bandwidth. That stuff doesn’t grow on trees!
Only you can see this • Dismiss message
a
 started a call that lasted 3 minutes. — 3:06 PM
Clyde
APP
 — 3:09 PM
It appears you’ve been by yourself in this call for more than 3 minutes. The bandwidth patrol has asked me to disconnect you to save bandwidth. That stuff doesn’t grow on trees!
Only you can see this • Dismiss message
a [Sols],  — 3:13 PM
ol
igor — 3:13 PM
co
a [Sols],  — 3:13 PM
MAcusss
chcesz zagrac
igor — 3:13 PM
jem siadanie
a [Sols],  — 3:13 PM
A jak zkonczysz
igor — 3:13 PM
ok
a w co
a [Sols],  — 3:14 PM
de,pongolody\
Image
igor — 3:14 PM
]\
ok\
igor
 started a call. — 3:29 PM
a [Sols],  — 5:01 PM
Image
igor — 6:55 PM
loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-STRANGER-THINGS-'85-Ringta-Hub-206652"))()
a [Sols],  — 7:01 PM
-- GUI FLY I SZYBKOSC
-- ZROBIONE PRZEZ ZAWUSA

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Configuration variables
local NORMAL_SPEED = 16
local FAST_SPEED = 100
local FLY_SPEED = 50

local isFlying = false
local isRunningFast = false
local flyConnection = nil

-- Create a body velocity object for flying stability
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.maxForce = Vector3.new(0, 0, 0)
bodyVelocity.velocity = Vector3.new(0, 0, 0)
bodyVelocity.Parent = rootPart

-- Handle character respawns smoothly
player.CharacterAdded:Connect(function(newCharacter)
	character = newCharacter
	humanoid = character:WaitForChild("Humanoid")
	rootPart = character:WaitForChild("HumanoidRootPart")
	bodyVelocity.Parent = rootPart
	isFlying = false
	isRunningFast = false
end)

----------------------------------------------------------------
-- GUI
----------------------------------------------------------------

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MovementStatusGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 220, 0, 100)
mainFrame.Position = UDim2.new(0, 20, 1, -120) -- Positioned bottom-left
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BackgroundTransparency = 0.3
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = mainFrame

-- FLY STATUS NAPIS
local flyLabel = Instance.new("TextLabel")
flyLabel.Size = UDim2.new(1, -20, 0, 40)
flyLabel.Position = UDim2.new(0, 10, 0, 10)
flyLabel.BackgroundTransparency = 1
flyLabel.Font = Enum.Font.GothamBold
flyLabel.TextSize = 16
flyLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
flyLabel.TextXAlignment = Enum.TextXAlignment.Left
flyLabel.Text = "✈️ FLY MODE: OFF [E]"
flyLabel.Parent = mainFrame

-- Speed Status Text Label
local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, -20, 0, 40)
speedLabel.Position = UDim2.new(0, 10, 0, 50)
speedLabel.BackgroundTransparency = 1
speedLabel.Font = Enum.Font.GothamBold
speedLabel.TextSize = 16
speedLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
speedLabel.TextXAlignment = Enum.TextXAlignment.Left
speedLabel.Text = "⚡ FAST RUN: OFF [R]"
speedLabel.Parent = mainFrame

----------------------------------------------------------------
-- LOGIKA RUSZANIA
----------------------------------------------------------------

-- FUNKCJA LATANIA
local function updateFlight()
	if not isFlying then return end
	
	local camera = workspace.CurrentCamera
	local moveDirection = Vector3.new(0, 0, 0)
	
	if UserInputService:IsKeyDown(Enum.KeyCode.W) then
		moveDirection = moveDirection + camera.CFrame.LookVector
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.S) then
		moveDirection = moveDirection - camera.CFrame.LookVector
	end
... (73 lines left)

message.txt
6 KB
a [Sols],  — 7:16 PM
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local isFlying = false
local isRunning = false
local isNoclip = false
local isGuiVisible = true

local flySpeed = 50
local runSpeed = 100
local normalSpeed = 16

local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.maxForce = Vector3.new(0, 0, 0)
bodyVelocity.velocity = Vector3.new(0, 0, 0)
bodyVelocity.Parent = rootPart

player.CharacterAdded:Connect(function(newCharacter)
	character = newCharacter
	humanoid = character:WaitForChild("Humanoid")
	rootPart = character:WaitForChild("HumanoidRootPart")
	bodyVelocity.Parent = rootPart
	isFlying = false
	isRunning = false
	isNoclip = false
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CheatMenuGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 260, 0, 220)
mainFrame.Position = UDim2.new(0.05, 0, 0.4, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
mainFrame.BackgroundTransparency = 0.15
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 16)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Thickness = 2
mainStroke.Color = Color3.fromRGB(254, 154, 0)
mainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
mainStroke.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 45)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 20
titleLabel.TextColor3 = Color3.fromRGB(254, 154, 0)
titleLabel.Text = "SPERMA HUB"
titleLabel.Parent = mainFrame

local hintLabel = Instance.new("TextLabel")
hintLabel.Size = UDim2.new(1, 0, 0, 20)
hintLabel.Position = UDim2.new(0, 0, 0, 35)
hintLabel.BackgroundTransparency = 1
hintLabel.Font = Enum.Font.GothamBold
hintLabel.TextSize = 12
hintLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
hintLabel.Text = "ZAWUS TO GOAT"
hintLabel.Parent = mainFrame

local dragging, dragInput, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = mainFrame.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

mainFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
... (146 lines left)

message.txt
9 KB
a [Sols],  — 7:52 PM
local PLRS, RS, UIS, TS = game:GetService("Players"), game:GetService("RunService"), game:GetService("UserInputService"), game:GetService("TweenService")
local p, c = PLRS.LocalPlayer, nil local h, rP
local fly, run, nc, esp, v = false, false, false, false, true
local fS, rS, nS = 50, 100, 16
local bV = Instance.new("BodyVelocity") bV.maxForce = Vector3.new(0,0,0) bV.velocity = Vector3.new(0,0,0)
local function charInit(char)

message.txt
8 KB
igor — 8:07 PM
local part = script.Parent

part.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        part.Color = Color3.fromRGB(255, 0, 0) -- czerwony
    end
end)
a [Sols],  — 8:09 PM
local PLRS = game:GetService("Players")
local RS = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")

local lp = PLRS.LocalPlayer

message.txt
9 KB
a [Sols],  — 8:23 PM
adaszawa12@gmail.com
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local lp = Players.LocalPlayer

message.txt
10 KB
a [Sols],  — 8:34 PM
local PLRS, RS, UIS, TS = game:GetService("Players"), game:GetService("RunService"), game:GetService("UserInputService"), game:GetService("TweenService")
local lp, cam = PLRS.LocalPlayer, workspace.CurrentCamera
local aim, esp, v, hold, cur, boxes = false, false, true, false, nil, {}
local fov = Drawing.new("Circle") fov.Radius, fov.Thickness, fov.Filled, fov.Visible, fov.Color = 200, 2, false, false, Color3.new(1,1,1)
local SG, MF = Instance.new("ScreenGui"), Instance.new("Frame")
SG.Name, SG.ResetOnSpawn, SG.Parent = "ZH", false, lp:WaitForChild("PlayerGui")
MF.Size, MF.Position, MF.BackgroundColor3, MF.BackgroundTransparency, MF.BorderSizePixel, MF.Active, MF.Draggable, MF.Parent = UDim2.new(0,240,0,210), UDim2.new(0.05,0,0.4,0), Color3.fromRGB(12,12,14), 0.15, 0, true, true, SG
local mC, mS = Instance.new("UICorner"), Instance.new("UIStroke") mC.CornerRadius, mC.Parent = UDim.new(0,14), MF mS.Thickness, mS.ApplyStrokeMode, mS.Color, mS.Parent = 2.5, Enum.ApplyStrokeMode.Border, Color3.new(1,1,1), MF
local tL, aL, hL = Instance.new("TextLabel"), Instance.new("TextLabel"), Instance.new("TextLabel")
local function lbl(l, s, p, f, sz, t, c) l.Size, l.Position, l.BackgroundTransparency, l.Font, l.TextSize, l.Text, l.TextColor3, l.Parent = s, p, 1, f, sz, t, c, MF end
lbl(tL, UDim2.new(1,0,0,45), UDim2.new(0,0,0,0), Enum.Font.GothamBold, 22, "zawa test", Color3.new(1,1,1))
lbl(aL, UDim2.new(1,0,0,20), UDim2.new(0,0,0,36), Enum.Font.GothamSemibold, 11, "zrobione przez zawusa", Color3.fromRGB(150,150,150))
lbl(hL, UDim2.new(1,0,0,15), UDim2.new(0,0,0,185), Enum.Font.GothamSemibold, 10, "kliknij [G] aby schowac", Color3.fromRGB(120,120,120))

local function createRow(n, k, y, act)
	local b = Instance.new("TextButton") b.Size, b.Position, b.BackgroundColor3, b.BackgroundTransparency, b.BorderSizePixel, b.Text, b.Parent = UDim2.new(1,-32,0,42), UDim2.new(0,16,0,y), Color3.fromRGB(22,22,28), 0.2, 0, "", MF
	local rC, rS = Instance.new("UICorner"), Instance.new("UIStroke") rC.CornerRadius, rC.Parent = UDim.new(0,10), b rS.Thickness, rS.Color, rS.Parent = 1, Color3.fromRGB(45,45,55), b
	local tx = Instance.new("TextLabel") tx.Size, tx.Position, tx.BackgroundTransparency, tx.Font, tx.TextSize, tx.TextColor3, tx.TextXAlignment, tx.Text, tx.Parent = UDim2.new(0.7,0,1,0), UDim2.new(0,14,0,0), 1, Enum.Font.GothamBold, 12, Color3.fromRGB(220,220,230), Enum.TextXAlignment.Left, n.." ["..k.."]", b
	local dt = Instance.new("Frame") dt.Size, dt.Position, dt.BackgroundColor3, dt.BorderSizePixel, dt.Parent = UDim2.new(0,8,0,8), UDim2.new(1,-22,0.5,-4), Color3.fromRGB(240,70,70), 0, b
	local dC = Instance.new("UICorner") dC.CornerRadius, dC.Parent = UDim.new(1,0), dt
	b.MouseEnter:Connect(function() if v then TS:Create(b, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(32,32,42)}):Play() end end)
	b.MouseLeave:Connect(function() if v then TS:Create(b, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(22,22,28)}):Play() end end)
	b.MouseButton1Click:Connect(act) return b, dt, rS
end

local function updV(d, s, a) TS:Create(d, TweenInfo.new(0.2), {BackgroundColor3 = a and Color3.new(1,1,1) or Color3.fromRGB(240,70,70)}):Play() TS:Create(s, TweenInfo.new(0.2), {Color = a and Color3.new(1,1,1) or Color3.fromRGB(45,45,55)}):Play() end

local function chkChar(m)
	if not m or m == lp.Character then return nil end
	local h = m:FindFirstChild("Head") or m:FindFirstChild("FakeHead")
	if not h then for _, p in pairs(m:GetChildren()) do if p:IsA("BasePart") and string.find(string.lower(p.Name), "head") then h = p break end end end
	local hu = m:FindFirstChildOfClass("Humanoid") if hu and hu.Health <= 0 then return nil end return h
end

local function getTargs()
	local t = {} for _, p in pairs(PLRS:GetPlayers()) do if p.Character then table.insert(t, p.Character) end end
	local f = workspace:FindFirstChild("Players") or workspace:FindFirstChild("Enemies") if f then for _, c in pairs(f:GetChildren()) do if c:IsA("Model") then table.insert(t, c) end end end
	for _, c in pairs(workspace:GetChildren()) do if c:IsA("Model") and c:FindFirstChildOfClass("Humanoid") and c ~= lp.Character then table.insert(t, c) end end return t
end

local function getPlr()
	local cP, sD = nil, 200 local mP = UIS:GetMouseLocation()
	for _, m in pairs(getTargs()) do
		local p = chkChar(m) if p then
			local sP, oS = cam:WorldToViewportPoint(p.Position)
			if oS then local mg = (Vector2.new(sP.X, sP.Y) - mP).Magnitude if mg < sD then cP, sD = p, mg end end
		end
	end return cP
end

local function cBox()
	local b = {
		L1 = Drawing.new("Line"), L2 = Drawing.new("Line"), L3 = Drawing.new("Line"), L4 = Drawing.new("Line"),
		O1 = Drawing.new("Line"), O2 = Drawing.new("Line"), O3 = Drawing.new("Line"), O4 = Drawing.new("Line"),
		Tracer = Drawing.new("Line"),
		Text = Drawing.new("Text")
	}
	for i, l in pairs(b) do
		if i ~= "Text" then
			l.Thickness, l.Transparency, l.Visible = 1.5, 0.9, false
			if string.sub(i, 1, 1) == "O" then
				l.Color = Color3.new(0, 0, 0)
				l.Thickness = 3
				l.Transparency = 0.5
			else
				l.Color = Color3.new(1, 1, 1)
			end
		else
			l.Color, l.Size, l.Center, l.Outline, l.OutlineColor, l.Visible = Color3.fromRGB(240, 240, 240), 13, true, true, Color3.new(0,0,0), false
			l.Font = 2
		end
	end
	b.Tracer.Color = Color3.fromRGB(255, 255, 255)
	b.Tracer.Thickness = 1
	b.Tracer.Transparency = 0.35
	return b
end

local function clrBoxes() for _, b in pairs(boxes) do for _, l in pairs(b) do l:Destroy() end end boxes = {} end

local b1, d1, s1 = createRow("AIMBOT", "T / RMB", 72, function() aim = not aim if not aim then fov.Visible, cur = false, nil end updV(d1, s1, aim) end)
local b2, d2, s2 = createRow("PLAYER ESP", "H", 124, function() esp = not esp if not esp then clrBoxes() end updV(d2, s2, esp) end)

RS.RenderStepped:Connect(function()
	fov.Position = UIS:GetMouseLocation()
	if aim and hold then fov.Visible = true
		if cur and cur.Parent and cur.Name ~= "Head" then cur = chkChar(cur.Parent) end
		if not cur or not cur.Parent or (cur.Parent:FindFirstChildOfClass("Humanoid") and cur.Parent:FindFirstChildOfClass("Humanoid").Health <= 0) then cur = getPlr() end
		if cur then cam.CFrame = CFrame.new(cam.CFrame.Position, cur.Position) end
	else fov.Visible, cur = false, nil end
	
	if esp then
		local tgs, upm = getTargs(), {}
		for _, m in pairs(tgs) do if m and m.Parent and m ~= lp.Character then
			local hd, hr = chkChar(m), m:FindFirstChild("HumanoidRootPart") or m:FindFirstChildOfClass("BasePart")
			if hd and hr then upm[m] = true if not boxes[m] then boxes[m] = cBox() end
				local b, hP, hO = boxes[m], cam:WorldToViewportPoint(hd.Position + Vector3.new(0, 0.6, 0))
				local lP, lO = cam:WorldToViewportPoint(hr.Position - Vector3.new(0, 3.2, 0))
				
				if hO and lO then
... (48 lines left)

message.txt
10 KB
a [Sols],  — 9:19 PM
Image
local PLRS = game:GetService("Players")
local RS = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")

local lp = PLRS.LocalPlayer

message.txt
21 KB
local PLRS = game:GetService("Players")
local RS = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")

local lp = PLRS.LocalPlayer
local cam = workspace.CurrentCamera
local aim, esp, fly, autoShoot, v, hold, cur, boxes = false, false, false, false, true, false, nil, {}
local isShooting = false
local lastTarget = nil
local targetLockTime = 0

local SG = Instance.new("ScreenGui")
SG.Name = "ZawaTestHubGui"
SG.ResetOnSpawn = false
SG.Parent = lp:WaitForChild("PlayerGui")

-- FAKE LOADING SCREEN
local LD = Instance.new("Frame")
LD.Size = UDim2.new(0, 260, 0, 100)
LD.Position = UDim2.new(0.5, -130, 0.5, -50)
LD.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
LD.BorderSizePixel = 0
LD.Parent = SG

local ldCorner = Instance.new("UICorner")
ldCorner.CornerRadius = UDim.new(0, 10)
ldCorner.Parent = LD

local ldStroke = Instance.new("UIStroke")
ldStroke.Thickness = 1.5
ldStroke.Color = Color3.fromRGB(40, 40, 45)
ldStroke.Parent = LD

local ldText = Instance.new("TextLabel")
ldText.Size = UDim2.new(1, 0, 0, 40)
ldText.Position = UDim2.new(0, 0, 0, 15)
ldText.BackgroundTransparency = 1
ldText.Font = Enum.Font.GothamBold
ldText.TextSize = 24
ldText.TextColor3 = Color3.new(1, 1, 1)
ldText.Text = "ZAWUS 67"
ldText.Parent = LD

local ldBarBg = Instance.new("Frame")
ldBarBg.Size = UDim2.new(1, -40, 0, 4)
ldBarBg.Position = UDim2.new(0, 20, 0, 65)
ldBarBg.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
ldBarBg.BorderSizePixel = 0
ldBarBg.Parent = LD

local ldBarBgCorner = Instance.new("UICorner")
ldBarBgCorner.CornerRadius = UDim.new(1, 0)
ldBarBgCorner.Parent = ldBarBg

local ldBarFill = Instance.new("Frame")
ldBarFill.Size = UDim2.new(0, 0, 1, 0)
ldBarFill.BackgroundColor3 = Color3.new(1, 1, 1)
ldBarFill.BorderSizePixel = 0
ldBarFill.Parent = ldBarBg

local ldBarFillCorner = Instance.new("UICorner")
ldBarFillCorner.CornerRadius = UDim.new(1, 0)
ldBarFillCorner.Parent = ldBarFill

-- DYNAMICZNE KÓŁKO FOV
local fovFrame = Instance.new("Frame")
fovFrame.Size = UDim2.new(0, 400, 0, 400)
fovFrame.AnchorPoint = Vector2.new(0.5, 0.5)
fovFrame.BackgroundTransparency = 1
fovFrame.Visible = false
fovFrame.Parent = SG

local fovStroke = Instance.new("UIStroke")
fovStroke.Thickness = 1.5
fovStroke.Color = Color3.fromRGB(240, 240, 240)
fovStroke.Parent = fovFrame

local fovCorner = Instance.new("UICorner")
fovCorner.CornerRadius = UDim.new(1, 0)
fovCorner.Parent = fovFrame

-- CZYSZCZE I NOWOCZESNE MENU
local MF = Instance.new("Frame")
MF.Size = UDim2.new(0, 240, 0, 300)
MF.Position = UDim2.new(0.05, 0, 0.4, 0)
MF.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
MF.BackgroundTransparency = 0.05
MF.BorderSizePixel = 0
MF.Visible = false
MF.Active = true
MF.Draggable = true
MF.Parent = SG

local mC = Instance.new("UICorner")
mC.CornerRadius = UDim.new(0, 10)
mC.Parent = MF

local mS = Instance.new("UIStroke")
mS.Thickness = 1.5
... (487 lines left)

message.txt
21 KB
﻿
local PLRS = game:GetService("Players")
local RS = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")

local lp = PLRS.LocalPlayer
local cam = workspace.CurrentCamera
local aim, esp, fly, autoShoot, v, hold, cur, boxes = false, false, false, false, true, false, nil, {}
local isShooting = false
local lastTarget = nil
local targetLockTime = 0

local SG = Instance.new("ScreenGui")
SG.Name = "ZawaTestHubGui"
SG.ResetOnSpawn = false
SG.Parent = lp:WaitForChild("PlayerGui")

-- FAKE LOADING SCREEN
local LD = Instance.new("Frame")
LD.Size = UDim2.new(0, 260, 0, 100)
LD.Position = UDim2.new(0.5, -130, 0.5, -50)
LD.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
LD.BorderSizePixel = 0
LD.Parent = SG

local ldCorner = Instance.new("UICorner")
ldCorner.CornerRadius = UDim.new(0, 10)
ldCorner.Parent = LD

local ldStroke = Instance.new("UIStroke")
ldStroke.Thickness = 1.5
ldStroke.Color = Color3.fromRGB(40, 40, 45)
ldStroke.Parent = LD

local ldText = Instance.new("TextLabel")
ldText.Size = UDim2.new(1, 0, 0, 40)
ldText.Position = UDim2.new(0, 0, 0, 15)
ldText.BackgroundTransparency = 1
ldText.Font = Enum.Font.GothamBold
ldText.TextSize = 24
ldText.TextColor3 = Color3.new(1, 1, 1)
ldText.Text = "ZAWUS 67"
ldText.Parent = LD

local ldBarBg = Instance.new("Frame")
ldBarBg.Size = UDim2.new(1, -40, 0, 4)
ldBarBg.Position = UDim2.new(0, 20, 0, 65)
ldBarBg.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
ldBarBg.BorderSizePixel = 0
ldBarBg.Parent = LD

local ldBarBgCorner = Instance.new("UICorner")
ldBarBgCorner.CornerRadius = UDim.new(1, 0)
ldBarBgCorner.Parent = ldBarBg

local ldBarFill = Instance.new("Frame")
ldBarFill.Size = UDim2.new(0, 0, 1, 0)
ldBarFill.BackgroundColor3 = Color3.new(1, 1, 1)
ldBarFill.BorderSizePixel = 0
ldBarFill.Parent = ldBarBg

local ldBarFillCorner = Instance.new("UICorner")
ldBarFillCorner.CornerRadius = UDim.new(1, 0)
ldBarFillCorner.Parent = ldBarFill

-- DYNAMICZNE KÓŁKO FOV
local fovFrame = Instance.new("Frame")
fovFrame.Size = UDim2.new(0, 400, 0, 400)
fovFrame.AnchorPoint = Vector2.new(0.5, 0.5)
fovFrame.BackgroundTransparency = 1
fovFrame.Visible = false
fovFrame.Parent = SG

local fovStroke = Instance.new("UIStroke")
fovStroke.Thickness = 1.5
fovStroke.Color = Color3.fromRGB(240, 240, 240)
fovStroke.Parent = fovFrame

local fovCorner = Instance.new("UICorner")
fovCorner.CornerRadius = UDim.new(1, 0)
fovCorner.Parent = fovFrame

-- CZYSZCZE I NOWOCZESNE MENU
local MF = Instance.new("Frame")
MF.Size = UDim2.new(0, 240, 0, 300)
MF.Position = UDim2.new(0.05, 0, 0.4, 0)
MF.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
MF.BackgroundTransparency = 0.05
MF.BorderSizePixel = 0
MF.Visible = false
MF.Active = true
MF.Draggable = true
MF.Parent = SG

local mC = Instance.new("UICorner")
mC.CornerRadius = UDim.new(0, 10)
mC.Parent = MF

local mS = Instance.new("UIStroke")
mS.Thickness = 1.5
mS.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
mS.Color = Color3.fromRGB(40, 40, 45)
mS.Parent = MF

local tL = Instance.new("TextLabel")
local aL = Instance.new("TextLabel")
local hL = Instance.new("TextLabel")

local function lbl(l, s, p, f, sz, t, c)
	l.Size = s
	l.Position = p
	l.BackgroundTransparency = 1
	l.Font = f
	l.TextSize = sz
	l.Text = t
	l.TextColor3 = c
	l.Parent = MF
end

lbl(tL, UDim2.new(1, 0, 0, 40), UDim2.new(0, 16, 0, 5), Enum.Font.GothamBold, 18, "zawa test", Color3.new(1, 1, 1))
tL.TextXAlignment = Enum.TextXAlignment.Left

lbl(aL, UDim2.new(1, 0, 0, 15), UDim2.new(0, 16, 0, 26), Enum.Font.GothamSemibold, 10, "by zawusa", Color3.fromRGB(120, 120, 125))
aL.TextXAlignment = Enum.TextXAlignment.Left

local sep = Instance.new("Frame")
sep.Size = UDim2.new(1, -32, 0, 1)
sep.Position = UDim2.new(0, 16, 0, 48)
sep.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
sep.BorderSizePixel = 0
sep.Parent = MF

lbl(hL, UDim2.new(1, 0, 0, 15), UDim2.new(0, 0, 1, -20), Enum.Font.GothamSemibold, 9, "kliknij [G] aby schowac", Color3.fromRGB(90, 90, 95))

local function createRow(n, k, y, act)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(1, -32, 0, 38)
	b.Position = UDim2.new(0, 16, 0, y)
	b.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
	b.BorderSizePixel = 0
	b.Text = ""
	b.Parent = MF

	local rC = Instance.new("UICorner")
	rC.CornerRadius = UDim.new(0, 6)
	rC.Parent = b

	local rS = Instance.new("UIStroke")
	rS.Thickness = 1
	rS.Color = Color3.fromRGB(28, 28, 32)
	rS.Parent = b

	local tx = Instance.new("TextLabel")
	tx.Size = UDim2.new(0.6, 0, 1, 0)
	tx.Position = UDim2.new(0, 12, 0, 0)
	tx.BackgroundTransparency = 1
	tx.Font = Enum.Font.GothamBold
	tx.TextSize = 11
	tx.TextColor3 = Color3.fromRGB(180, 180, 185)
	tx.TextXAlignment = Enum.TextXAlignment.Left
	tx.Text = n
	tx.Parent = b

	local st = Instance.new("TextLabel")
	st.Size = UDim2.new(0.4, 0, 1, 0)
	st.Position = UDim2.new(0.6, -12, 0, 0)
	st.BackgroundTransparency = 1
	st.Font = Enum.Font.GothamBold
	st.TextSize = 11
	st.TextColor3 = Color3.fromRGB(220, 60, 60)
	st.TextXAlignment = Enum.TextXAlignment.Right
	st.Text = "OFF [" .. k .. "]"
	st.Parent = b

	b.MouseEnter:Connect(function()
		if v then
			TS:Create(b, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(24, 24, 30)}):Play()
		end
	end)
	b.MouseLeave:Connect(function()
		if v then
			TS:Create(b, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(18, 18, 22)}):Play()
		end
	end)
	b.MouseButton1Click:Connect(act)
	return b, st, rS, tx
end

local function updV(st, s, a, n, k)
	local statusColor = a and Color3.fromRGB(60, 220, 120) or Color3.fromRGB(220, 60, 60)
	local strokeColor = a and Color3.fromRGB(50, 50, 60) or Color3.fromRGB(28, 28, 32)
	st.Text = a and "ON [" .. k .. "]" or "OFF [" .. k .. "]"
	TS:Create(st, TweenInfo.new(0.15), {TextColor3 = statusColor}):Play()
	TS:Create(s, TweenInfo.new(0.15), {Color = strokeColor}):Play()
end

local function chkChar(m)
	if not m or m == lp.Character then return nil end
	local h = m:FindFirstChild("Head") or m:FindFirstChild("FakeHead")
	if not h then
		for _, p in pairs(m:GetChildren()) do
			if p:IsA("BasePart") and string.find(string.lower(p.Name), "head") then
				h = p
				break
			end
		end
	end
	local hu = m:FindFirstChildOfClass("Humanoid")
	if hu and hu.Health <= 0 then return nil end
	return h
end

local function getTargs()
	local t = {}
	for _, p in pairs(PLRS:GetPlayers()) do
		if p.Character then table.insert(t, p.Character) end
	end
	local f = workspace:FindFirstChild("Players") or workspace:FindFirstChild("Enemies")
	if f then
		for _, c in pairs(f:GetChildren()) do
			if c:IsA("Model") then table.insert(t, c) end
		end
	end
	for _, c in pairs(workspace:GetChildren()) do
		if c:IsA("Model") and c:FindFirstChildOfClass("Humanoid") and c ~= lp.Character then
			table.insert(t, c)
		end
	end
	return t
end

local function isVisible(targetPart)
	if not targetPart or not targetPart.Parent then return false end
	local origin = cam.CFrame.Position
	local direction = (targetPart.Position - origin)
	
	local raycastParams = RaycastParams.new()
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	
	local ignoreList = {lp.Character, SG}
	if cam:FindFirstChildOfClass("Model") then table.insert(ignoreList, cam:FindFirstChildOfClass("Model")) end
	if workspace:FindFirstChild("Ignore") then table.insert(ignoreList, workspace:FindFirstChild("Ignore")) end
	
	raycastParams.FilterDescendantsInstances = ignoreList
	
	local result = workspace:Raycast(origin, direction, raycastParams)
	if not result or result.Instance:IsDescendantOf(targetPart.Parent) then
		return true
	end
	return false
end

local function getPlr()
	local cP, sD = nil, 200
	local mP = cam.ViewportSize / 2
	for _, m in pairs(getTargs()) do
		local p = chkChar(m)
		if p then
			local sP, oS = cam:WorldToViewportPoint(p.Position)
			if oS then
				local mg = (Vector2.new(sP.X, sP.Y) - mP).Magnitude
				if mg < sD then
					cP = p
					sD = mg
				end
			end
		end
	end
	return cP
end

local function cBox()
	local mainBox = Instance.new("Frame")
	mainBox.Name = "ZawaEspBox"
	mainBox.BackgroundTransparency = 1
	mainBox.Size = UDim2.new(0, 100, 0, 100)
	mainBox.Parent = SG

	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 1.5
	stroke.Color = Color3.new(1, 1, 1)
	stroke.Parent = mainBox

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 5)
	corner.Parent = mainBox

	local inlineStroke = Instance.new("UIStroke")
	inlineStroke.Thickness = 2.5
	inlineStroke.Color = Color3.new(0, 0, 0)
	inlineStroke.Transparency = 0.6
	inlineStroke.Parent = mainBox

	local tracerLine = Instance.new("Frame")
	tracerLine.Name = "ZawaTracer"
	tracerLine.AnchorPoint = Vector2.new(0.5, 0)
	tracerLine.BackgroundColor3 = Color3.new(1, 1, 1)
	tracerLine.BackgroundTransparency = 0.5
	tracerLine.BorderSizePixel = 0
	tracerLine.Parent = SG

	local tagContainer = Instance.new("Frame")
	tagContainer.Size = UDim2.new(0, 42, 0, 15)
	tagContainer.Position = UDim2.new(0.5, -21, 1, 4)
	tagContainer.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
	tagContainer.BackgroundTransparency = 0.2
	tagContainer.BorderSizePixel = 0
	tagContainer.Parent = mainBox

	local tagCorner = Instance.new("UICorner")
	tagCorner.CornerRadius = UDim.new(0, 3)
	tagCorner.Parent = tagContainer

	local distanceText = Instance.new("TextLabel")
	distanceText.Size = UDim2.new(1, 0, 1, 0)
	distanceText.BackgroundTransparency = 1
	distanceText.Font = Enum.Font.GothamBold
	distanceText.TextSize = 9
	distanceText.TextColor3 = Color3.fromRGB(240, 240, 240)
	distanceText.Text = ""
	distanceText.Parent = tagContainer

	return mainBox, distanceText, tracerLine
end

local function clrBoxes()
	for _, b in pairs(boxes) do
		if b.Main then b.Main:Destroy() end
		if b.Tracer then b.Tracer:Destroy() end
	end
	boxes = {}
end

local b1, d1, s1 = createRow("AIMBOT", "T / RMB", 60, function()
	aim = not aim
	if not aim then fovFrame.Visible, cur = false, nil end
	updV(d1, s1, aim, "AIMBOT", "T / RMB")
end)

local b2, d2, s2 = createRow("PLAYER ESP", "H", 108, function()
    esp = not esp
    if not esp then clrBoxes() end
    updV(d2, s2, esp, "PLAYER ESP", "H")
end)

local b3, d3, s3 = createRow("FLY MODE", "E", 156, function()
    fly = not fly
    local hu = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
    if hu then hu.PlatformStand = fly end
    updV(d3, s3, fly, "FLY MODE", "E")
end)

local b4, d4, s4 = createRow("AUTOSHOOT", "N", 204, function()
    autoShoot = not autoShoot
    updV(d4, s4, autoShoot, "AUTOSHOOT", "N")
end)

local function animUI()
    local fT = v and 0.05 or 1
    local vT = v and 0 or 1
    local bT = v and 0 or 1
    TS:Create(MF, TweenInfo.new(0.2), {BackgroundTransparency = fT}):Play()
    TS:Create(mS, TweenInfo.new(0.2), {Transparency = vT}):Play()
    TS:Create(tL, TweenInfo.new(0.2), {TextTransparency = vT}):Play()
    TS:Create(aL, TweenInfo.new(0.2), {TextTransparency = vT}):Play()
    TS:Create(hL, TweenInfo.new(0.2), {TextTransparency = vT}):Play()
    TS:Create(sep, TweenInfo.new(0.2), {BackgroundTransparency = v and 0 or 1}):Play()
    
    for _, ch in pairs(MF:GetChildren()) do
        if ch:IsA("TextButton") then
            local iSt = ch:FindFirstChild("TextLabel")
            local iS = ch:FindFirstChildOfClass("UIStroke")
            local RowText = ch:FindFirstChild("RowText")
            TS:Create(ch, TweenInfo.new(0.2), {BackgroundTransparency = v and 0.2 or 1}):Play()
            if iSt then TS:Create(iSt, TweenInfo.new(0.2), {TextTransparency = vT}):Play() end
            if iS then TS:Create(iS, TweenInfo.new(0.2), {Transparency = vT}):Play() end
            if RowText then TS:Create(RowText, TweenInfo.new(0.2), {TextTransparency = vT}):Play() end
        end
    end
end

RS.RenderStepped:Connect(function()
    local mP = cam.ViewportSize / 2
    fovFrame.Position = UDim2.new(0, mP.X, 0, mP.Y)
    
    if aim then
        fovFrame.Visible = true
    else
        fovFrame.Visible = false
    end
    
    if aim and hold then
        if cur and cur.Parent and cur.Name ~= "Head" then
            cur = chkChar(cur.Parent)
        end
        
        if not cur or not cur.Parent or (cur.Parent:FindFirstChildOfClass("Humanoid") and cur.Parent:FindFirstChildOfClass("Humanoid").Health <= 0) then
            cur = getPlr()
        end
        
        if cur then
            cam.CFrame = CFrame.new(cam.CFrame.Position, cur.Position)
            
            if autoShoot and isVisible(cur) then
                local screenPos, onScreen = cam:WorldToViewportPoint(cur.Position)
                if onScreen and (Vector2.new(screenPos.X, screenPos.Y) - mP).Magnitude < 30 then
                    if lastTarget ~= cur then
                        lastTarget = cur
                        targetLockTime = tick()
                    end
                    
                    if tick() - targetLockTime >= 0.15 then
                        if not isShooting then
                            isShooting = true
                            task.spawn(function()
                                local VirtualInputManager = game:GetService("VirtualInputManager")
                                if VirtualInputManager then
                                    VirtualInputManager:SendMouseButtonEvent(mP.X, mP.Y, 0, true, game, 1)
                                    task.wait(0.02)
                                    VirtualInputManager:SendMouseButtonEvent(mP.X, mP.Y, 0, false, game, 1)
                                end
                                task.wait(0.03)
                                isShooting = false
                            end)
                        end
                    end
                else
                    if lastTarget == cur then lastTarget = nil end
                end
            else
                if lastTarget == cur then lastTarget = nil end
            end
        else
            lastTarget = nil
        end
    else
        cur = nil
        lastTarget = nil
    end
    
    local ch = lp.Character
    local rP = ch and ch:FindFirstChild("HumanoidRootPart")
    
    if fly and ch and rP and rP.Parent then
        local mD = Vector3.new(0, 0, 0)
        if UIS:IsKeyDown(Enum.KeyCode.W) then mD = mD + cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then mD = mD - cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then mD = mD - cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then mD = mD + cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then mD = mD + Vector3.new(0, 1, 0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then mD = mD - Vector3.new(0, 1, 0) end
        
        rP.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        rP.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
        
        for _, pt in pairs(ch:GetDescendants()) do
            if pt:IsA("BasePart") and pt.CanCollide then
                pt.CanCollide = false
            end
        end
        
        if mD.Magnitude > 0 then
            rP.CFrame = rP.CFrame + (mD.Unit * 2.5)
        end
    end
    
    if esp then
        local tgs, upm = getTargs(), {}
        for _, m in pairs(tgs) do
            if m and m.Parent and m ~= lp.Character then
                local hd, hr = chkChar(m), m:FindFirstChild("HumanoidRootPart") or m:FindFirstChildOfClass("BasePart")
                if hd and hr then
                    upm[m] = true
                    if not boxes[m] then
                        local mainBox, textLabel, tracerLine = cBox()
                        boxes[m] = {Main = mainBox, Text = textLabel, Tracer = tracerLine}
                    end
                    
                    local b = boxes[m]
                    local cf = hr.CFrame
                    local size = m:GetExtentsSize()
                    
                    local topPos, topOnScreen = cam:WorldToScreenPoint(cf.Position + Vector3.new(0, size.Y / 2 + 0.3, 0))
                    local bottomPos, bottomOnScreen = cam:WorldToScreenPoint(cf.Position - Vector3.new(0, size.Y / 2 + 0.5, 0))
                    
                    if topOnScreen and bottomOnScreen then
                        local hg = math.abs(topPos.Y - bottomPos.Y)
                        local wd = hg / 1.45
                        
                        b.Main.Position = UDim2.new(0, topPos.X - wd / 2, 0, topPos.Y)
                        b.Main.Size = UDim2.new(0, wd, 0, hg)
                        b.Main.Visible = true
                        
                        local startX = cam.ViewportSize.X / 2
                        local startY = cam.ViewportSize.Y
                        local endX = bottomPos.X
                        local endY = bottomPos.Y
                        
                        local distance2D = math.sqrt((endX - startX)^2 + (endY - startY)^2)
                        local angle = math.atan2(endY - startY, endX - startX)
                        
                        b.Tracer.Position = UDim2.new(0, startX, 0, startY)
                        b.Tracer.Size = UDim2.new(0, distance2D, 0, 1)
                        b.Tracer.Rotation = math.deg(angle)
                        b.Tracer.Visible = true
                        
                        local dist = math.floor((cam.CFrame.Position - hd.Position).Magnitude)
                        b.Text.Text = tostring(dist) .. "m"
                    else
                        b.Main.Visible = false
                        b.Tracer.Visible = false
                    end
                end
            end
        end
        
        for m, b in pairs(boxes) do
            if not upm[m] then
                if b.Main then b.Main:Destroy() end
                if b.Tracer then b.Tracer:Destroy() end
                boxes[m] = nil
            end
        end
    end
end)

local function eval(i, s)
    if i.UserInputType == Enum.UserInputType.MouseButton2 or i.KeyCode == Enum.KeyCode.T then
        hold = s
        if not s then cur = nil end
    end
end

UIS.InputBegan:Connect(function(i, pr)
    if pr then return end
    eval(i, true)
    
    if i.KeyCode == Enum.KeyCode.T then
        aim = not aim
        if not aim then fovFrame.Visible, cur = false, nil end
        updV(d1, s1, aim, "AIMBOT", "T / RMB")
    elseif i.KeyCode == Enum.KeyCode.H then
        esp = not esp
        if not esp then clrBoxes() end
        updV(d2, s2, esp, "PLAYER ESP", "H")
    elseif i.KeyCode == Enum.KeyCode.E then
        fly = not fly
        local hu = lp.Character and lp.Character:FindFirstChildOfClass("Humanoid")
        if hu then hu.PlatformStand = fly end
        updV(d3, s3, fly, "FLY MODE", "E")
    elseif i.KeyCode == Enum.KeyCode.N then
        autoShoot = not autoShoot
        updV(d4, s4, autoShoot, "AUTOSHOOT", "N")
    elseif i.KeyCode == Enum.KeyCode.G then
        v = not v
        animUI()
    end
end)

UIS.InputEnded:Connect(function(i)
    eval(i, false)
end)

lp.CharacterAdded:Connect(function()
    fly = false
    updV(d3, s3, false, "FLY MODE", "E")
end)

-- SEKWENCJA ANIMACJI LOADERA (1 SEKUNDA)
task.spawn(function()
    local tweenFill = TS:Create(ldBarFill, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0)})
    tweenFill:Play()
    tweenFill.Completed:Wait()
    task.wait(0.1)
    
    local fadeOutLD = TS:Create(LD, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
    TS:Create(ldText, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
    TS:Create(ldBarBg, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
    TS:Create(ldBarFill, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
    TS:Create(ldStroke, TweenInfo.new(0.2), {Transparency = 1}):Play()
    fadeOutLD:Play()
    fadeOutLD.Completed:Wait()
    
    LD:Destroy()
    MF.Visible = true
end)
