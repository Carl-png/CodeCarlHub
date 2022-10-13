local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local userInputService = game:GetService("UserInputService")

local specificSpeed

local speed = 100
local c
local h
local bv
local bav
local cam
local flying
local flyActive = false
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}

--Stage Teleports (72)--

local stage1 = CFrame.new(65.7759933, 30.101984, 55.7897491)
local stage2 = CFrame.new(65.6358719, 30.0864105, 131.665283)
local stage3 = CFrame.new(64.062912, 30.0728989, 210.795105)
local stage4 = CFrame.new(64.1013489, 142.072266, 341.101227)
local stage5 = CFrame.new(66.2941437, 142.079254, 404.254059)
local stage6 = CFrame.new(143.981537, 142.074509, 403.300598)
local stage7 = CFrame.new(236.657364, 142.101456, 404.290955)
local stage8 = CFrame.new(236.978485, 142.101944, 312.140625)
local stage9 = CFrame.new(236.707962, 142.084183, 167.619354)
local stage10 = CFrame.new(238.521149, 142.085281, 60.791317)
local stage11 = CFrame.new(237.583191, 142.068314, -29.3367691)
local stage12 = CFrame.new(164.848022, 142.087418, -77.1105957)
local stage13 = CFrame.new(0.375532925, 30.0891438, -76.8598938)
local stage14 = CFrame.new(-76.6290436, 30.1010208, -11.8116465)
local stage15 = CFrame.new(-79.0061798, 30.1012154, 87.9627609)
local stage16 = CFrame.new(-78.3140106, 30.1019974, 186.687729)
local stage17 = CFrame.new(-77.6654205, 30.0785198, 259.907837)
local stage18 = CFrame.new(-76.7352524, 174.099152, 278.072327)
local stage19 = CFrame.new(-132.131424, 174.073914, 343.274017)
local stage20 = CFrame.new(-203.068115, 174.079269, 343.4599)
local stage21 = CFrame.new(-256.343597, 174.067886, 299.834167)
local stage22 = CFrame.new(-256.720215, 174.101959, 224.087555)
local stage23 = CFrame.new(-254.717911, 174.077408, 104.894768)
local stage24 = CFrame.new(-254.592194, 174.101959, 26.618145)
local stage25 = CFrame.new(-255.81694, 174.06749, -73.0494156)
local stage26 = CFrame.new(-256.594757, 174.101196, -165.064819)
local stage27 = CFrame.new(-165.851685, 174.083145, -164.402969)
local stage28 = CFrame.new(-76.7284393, 186.067383, -164.902451)
local stage29 = CFrame.new(9.61743736, 174.088654, -164.047867)
local stage30 = CFrame.new(126.572823, 174.101959, -164.406403)
local stage31 = CFrame.new(199.860458, 174.084366, -164.722992)
local stage32 = CFrame.new(250.113235, 143.06868, -165.180847)
local stage33 = CFrame.new(321.234436, 143.070633, -113.824097)
local stage34 = CFrame.new(321.27121, 143.077408, -36.1976585)
local stage35 = CFrame.new(321.012177, 143.077347, 24.9717255)
local stage36 = CFrame.new(320.737488, 143.072403, 155.214447)
local stage37 = CFrame.new(320.618805, 143.099838, 222.751221)
local stage38 = CFrame.new(320.234528, 143.101959, 344.91449)
local stage39 = CFrame.new(321.732452, 143.097534, 491.163788)
local stage40 = CFrame.new(223.263947, 143.101959, 491.519623)
local stage41 = CFrame.new(142.420013, 143.101959, 491.327728)
local stage42 = CFrame.new(77.4517822, 143.101959, 491.275146)
local stage43 = CFrame.new(-6.15971708, 143.067444, 490.689941)
local stage44 = CFrame.new(-157.614151, 143.070221, 491.333923)
local stage45 = CFrame.new(-238.732803, 143.093552, 491.286285)
local stage46 = CFrame.new(-7.36386824, 174.091537, 309.643372)
local stage47 = CFrame.new(-8.52734947, 174.077332, 184.485794)
local stage48 = CFrame.new(-7.87329817, 318.099792, 165.036957)
local stage49 = CFrame.new(-8.37765408, 318.077393, 51.6232452)
local stage50 = CFrame.new(-8.34670162, 367.573792, 30.6479378)
local stage51 = CFrame.new(40.9230957, 367.086914, -1.15865481)
local stage52 = CFrame.new(128.369171, 367.101532, -1.17044961)
local stage53 = CFrame.new(265.825409, 367.08197, -0.594079256)
local stage54 = CFrame.new(265.225098, 367.073822, 104.58371)
local stage55 = CFrame.new(265.482758, 367.100708, 188.86438)
local stage56 = CFrame.new(264.683105, 367.072235, 282.686615)
local stage57 = CFrame.new(265.064911, 367.095062, 360.401917)
local stage58 = CFrame.new(266.977844, 383.06778, 435.934052)
local stage59 = CFrame.new(195.374619, 368.08313, 435.469513)
local stage60 = CFrame.new(115.639137, 368.101929, 435.174988)
local stage61 = CFrame.new(17.4036579, 368.101929, 435.131073)
local stage62 = CFrame.new(-68.9731674, 368.101929, 434.466003)
local stage63 = CFrame.new(-157.767441, 368.068146, 437.303223)
local stage64 = CFrame.new(-157.274185, 368.101532, 324.443359)
local stage65 = CFrame.new(-157.225769, 368.101929, 189.871872)
local stage66 = CFrame.new(-157.625549, 369.067169, -9.44054699)
local stage67 = CFrame.new(-156.530869, 369.101868, -107.495354)
local stage68 = CFrame.new(-157.865112, 369.067566, -220.218246)
local stage69 = CFrame.new(-157.7155, 369.094666, -317.490601)
local stage70 = CFrame.new(-158.302811, 369.06723, -448.019226)
local stage71 = CFrame.new(-157.895767, 514.10022, -470.913544)
local stage72 = CFrame.new(-157.648392, 563.591125, -590.720886)

