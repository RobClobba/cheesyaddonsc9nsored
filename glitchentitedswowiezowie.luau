
local v1 = unpack or table.unpack
local Objects = game:GetObjects("rbxassetid://135325993088546")
local Blue = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Health.Music.Blue
local Yellow = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Health.Music.Yellow
local t1 = {
	guiding = Blue,
	curious = Yellow
}
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local v9 = game:GetObjects("rbxassetid://116799053872831")[1]
local s1 = "Curious"
local v11 = game.ReplicatedStorage.GameData.Floor.Value == "Hotel"
if not v11 then
    v11 = game.ReplicatedStorage.GameData.Floor.Value == "Mines"
end
if v11 then
    s1 = "Guiding"
end
local t2 = {
	GlitchScribbles = "SCRbWIBB9kILES",
	GlitchBash = "BGJ5ASIFH",
	GlitchBlitz = "BLIRHQTl9TZZ",
	GlitchDrones = "DRWxONlEdm STAVy=MP=EDE"
}
local connection
local LocalPlayer = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
if not isfile("GlitchDeaths.json") then
    local _writefile = writefile
    local t3 = {
		Fully = 1,
		GlitchScribbles = 1,
		GlitchBash = 1,
		GlitchDrones = 1,
		GlitchBlitz = 1
	}
    local t4 = {
		Fully = 1,
		GlitchScribbles = 1,
		GlitchBash = 1,
		GlitchDrones = 1,
		GlitchBlitz = 1
	}

    _writefile("GlitchDeaths.json", HttpService:JSONEncode({
		Guiding = t3,
		Curious = t4
	}))
end
local data = HttpService:JSONDecode(v1({ readfile("GlitchDeaths.json") }))
local u21
scribbles = Objects[1]
local v22 = game:GetObjects("rbxassetid://108231387067817")[1]
local v23 = game:GetObjects("rbxassetid://73911654446133")[1]
local v24 = game:GetObjects("rbxassetid://121328790004976")[1]
if scribbles.PrimaryPart == nil then
    scribbles.PrimaryPart = scribbles:FindFirstChildWhichIsA("BasePart", true)
end
if v23.PrimaryPart == nil then
    v23.PrimaryPart = v23:FindFirstChildWhichIsA("BasePart", true)
end
if v22.PrimaryPart == nil then
    v22.PrimaryPart = v22:FindFirstChildWhichIsA("BasePart", true)
end
if v24.PrimaryPart == nil then
    v24.PrimaryPart = v24:FindFirstChildWhichIsA("BasePart", true)
end
if false then
    scribbles.Name = "GlitchRush"
    v22.Name = "GlitchRush"
    v23.Name = "GlitchRush"
    v24.Name = "GlitchRush"
end
function deathmsg(p1)
    LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog.Text = p1
    TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 0
	}):Play()

    local u29 = false
    local connection2 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then
            return
        end

        local v156 = input.UserInputType == Enum.UserInputType.MouseButton1

        if not v156 then
            v156 = input.UserInputType == Enum.UserInputType.Touch
        end

        if v156 then
            u29 = true
        end
    end)
    local n1 = 0

    while n1 < 5 and not u29 do
        task.wait(0.1)
        n1 += 0.1
    end

    connection2:Disconnect()
    TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 1
	}):Play()
    task.wait(0.5)
