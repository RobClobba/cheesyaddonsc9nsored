
cheesy.AddonInfo = {
    Name = "glitched_entities",
    Title = "glitched Entities",
    Description = "spawn Glitch Scribbles, Bash, Blitz, and Drones from a Cheesy tab.",
    Game = "hotel/mines",
}

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
local function deathmsg(message)
    if Library and Library.Notify then
        Library:Notify({
            Title = "Glitched Entities",
            Description = message,
            Time = 3,
        })
    else
        warn("[Glitched Entities] " .. tostring(message))
    end
end

function died(entityType, entityName, _)
    local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    local mainUI = playerGui and playerGui:FindFirstChild("MainUI")
    local stats = mainUI and mainUI:FindFirstChild("Statistics")
    local deathLabel = stats and stats:FindFirstChild("Death")

    if deathLabel then
        deathLabel.Text = "Died to " .. tostring(t2[entityName] or entityName)
    end

    deathmsg("You were caught by " .. tostring(entityName) .. ".")

    local deathData = data[entityType]
    if deathData then
        deathData[entityName] = (deathData[entityName] or 0) + 1
        deathData.Fully = (deathData.Fully or 0) + 1

        pcall(function()
            writefile("GlitchDeaths.json", HttpService:JSONEncode(data))
        end)
    end

    if entityType == "Curious" then
        t1.curious.Playing = false
        t1.curious.End:Play()
    else
        t1.guiding.Playing = false
        t1.guiding.End:Play()
    end
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
    if not workspace:FindFirstChild("CurrentRooms") or not gethroom() then
        deathmsg("CurrentRooms is not ready yet.")
        return
    end
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
    deathmsg("Glitch encounter triggered.")
    clone:Destroy()
    LocalPlayer.Character.HumanoidRootPart.Anchored = false
    wait(0.1)
    clone2:Destroy()
    wait(0.4)

    if p20 == true then
        deathmsg("Glitch trial event triggered.")
    end

    wait(0.5)
    SoundHurt:Stop()
    SoundHurt.Volume = 0.15
end
-- Cheesy UI: entity controls live in this tab instead of a separate custom GUI.
local GlitchedEntitiesTab = cheesy:AddTab("Glitched Entities", "skull")

local EntityGroup = cheesy:AddLeftGroupbox("Spawn entities", GlitchedEntitiesTab)
local EventGroup = cheesy:AddRightGroupbox("Glitch event", GlitchedEntitiesTab)

EntityGroup:AddLabel({
    Text = "Spawn one of the glitched entities from the Cheesy menu.",
    DoesWrap = true,
})

EntityGroup:AddButton({
    Text = "Spawn Glitch Scribbles",
    Func = function()
        spawnscribbles()
    end,
})

EntityGroup:AddButton({
    Text = "Spawn Glitch Bash",
    Func = function()
        spawnbash()
    end,
})

EntityGroup:AddButton({
    Text = "Spawn Glitch Blitz",
    Func = function()
        spawnblitz()
    end,
})

EntityGroup:AddButton({
    Text = "Spawn Glitch Drones",
    Func = function()
        spawndrones()
    end,
})

EventGroup:AddLabel({
    Text = "Plays the Glitch encounter effect. This no longer creates or controls a separate custom GUI.",
    DoesWrap = true,
})

EventGroup:AddButton({
    Text = "Trigger Glitch Encounter",
    Func = function()
        task.spawn(function()
            glitch(false)
        end)
    end,
})

EventGroup:AddButton({
    Text = "Trigger Glitch Trial",
    Func = function()
        task.spawn(function()
            glitch(true)
        end)
    end,
})