--TwinkLib by twink marie--

local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

local MainUI = UILibrary.Load("Cotton Obby GUI")
local FirstPage = MainUI.AddPage("General", false)
local SecondPage = MainUI.AddPage("Movement", false)
local ThirdPage = MainUI.AddPage("Stages", false)
local FourthPage = MainUI.AddPage("Contact", false)

--First Page (General)--

FirstPage.AddButton("Destroy AFK script", function()
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)

FirstPage.AddButton("Restart game", function()
    p = game:GetService("Players").LocalPlayer
	game:GetService("TeleportService"):Teleport(game.PlaceId, p)
end)

--Second Page (Movement)--

SecondPage.AddLabel("Press Y to fly")

SecondPage.AddButton("Toggle Fly", function()
    flytogl()
end)

SecondPage.AddLabel("Change the slider value once so it updates")

SecondPage.AddSlider("Specific speed", {Min = 0, Max = 250, Def = 100}, function(value)
    specificSpeed = value
end)

SecondPage.AddButton("Use specific speed", function()
    humanoid.WalkSpeed = specificSpeed
end)

SecondPage.AddButton("Default speed (16)", function()
    humanoid.WalkSpeed = 16
end)

SecondPage.AddButton("Faster (+16)", function()
    humanoid.WalkSpeed = humanoid.WalkSpeed + 16
end)

SecondPage.AddButton("Slower (-16)", function()
    humanoid.WalkSpeed = humanoid.WalkSpeed - 16
end)

--Third Page (Stages)--

ThirdPage.AddButton("Stage 1", function()
	pl.CFrame = stage1
end)

ThirdPage.AddButton("Stage 2", function()
    pl.CFrame = stage2
end)

ThirdPage.AddButton("Stage 3", function()
    pl.CFrame = stage3
end)

ThirdPage.AddButton("Stage 4", function()
    pl.CFrame = stage4
end)

ThirdPage.AddButton("Stage 5", function()
    pl.CFrame = stage5
end)

ThirdPage.AddButton("Stage 6", function()
    pl.CFrame = stage6
end)

ThirdPage.AddButton("Stage 7", function()
    pl.CFrame = stage7
end)

ThirdPage.AddButton("Stage 8", function()
    pl.CFrame = stage8
end)