end
function died(p2, p3, _)
    LocalPlayer.PlayerGui.MainUI.ZIndexBehavior = "Sibling"
    wait(3)
    LocalPlayer.PlayerGui.MainUI.Death.Visible = true
    LocalPlayer.PlayerGui.MainUI.Death.Static.Name = "Statci"

    local u35 = true

    task.spawn(function()
        while u35 do
            TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Position = UDim2.fromScale(0.5, 0.5)
			}):Play()
            wait(1.5)
            TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Position = UDim2.fromScale(0.5, 0.4)
			}):Play()
            wait(1.5)
        end
    end)
    task.spawn(function()
        while u35 do
            TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Rotation = 5
			}):Play()
            wait(4)
            TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Rotation = -5
			}):Play()
            wait(4)
        end
    end)
    task.spawn(function()
        while u35 do
            wait()
            LocalPlayer.PlayerGui.MainUI.Death.Statci.BackgroundTransparency = 0
            LocalPlayer.PlayerGui.MainUI.Death.Statci.ImageTransparency = 0.7
        end
    end)
    LocalPlayer.PlayerGui.MainUI.Death.ZIndex = 10000

    if p2 == "Curious" then
        LocalPlayer.PlayerGui.MainUI.Death.Visible = true
        LocalPlayer.PlayerGui.MainUI.Death.ImageTransparency = 1
        LocalPlayer.PlayerGui.MainUI.Death.Statci.Visible = true
        LocalPlayer.PlayerGui.MainUI.Death.Statci.ImageTransparency = 0.7
        LocalPlayer.PlayerGui.MainUI.Death.Statci.BackgroundColor3 = Color3.fromRGB(122, 122, 50)
        LocalPlayer.PlayerGui.MainUI.Death.Statci.ImageColor3 = Color3.fromRGB(50, 170, 25)
        LocalPlayer.PlayerGui.MainUI.Death.Statci.Static.Visible = false
        LocalPlayer.PlayerGui.MainUI.Death.Hodler.Visible = false
        LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog.Visible = true
        LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog.TextTransparency = 1
        LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog.TextColor3 = Color3.fromRGB(255, 255, 0)
        t1.curious:Play()
    else
        LocalPlayer.PlayerGui.MainUI.Death.Visible = true
        LocalPlayer.PlayerGui.MainUI.Death.ImageTransparency = 1
        LocalPlayer.PlayerGui.MainUI.Death.Statci.Visible = true
        LocalPlayer.PlayerGui.MainUI.Death.Statci.ImageTransparency = 0.7
        LocalPlayer.PlayerGui.MainUI.Death.Statci.BackgroundColor3 = Color3.fromRGB(0, 181, 202)
        LocalPlayer.PlayerGui.MainUI.Death.Statci.ImageColor3 = Color3.fromRGB(0, 217, 226)
        LocalPlayer.PlayerGui.MainUI.Death.Statci.Static.Visible = false
        LocalPlayer.PlayerGui.MainUI.Death.Hodler.Visible = false
        LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog.Visible = true
        LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog.TextTransparency = 1
        LocalPlayer.PlayerGui.MainUI.Death.HelpfulDialog.TextColor3 = Color3.fromRGB(158, 239, 255)
        t1.guiding:Play()
    end

    if p2 == "Curious" then
        if data[p2].Fully == 1 then
            deathmsg("Oh.")
            deathmsg("It isn't supposed to be here... I'm not sure how my... hmm...")
            deathmsg("I'm not sure how it works... I believe it attacks stragglers, if I remember correctly?")
        elseif data[p2].Fully == 2 then
            deathmsg("There must be a tear... that thing shouldn't be here..")
            deathmsg("Did it follow you in?")
            deathmsg("Just... try sticking together more. Got it?")
        elseif data[p2].Fully >= 3 then
            deathmsg("Again? I have to fix that... noted for later.")
            deathmsg("Look. Just stick together. Alright? It's easy.")
        end

        local v36 = math.round((math.random(1, 4)))

        if v36 == 1 then
            deathmsg("You can do this. I believe in you. I'll see you next time. Right?")
        elseif v36 == 2 then
            deathmsg("See you next time.")
        elseif v36 == 3 then
            deathmsg("Alright, hurry back. We're not done yet.")
        elseif v36 == 4 then
            deathmsg("Anyways, I hope you don't mind trying again. It would be helpful.")
        end
    else
        if data[p2].Fully == 1 then
            local v37 = math.round((math.random(1, 2)))

            if v37 ~= 1 and v37 == 2 then
                deathmsg("The Hotel isn't a simple place...")
            end

            deathmsg("Hmm...")
            deathmsg("I'm terribly sorry. I'm not sure what happened to you.")
            deathmsg("You just... died.")
        elseif data[p2].Fully == 2 then
            deathmsg("Hmm...")
            deathmsg("Again, I'm not sure what happened to you")
            deathmsg("I think something’s causing you to see things...")
        elseif data[p2].Fully >= 3 then
            deathmsg("I think I've figured this out.")
            deathmsg("Something is causing you to see things... and it seems to have induced a heart attack.")
        end

        local v38 = math.round((math.random(1, 2)))
        local v39 = v38 == 1

        if v39 then
            v39 = game.ReplicatedStorage.GameData.Floor.Value == "Mines"
        end

        if v39 then
            deathmsg("You’ve done great! Don’t give up!")
        else
            local v40 = v38 == 2

            if v40 then
                v40 = game.ReplicatedStorage.GameData.Floor.Value == "Mines"
            end

            if v40 then
                deathmsg("You made it this far! Keep going!")
            end
        end
    end

    LocalPlayer.PlayerGui.MainUI.Statistics.Death.Text = "Died to " .. t2[p3]
    u35 = false

    local v41 = data[p2]

    v41[p3] = v41[p3] + 1

    local v42 = data[p2]
    local s2 = "Fully"

    v42[s2] = v42[s2] + 1
    writefile("GlitchDeaths.json", HttpService:JSONEncode(data))
    TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.Statci, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundTransparency = 1
	}):Play()
    TweenService:Create(LocalPlayer.PlayerGui.MainUI.Death.Statci, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		ImageTransparency = 1
	}):Play()

    if p2 == "Curious" then
        t1.curious.Playing = false
        t1.curious.End:Play()
    else
        t1.guiding.Playing = false
        t1.guiding.End:Play()
    end

    wait(1)
    LocalPlayer.PlayerGui.MainUI.Death.Statci.Name = "Static"
    LocalPlayer.PlayerGui.MainUI.Death.Visible = false

    local _print = print
    local Fully = HttpService:JSONDecode(readfile("GlitchDeaths.json")).Guiding.Fully
    local GlitchScribbles = HttpService:JSONDecode(readfile("GlitchDeaths.json")).Guiding.GlitchScribbles
    local GlitchBash = HttpService:JSONDecode(readfile("GlitchDeaths.json")).Guiding.GlitchBash
    local GlitchBlitz = HttpService:JSONDecode(readfile("GlitchDeaths.json")).Guiding.GlitchBlitz
    local v49 = HttpService
    local t5 = { readfile("GlitchDeaths.json") }
    local GlitchDrones = v49:JSONDecode(v1(t5)).Guiding.GlitchDrones
    local v52 = HttpService
    local t6 = { readfile("GlitchDeaths.json") }
    local Fully2 = v52:JSONDecode(v1(t6)).Curious.Fully
    local v55 = HttpService
    local t7 = { readfile("GlitchDeaths.json") }
    local GlitchScribbles2 = v55:JSONDecode(v1(t7)).Curious.GlitchScribbles
    local GlitchBash2 = HttpService:JSONDecode(readfile("GlitchDeaths.json")).Curious.GlitchBash
    local GlitchBlitz2 = HttpService:JSONDecode(readfile("GlitchDeaths.json")).Curious.GlitchBlitz
    local v60 = HttpService
    local t8 = { readfile("GlitchDeaths.json") }

    _print("GLITCH DEATHS: {Guiding={Fully=", Fully, ", GlitchScribbles=", GlitchScribbles, ", GlitchBash=", GlitchBash, ", GlitchBlitz=", GlitchBlitz, ", GlitchDrones=", GlitchDrones, "}, Curious={Fully=", Fully2, ", GlitchScribbles=", GlitchScribbles2, ", GlitchBash=", GlitchBash2, ", GlitchBlitz=", GlitchBlitz2, ", GlitchDrones=", v60:JSONDecode(v1(t8)).Curious.GlitchDrones, "}")