ThirdPage.AddButton("Stage 9", function()
    pl.CFrame = stage9
end)

ThirdPage.AddButton("Stage 10", function()
    pl.CFrame = stage10
end)

ThirdPage.AddButton("Stage 11", function()
    pl.CFrame = stage11
end)

ThirdPage.AddButton("Stage 12", function()
    pl.CFrame = stage12
end)

ThirdPage.AddButton("Stage 13", function()
    pl.CFrame = stage13
end)

ThirdPage.AddButton("Stage 14", function()
    pl.CFrame = stage14
end)

ThirdPage.AddButton("Stage 15", function()
    pl.CFrame = stage15
end)

ThirdPage.AddButton("Stage 16", function()
    pl.CFrame = stage16
end)

ThirdPage.AddButton("Stage 17", function()
    pl.CFrame = stage17
end)

ThirdPage.AddButton("Stage 18", function()
    pl.CFrame = stage18
end)

ThirdPage.AddButton("Stage 19", function()
    pl.CFrame = stage19
end)

ThirdPage.AddButton("Stage 20", function()
    pl.CFrame = stage20
end)

ThirdPage.AddButton("Stage 21", function()
    pl.CFrame = stage21
end)

ThirdPage.AddButton("Stage 22", function()
    pl.CFrame = stage22
end)

ThirdPage.AddButton("Stage 23", function()
    pl.CFrame = stage23
end)

ThirdPage.AddButton("Stage 24", function()
    pl.CFrame = stage24
end)

ThirdPage.AddButton("Stage 25", function()
    pl.CFrame = stage25
end)

ThirdPage.AddButton("Stage 26", function()
    pl.CFrame = stage26
end)

ThirdPage.AddButton("Stage 27", function()
    pl.CFrame = stage27
end)

ThirdPage.AddButton("Stage 28", function()
    pl.CFrame = stage28
end)

ThirdPage.AddButton("Stage 29", function()
    pl.CFrame = stage29
end)

ThirdPage.AddButton("Stage 30", function()
    pl.CFrame = stage30
end)

ThirdPage.AddButton("Stage 31", function()
    pl.CFrame = stage31
end)

ThirdPage.AddButton("Stage 32", function()
    pl.CFrame = stage32
end)

ThirdPage.AddButton("Stage 33", function()
    pl.CFrame = stage33
end)

ThirdPage.AddButton("stage 34", function()
    pl.CFrame = stage34
end)

ThirdPage.AddButton("Stage 35", function()
    pl.CFrame = stage35
end)

ThirdPage.AddButton("Stage 36", function()
    pl.CFrame = stage36
end)

ThirdPage.AddButton("Stage 37", function()
    pl.CFrame = stage37
end)

ThirdPage.AddButton("Stage 38", function()
    pl.CFrame = stage38
end)

ThirdPage.AddButton("Stage 39", function()
    pl.CFrame = stage39
end)

ThirdPage.AddButton("Stage 40", function()
    pl.CFrame = stage40
end)

ThirdPage.AddButton("Stage 41", function()
    pl.CFrame = stage41
end)

ThirdPage.AddButton("Stage 42", function()
    pl.CFrame = stage42
end)

ThirdPage.AddButton("Stage 43", function()
    pl.CFrame = stage43
end)

ThirdPage.AddButton("Stage 44", function()
    pl.CFrame = stage44
end)

ThirdPage.AddButton("Stage 45", function()
    pl.CFrame = stage45
end)

ThirdPage.AddButton("Stage 46", function()
    pl.CFrame = stage46
end)

ThirdPage.AddButton("Stage 47", function()
    pl.CFrame = stage47
end)

ThirdPage.AddButton("Stage 48", function()
    pl.CFrame = stage48
end)

ThirdPage.AddButton("Stage 49", function()
    pl.CFrame = stage49
end)

ThirdPage.AddButton("Stage 50", function()
    pl.CFrame = stage50
end)

ThirdPage.AddButton("Stage 51", function()
    pl.CFrame = stage51
end)

ThirdPage.AddButton("Stage 52", function()
    pl.CFrame = stage52
end)

ThirdPage.AddButton("Stage 53", function()
    pl.CFrame = stage53
end)

ThirdPage.AddButton("Stage 54", function()
    pl.CFrame = stage54
end)

ThirdPage.AddButton("Stage 55", function()
    pl.CFrame = stage55
end)

ThirdPage.AddButton("Stage 56", function()
    pl.CFrame = stage56
end)

ThirdPage.AddButton("stage 57", function()
    pl.CFrame = stage57
end)

ThirdPage.AddButton("Stage 58", function()
    pl.CFrame = stage58
end)

ThirdPage.AddButton("Stage 59", function()
    pl.CFrame = stage59
end)

ThirdPage.AddButton("Stage 60", function()
    pl.CFrame = stage60
end)

ThirdPage.AddButton("Stage 61", function()
    pl.CFrame = stage61
end)

ThirdPage.AddButton("Stage 62", function()
    pl.CFrame = stage62
end)

ThirdPage.AddButton("Stage 63", function()
    pl.CFrame = stage63
end)

ThirdPage.AddButton("Stage 64", function()
    pl.CFrame = stage64
end)

ThirdPage.AddButton("Stage 65", function()
    pl.CFrame = stage65
end)

ThirdPage.AddButton("Stage 66", function()
    pl.CFrame = stage66
end)

ThirdPage.AddButton("Stage 67", function()
    pl.CFrame = stage67
end)

ThirdPage.AddButton("Stage 68", function()
    pl.CFrame = stage68
end)

ThirdPage.AddButton("Stage 69", function()
    pl.CFrame = stage69
end)

ThirdPage.AddButton("Stage 70", function()
    pl.CFrame = stage70
end)

ThirdPage.AddButton("Stage 71", function()
    pl.CFrame = stage71
end)

ThirdPage.AddButton("Stage 72", function()
    pl.CFrame = stage72
end)

--Fourth Page (Contact)--

FourthPage.AddButton("Discord: Carl#9000", function()
	discordserver:CopyString()
end)

--Fly Script (Universal)--

local startFly = function ()
	if not p.Character or not p.Character.Head or flying then return end
	c = p.Character
	h = c.Humanoid
	h.PlatformStand = true
	cam = workspace:WaitForChild('Camera')
	bv = Instance.new("BodyVelocity")
	bav = Instance.new("BodyAngularVelocity")
	bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
	bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
	bv.Parent = c.Head
	bav.Parent = c.Head
	flying = true
	h.Died:connect(function() flying = false end)
end

local endFly = function ()
	if not p.Character or not flying then return end
	h.PlatformStand = false
	bv:Destroy()
	bav:Destroy()
	flying = false
end

userInputService.InputBegan:Connect(function(input, GPE)
    if GPE then return end
	for i, e in pairs(buttons) do
		if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
			buttons[i] = true
			buttons.Moving = true
		end
	end

	if input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Enum.KeyCode.Y then
            flytogl()
        end
    end
end)

game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
	if GPE then return end
	local a = false
	for i, e in pairs(buttons) do
		if i ~= "Moving" then
			if input.KeyCode == Enum.KeyCode[i] then
				buttons[i] = false
			end
			if buttons[i] then a = true end
		end
	end
	buttons.Moving = a
end)


local setVec = function (vec)
	return vec * (speed / vec.Magnitude)
end

function flytogl()
	if flytoggle == true then
		flytoggle = false
	else
		flytoggle = true
		startFly()
		repeat
			wait(0.001)
		until flytoggle == false
		endFly()
	end
end

game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame


	if flying and c and c.PrimaryPart then
		local p = c.PrimaryPart.Position
		local cf = cam.CFrame
		local ax, ay, az = cf:toEulerAnglesXYZ()
		c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
		if buttons.Moving then
			local t = Vector3.new()
			if buttons.W then t = t + (setVec(cf.lookVector)) end
			if buttons.S then t = t - (setVec(cf.lookVector)) end
			if buttons.A then t = t - (setVec(cf.rightVector)) end
			if buttons.D then t = t + (setVec(cf.rightVector)) end
			c:TranslateBy(t * step)
		end
	end
end)

--Destroys the AFK script--

function toggleAFK()
	local afkScript = game.Players.LocalPlayer.PlayerScripts.AFKLocalScript
	afkScript:Destroy()
end