end
function checkplr(p5, p6, p7, p8)
    if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid", true).Health <= 0 then
        return
    end

    local raycastResult = workspace:Raycast(p5.Position, game.Players.LocalPlayer.Character.PrimaryPart.Position - p5.Position)
    local v67 = raycastResult

    if raycastResult then
        v67 = not db

        if v67 then
            v67 = not game.Players.LocalPlayer.Character:GetAttribute("Invincibility")
        end
    end

    if v67 then
        local v68 = raycastResult.Instance.Parent == game.Players.LocalPlayer.Character

        if v68 then
            v68 = p6 > (p5.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
        end

        if v68 then
            local Assets = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")].Assets

            for _, child in Assets:GetChildren() do
                local HiddenPlayer = child:FindFirstChild("HiddenPlayer")

                if HiddenPlayer then
                    HiddenPlayer = child:FindFirstChild("HiddenPlayer").Value == game.Players.LocalPlayer

                    if not HiddenPlayer then
                        HiddenPlayer = child:FindFirstChild("HiddenPlayer").Value == game.Players.LocalPlayer.Character
                    end
                end

                if HiddenPlayer then
                    return
                end
            end

            if game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") then
                p5:FindFirstAncestorWhichIsA("Model"):Destroy()
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()

                for _, child in workspace.CurrentRooms:GetChildren() do
                    child.Door.Hidden.CanTouch = true
                end

                return
            end

            db = true

            local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid", true)
            local s3 = "Health"

            Humanoid[s3] = Humanoid[s3] - p7

            if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid", true).Health <= 0 then
                print("died by " .. p5.Parent.Name)
                died(s1, p5.Parent.Name)
            end

            wait(math.random(0.1, 0.5))

            if not p8 then
                db = false
            end
        end
    end
end
function caption(p9)
    game.ReplicatedStorage.RemotesFolder.CaptionClient:Fire(p9)
end
function getsroom()
    local v78
    for _, child in workspace.CurrentRooms:GetChildren() do
        local v81 = v78 == nil

        if not v81 then
            v81 = tonumber(child.Name)

            if v81 then
                v81 = tonumber(child.Name) < tonumber(v78.Name)
            end
        end

        if v81 then
            v78 = child
        end
    end

    return v78
end
function gethroom()
    local v82
    for _, child in workspace.CurrentRooms:GetChildren() do
        local v85 = v82 == nil

        if not v85 then
            v85 = tonumber(child.Name)

            if v85 then
                v85 = tonumber(child.Name) > tonumber(v82.Name)
            end
        end

        if v85 then
            v82 = child
        end
    end

    return v82
end
function blockdoor(p10)
    local v87 = false

    if p10.Door:FindFirstChild("Collision") == nil then
        return
    end

    p10.Door.Hidden.CanTouch = false
    connection = p10.Door.Collision.Touched:Connect(function()
        if v87 then
            return
        end

        caption("Something is stopping you from opening this door..")
        wait(0.5)
    end)
end
function getnodes(p11)
    if p11 == nil then
        p11 = false
    end
    local t9 = {}
    for v92, v93 in ipairs(workspace.CurrentRooms:GetChildren()) do

        t9[#t9 + 1] = v93.RoomEntrance

        if v93:FindFirstChild("PathfindNodes") then
            for _, child in ipairs(v93.PathfindNodes:GetChildren()) do
                t9[#t9 + 1] = child
            end
        end

        t9[#t9 + 1] = v93.RoomExit
    end
    if p11 then
        local v96 = t9

        t9 = {}

        for i, v in ipairs(v96) do
            t9[#v96 + 1 - i] = v
        end
    end

    return t9
end
function move(p12, p13, p14, p15, p16, p17, p18, p19)
    p12.Parent = workspace
    for _, descendant in p12:GetDescendants() do
        if descendant:IsA("Sound") then
            descendant:Play()
        end
    end
    local v110 = getnodes(p14)[1]
    u21 = v110
    p12:PivotTo(v110.CFrame)
    p12.PrimaryPart.Anchored = true
    if tonumber(p18) == nil then
        p18 = 60
    end
    if tonumber(p19) == nil then
        p19 = 75
    end
    if tonumber(p13) == nil then
        p13 = 3
    end
    wait(p13)
    for v113, v114 in p12:GetDescendants() do

        if v114:IsA("BasePart") then
            v114.CanCollide = false
        end
    end
    local u115 = true
    task.spawn(function()
        while u115 do
            wait(0.1)
            checkplr(p12.PrimaryPart, p19, p16, p17)
        end
    end)
    if p15 ~= nil and p15 > 0 then
        for i = 0, p15 do
            wait(math.random(0.5, 4))

            for _, v in ipairs(getnodes(p14)) do
                u21 = v110

                local v119 = v.Name ~= "RoomEntrance"

                if v119 then
                    v119 = v.Name ~= "RoomExit"
                end

                if v119 then
                    local tween = TweenService:Create(p12.PrimaryPart, TweenInfo.new((v110.Position - v.Position).Magnitude / p18, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						CFrame = v.CFrame * CFrame.new(0, 4, 0)
					})

                    tween:Play()
                    tween.Completed:Wait()
                else
                    local tween = TweenService:Create(p12.PrimaryPart, TweenInfo.new((v110.Position - v.Position).Magnitude / p18, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						CFrame = v.CFrame
					})

                    tween:Play()
                    tween.Completed:Wait()
                end

                v110 = v
            end

            p14 = not p14
            print(i .. "/" .. p15 .. " rebounds done!")
            wait(math.random(0.5, 4))
        end
    else
        for _, v in ipairs(getnodes(p14)) do
            u21 = v110

            local v124 = v.Name ~= "RoomEntrance"

            if v124 then
                v124 = v.Name ~= "RoomExit"
            end

            if v124 then
                local tween = TweenService:Create(p12.PrimaryPart, TweenInfo.new((v110.Position - v.Position).Magnitude / p18, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					CFrame = v.CFrame * CFrame.new(0, 4, 0)
				})

                tween:Play()
                tween.Completed:Wait()
            else
                local tween = TweenService:Create(p12.PrimaryPart, TweenInfo.new((v110.Position - v.Position).Magnitude / p18, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					CFrame = v.CFrame
				})

                tween:Play()
                tween.Completed:Wait()
            end

            v110 = v
        end
    end
    p12.PrimaryPart.Anchored = false
    u115 = false
    Debris:AddItem(p12, 10)
end
function spawnscribbles()
    local clone = scribbles:Clone()

    blockdoor(workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)])
    coroutine.wrap(move)(clone, 2, true, math.random(0, 1), math.random(2, 15), false, 20, 50)

    repeat
        wait(0.1)
    until u21 == workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].RoomExit

    if connection then
        connection:Disconnect()
    end

    if workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door:FindFirstChild("Door") == nil then
        return
    end

    if workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door:FindFirstChild("Lock") then
        workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.SlamOpen.Volume = 10
        workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.SlamOpen:Play()
        workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.SlamOpen.Parent = workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door

        return
    end

    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.Break.Volume = 10
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.Break:Play()
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.Break.Parent = workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Hidden.CanTouch = true
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.CanCollide = false
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door.Anchored = false
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Collision.CanCollide = false
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.ClientOpen:FireServer()
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Hidden.Transparency = 1
    workspace.CurrentRooms[tostring(tonumber(gethroom().Name) - 1)].Door.Door:Destroy()
end
function spawnbash()
    local clone = v22:Clone()

    coroutine.wrap(move)(clone, math.random(5, 10), false, math.random(1, 6), math.random(5, 25), false, 92, 60)
end
function spawnblitz()
    local clone = v23:Clone()
    local v130 = math.random(1, 2) == 2 and true

    coroutine.wrap(move)(clone, math.random(2, 7), v130, math.random(0, 10), 130, true, 75, 70)
end
function spawndrones()
    local clone = v24:Clone()

    for _, child in clone.Main.Drones:GetChildren() do
        local WeldConstraint = Instance.new("WeldConstraint")

        WeldConstraint.Parent = child
        WeldConstraint.Part0 = clone.Main
        WeldConstraint.Part1 = child
    end

    local v135 = math.random(1, 2) == 2 and true

    coroutine.wrap(move)(clone, math.random(2, 6), v135, math.random(0, 1), 90, true, 60, 20)
end
function glitch(p20)
    local clone = v9:Clone()
    local Run = clone.Animations.Run
    local Attack = clone.Animations.Attack
    local AnimationController = clone.AnimationController
    local Ambience_Glitch = game.ReplicatedStorage.ModulesClient.EntityModules.Glitch.Ambience_Glitch
    local GlitchScreen = LocalPlayer.PlayerGui.MainUI.MainFrame.GlitchScreen

    clone.Parent = workspace
    LocalPlayer.Character.HumanoidRootPart.Anchored = true
    clone:PivotTo(LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, -100))
    clone:PivotTo(CFrame.lookAt(clone.PrimaryPart.Position, LocalPlayer.Character.HumanoidRootPart.Position))
    clone.Parent = workspace.CurrentCamera

    local Sound = game.ReplicatedStorage.ModulesClient.EntityModules.Glitch.Sound
    local SoundHurt = Sound.Parent:FindFirstChild("SoundHurt")

    if not SoundHurt then
        SoundHurt = Instance.new("Sound")
    end

    SoundHurt.Name = "SoundHurt"
    SoundHurt.SoundId = "rbxassetid://9117059057"
    SoundHurt.PlaybackSpeed = 0.2
    SoundHurt.Volume = 0.15
    SoundHurt.Parent = Sound.Parent

    local DistortionSoundEffect = SoundHurt:FindFirstChild("DistortionSoundEffect")

    if not DistortionSoundEffect then
        DistortionSoundEffect = Instance.new("DistortionSoundEffect")
    end

    DistortionSoundEffect.Parent = SoundHurt
    DistortionSoundEffect.Level = 1
    DistortionSoundEffect.Enabled = true
    DistortionSoundEffect.Priority = 2

    local track = AnimationController:LoadAnimation(Run)

    track:Play()
    Sound:Play()
    SoundHurt:Play()
    TweenService:Create(clone.PrimaryPart, TweenInfo.new(0.9, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 6, -5) * CFrame.fromEulerAnglesXYZ(0, 3.141592653589793, 0)
	}):Play()
    TweenService:Create(SoundHurt, TweenInfo.new(3), {
		Volume = 0
	}):Play()
    wait(0.7)

    local clone2 = Ambience_Glitch:Clone()

    clone2.Parent = game:GetService("Lighting")
    clone2.Enabled = true
    wait(0.1)
    track:Stop()
    AnimationController:LoadAnimation(Attack):Play()
    wait(0.2)
    GlitchScreen.Visible = true
    wait(1)
    GlitchScreen.Visible = false
    clone:Destroy()
    LocalPlayer.Character.HumanoidRootPart.Anchored = false
    wait(0.1)
    clone2:Destroy()
    wait(0.4)

    if p20 == true then
        local GlitchTrial = LocalPlayer.PlayerGui.MainUI.MainFrame.GlitchTrial
        local TextLabel = GlitchTrial.TextLabel
        local Sound2 = GlitchTrial:FindFirstChild("Sound")

        if not Sound2 then
            Sound2 = Instance.new("Sound")
        end

        Sound2.SoundId = "rbxassetid://108642841511541"

        local DistortionSoundEffect2 = Sound2:FindFirstChild("DistortionSoundEffect")

        if not DistortionSoundEffect2 then
            DistortionSoundEffect2 = Instance.new("DistortionSoundEffect")
        end

        DistortionSoundEffect2.Parent = Sound2
        DistortionSoundEffect2.Level = 0.89
        DistortionSoundEffect2.Priority = 0
        DistortionSoundEffect2.Enabled = true

        local EqualizerSoundEffect = Sound2:FindFirstChild("EqualizerSoundEffect")

        if not EqualizerSoundEffect then
            EqualizerSoundEffect = Instance.new("EqualizerSoundEffect")
        end

        EqualizerSoundEffect.Parent = Sound2
        EqualizerSoundEffect.HighGain = 4
        EqualizerSoundEffect.Priority = 0
        EqualizerSoundEffect.MidGain = 0
        EqualizerSoundEffect.LowGain = 3
        EqualizerSoundEffect.Enabled = true
        Sound2.Parent = GlitchTrial
        Sound2:Play()
        GlitchTrial.Visible = true
        TextLabel.Text = "V0hBVCBUSEUgRlVDSw=="
        TextLabel.Position = UDim2.fromScale(0.3, 0.7)
        TextLabel.TextColor3 = Color3.new(1, 0, 0)
        GlitchTrial.ImageColor3 = TextLabel.TextColor3
        wait(0.35)
        TextLabel.Text = "QklUQ0ggVEhJUyBJUyBNT0RERUQ="
        TextLabel.Position = UDim2.fromScale(0.2, 0.4)
        TextLabel.TextColor3 = Color3.new(0, 1, 0)
        GlitchTrial.ImageColor3 = TextLabel.TextColor3
        wait(0.35)
        TextLabel.Text = "YW55d2F5cyBpIGhvcGUgdSBzdXJ2aXZl=="
        TextLabel.Position = UDim2.fromScale(0.6, 0.6)
        TextLabel.TextColor3 = Color3.new(0, 0, 1)
        GlitchTrial.ImageColor3 = TextLabel.TextColor3
        wait(0.35)
        GlitchTrial.Visible = false
    end

    wait(0.5)
    SoundHurt:Stop()
    SoundHurt.Volume = 0.15
end
repeat
    wait(0.2)
until workspace.CurrentRooms:FindFirstChild("GlitchCube", true)
local GlitchCube = workspace.CurrentRooms:FindFirstChild("GlitchCube", true)
local BetterPrompt = GlitchCube:FindFirstChild("BetterPrompt")
if not BetterPrompt then
    BetterPrompt = GlitchCube.ModulePrompt:Clone()
end
local v27 = BetterPrompt
v27.Name = "BetterPrompt"
if math.random(1, 7) <= 3 then
    v27.Enabled = false
else
    GlitchCube.ModulePrompt.Enabled = false
end
v27.Parent = GlitchCube
v27.Triggered:Connect(function()
    v27.Enabled = false
    glitch(true)
    GlitchCube:Destroy()

    local v153 = math.random(1, 4)

    if v153 == 1 then
        spawnbash()

        return
    end

    if v153 == 2 then
        spawnscribbles()

        return
    end

    if v153 == 3 then
        spawnblitz()

        return
    end

    spawndrones()
end)
