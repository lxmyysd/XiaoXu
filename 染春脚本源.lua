local msg = Instance.new("Message",workspace)
msg.Text = "欢迎使用染春脚本"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "作者名字"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "CN_BLPO"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "脚本群号"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "1057418314"
wait(1.8)
msg:Destroy()

local msg = Instance.new("Message",workspace)
msg.Text = "祝你玩得开心，玩得愉快"
wait(1.8)
msg:Destroy()

if getgenv().ED_AntiKick then
	return
end

getgenv().ED_AntiKick = {
	Enabled = true, -- Set to false if you want to disable the Anti-Kick.
	SendNotifications = true, -- Set to true if you want to get notified for every event
	CheckCaller = true -- Set to true if you want to disable kicking by other executed scripts
}
local dropdown = {}
local playernamedied = ""

for i, player in pairs(game.Players:GetPlayers()) do
    dropdown[i] = player.Name
end

function Notify(top, text, ico, dur)
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = top,
    Text = text,
    Icon = ico,
    Duration = dur,
  })
end

local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("小冷时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local FpsGui = Instance.new("ScreenGui") local FpsXS = Instance.new("TextLabel") FpsGui.Name = "FPSGui" FpsGui.ResetOnSpawn = false FpsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling FpsXS.Name = "FpsXS" FpsXS.Size = UDim2.new(0, 100, 0, 50) FpsXS.Position = UDim2.new(0, 10, 0, 10) FpsXS.BackgroundTransparency = 1 FpsXS.Font = Enum.Font.SourceSansBold FpsXS.Text = "帧率: 0" FpsXS.TextSize = 20 FpsXS.TextColor3 = Color3.new(1, 1, 1) FpsXS.Parent = FpsGui function updateFpsXS() local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait()) FpsXS.Text = "帧率: " .. fps end game:GetService("RunService").RenderStepped:Connect(updateFpsXS) FpsGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Lengui = loadstring(game:HttpGet("https://raw.githubusercontent.com/LENG8123/UI/refs/heads/main/%E5%86%B7library.lua"))()     
local win = Lengui:new("染春脚本")
--
local UITab1 = win:Tab("『信息』",'16060333448')

local about = UITab1:section("『LENG Script』",false)

about:Label("染春脚本")
about:Label("作者QQ：3253549307")
about:Label("QQ群：1057418314")
about:Label("作者：小徐,霖霖")
about:Label("进群发最新脚本")
about:Label("脚本持续更新中")
about:Label("帮助者:霖霖")
about:Label("小皮是窝一辈子的恩人")
about:Label("脚本懒得优化")
about:Label("欢迎使用🤓")

local UITab2 = win:Tab("『帮助榜』",'16060333448')

local about = UITab2:section("『LENG Script』",true)

about:Label("NO.1:霖霖")
about:Label("NO.2:小皮")
about:Label("NO.3:神缪")
about:Label("NO.4:塑料")
about:Label("NO.5:冉冉")
about:Label("NO.6:xrk")

local UITab3 = win:Tab("『出生榜』",'16060333448')

local about = UITab3:section("『LENG Script』",true)
    
about:Label("NO.1:SANA")
about:Label("NO.2:枷锁")
about:Label("NO.3:辞")
about:Label("NO.4:敬勤")

local UITab4 = win:Tab("『加入服务器』",'16060333448')

local about = UITab4:section("『LENG Script』",true)

about:Button("加入极速传奇",function()
local game_id = 3101667897
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入鲨口生求2",function()
local game_id = 8908228901
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入监狱人生",function()
local game_id = 155615604
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入忍者传奇",function()
local game_id = 3956818381
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入Break in (故事)",function()
local game_id = 1318971886
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入自然灾害生存游戏",function()
local game_id = 189707
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入力量传奇",function()
local game_id = 3623096087
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入餐厅大亨2",function()
local game_id = 3398014311
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)
    
local UITab5 = win:Tab("『复制染春脚本群系列』",'16060333448')

local about = UITab5:section("『LENG Script』",true)

    about:Button("点我复制染春脚本交流群",function()
    setclipboard("724814074")
end)

    about:Button("点我复制2群",function()
    setclipboard("1057418314")
end)

about:Button("点我复制脚本群",function()
    setclipboard("1007217151")
end)

    about:Button("点我复制作者QQ",function()
    setclipboard("3253549307")
end)

local UITab6 = win:Tab("『通用』",'16060333448')

local about = UITab6:section("『通用』",true)

local Players = about:Dropdown("选择玩家", 'Dropdown', dropdown, function(v)
    playernamedied = v
end)

game.Players.ChildAdded:Connect(function(player)
    dropdown[player.UserId] = player.Name
    Players:AddOption(player.Name)
end)

game.Players.ChildRemoved:Connect(function(player)
    Players:RemoveOption(player.Name)
    for k, v in pairs(dropdown) do
        if v == player.Name then
            dropdown[k] = nil
        end
    end
end)

about:Button("传送到玩家旁边", function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(playernamedied)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        HumRoot.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        Notify("冷", "已经传送到玩家身边", "rbxassetid://", 5)
    else
        Notify("冷", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)

about:Button("把玩家传送过来", function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(playernamedied)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        tp_player.Character.HumanoidRootPart.CFrame = HumRoot.CFrame + Vector3.new(0, 3, 0)
        Notify("冷", "已传送过来", "rbxassetid://", 5)
    else
        Notify("冷", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)

about:Toggle("查看玩家", 'Toggleflag', false, function(state)
    if state then
        game:GetService('Workspace').CurrentCamera.CameraSubject =
            game:GetService('Players'):FindFirstChild(playernamedied).Character.Humanoid
            Notify("冷", "已开启", "rbxassetid://", 5)
    else
        Notify("冷", "已关闭", "rbxassetid://", 5)
        local lp = game.Players.LocalPlayer
        game:GetService('Workspace').CurrentCamera.CameraSubject = lp.Character.Humanoid
    end
end)

about:Button("玩家加入游戏提示",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)

about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
about:Toggle("移除UI辉光", "DHG", false, function(DHG)
    if DHG then
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
    else
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
    end
end)

local about = UITab6:section("『自瞄与子追』",true)

about:Button("冷自瞄（死亡消失）",function()
loadstring(game:HttpGet("https://pastefy.app/ZYMlyhhz/raw",true))()
end)

about:Button("宙斯自瞄",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()
end)

about:Button("英文自瞄",function()
loadstring(game:HttpGet("https://rentry.co/n55gmtpi/raw", true))()
end)

about:Button("自瞄50",function()
loadstring(game:HttpGet("https://pastefy.app/b3uXjRF6/raw",true))()
end)

about:Button("自瞄100",function()
loadstring(game:HttpGet("https://pastefy.app/tQrd2r0L/raw",true))()
end)

about:Button("自瞄150",function()
loadstring(game:HttpGet("https://pastefy.app/UOQWFvGp/raw",true))()
end)

about:Button("自瞄200",function()
loadstring(game:HttpGet("https://pastefy.app/b5CuDuer/raw",true))()
end)

about:Button("自瞄250",function()
loadstring(game:HttpGet("https://pastefy.app/p2huH7eF/raw",true))()
end)

about:Button("自瞄300",function()
loadstring(game:HttpGet("https://pastefy.app/nIyVhrvV/raw",true))()
end)

about:Button("自瞄350",function()
loadstring(game:HttpGet("https://pastefy.app/pnjKHMvV/raw",true))()
end)

about:Button("自瞄400",function()
loadstring(game:HttpGet("https://pastefy.app/LQuP7sjj/raw",true))()
end)

about:Button("自瞄600",function()
loadstring(game:HttpGet("https://pastefy.app/WmcEe2HB/raw",true))()
end)

about:Button("自瞄全屏",function()
loadstring(game:HttpGet("https://pastefy.app/n5LhGGgf/raw",true))()
end)

about:Button("阿尔子追",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
end)

about:Button("俄州子追",function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/ClasiniZukov/e7547e7b48fa90d10eb7f85bd3569147/raw/f95cd3561a3bb3ac6172a14eb74233625b52e757/gistfile1.txt"))()
end)

local about = UITab6:section("『范围』",true)

about:Textbox("自定义范围!", "HitBox", "输入", function(Value)
   _G.HeadSize = Value
    _G.Disabled = true 
   game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
   v.Character.HumanoidRootPart.Transparency = 0.7 
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
    v.Character.HumanoidRootPart.Material = "Neon"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end 
   end 
   end
    end)
end)

about:Button("普通范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)

about:Button("中等范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)

about:Button("全图范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
end)

about:Button("终极范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))()
end)

local about = UITab6:section("『飞』",true)

about:Button("飞车",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/-V2.0/refs/heads/main/%E5%86%B7%E9%A3%9E%E8%BD%A6%E6%BA%90%E7%A0%81.txt"))()
end)

about:Button("飞行v1",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()
end)

about:Button("染春飞行",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/-V3.0/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8)%20(1).txt"))()
end)

local about = UITab6:section("『剩下懒得排了』",true)

about:Button("反挂机v2",function()
  loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
    
about:Button("获得管理员权限",function()
loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)

about:Button("死亡笔记",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)

about:Button("汉化穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)

about:Button("透视",function()  
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
    end)

about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

about:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
    end)

about:Toggle("无限跳","Toggle",false,function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Button("甩人",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)
    
about:Button("替身",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
end)

about:Button("爬墙",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("iw指令", function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

about:Button("工具挂",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
end)

about:Button("铁拳",function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end)

about:Toggle("ESP 显示名字", "AMG", ENABLED, function(enabled)
    if enabled then ENABLED = true for _, player in ipairs(Players:GetPlayers()) do onPlayerAdded(player) end Players.PlayerAdded:Connect(onPlayerAdded) Players.PlayerRemoving:Connect(onPlayerRemoving) local localPlayer = Players.LocalPlayer if localPlayer and localPlayer.Character then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end RunService.Heartbeat:Connect(function() if ENABLED then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end end) else ENABLED = false for _, player in ipairs(Players:GetPlayers()) do onPlayerRemoving(player) end RunService:UnbindFromRenderStep("move") end
end)

about:Toggle("Circle ESP", "ESP", false, function(state)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                if state then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = player.Character
                    highlight.Adornee = player.Character

                    local billboard = Instance.new("BillboardGui")
                    billboard.Parent = player.Character
                    billboard.Adornee = player.Character
                    billboard.Size = UDim2.new(0, 100, 0, 100)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = billboard
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.new(1, 1, 1)
                    nameLabel.TextStrokeTransparency = 0.5
                    nameLabel.TextScaled = true

                    local circle = Instance.new("ImageLabel")
                    circle.Parent = billboard
                    circle.Size = UDim2.new(0, 50, 0, 50)
                    circle.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center the circle
                    circle.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
                    circle.BackgroundTransparency = 1
                    circle.Image = "rbxassetid://2200552246" -- Replace with your circle image asset ID
                else
                    if player.Character:FindFirstChildOfClass("Highlight") then
                        player.Character:FindFirstChildOfClass("Highlight"):Destroy()
                    end
                    if player.Character:FindFirstChildOfClass("BillboardGui") then
                        player.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
                    end
                end
            end
        end
    end)

about:Button("透视1",function()
loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
end)

about:Button("透视2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

about:Button("无敌『不适用』",function()
loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
end)

about:Button("隐身（E）",function()
loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
end)

about:Button("电脑键盘",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

about:Button("改fps",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
end)

about:Button("fps显示",function()
loadstring(game:HttpGet("https://pastefy.app/d9j82YJr/raw",true))()
end)

about:Button("解帧",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FpsBoost-9260"))()
end)

about:Button("踏空行走",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

about:Button("紫莎",function()
game.Players.LocalPlayer.Character.Humanoid.Health=0
end)

about:Button("飞檐走壁",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("夜视仪",function()
    _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)

about:Button("反挂机",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)

about:Button("无限跳",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end)

about:Button("转圈",function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

about:Button("操人脚本",function()
loadstring(game:HttpGet("https://pastebin.com/raw/bzmhRgKL"))();
end)

about:Button("操b脚本", function()
  local SimpleSexGUI = Instance.new("ScreenGui") local FGUI = Instance.new("Frame") local btnNaked = Instance.new("TextButton") local btnSex = Instance.new("TextButton") local tbxVictim = Instance.new("TextBox") local lblFUCKEMALL = Instance.new("TextLabel") local ImageLabel = Instance.new("ImageLabel") local lbltitle = Instance.new("TextLabel") local TextLabel = Instance.new("TextLabel") SimpleSexGUI.Name = "SimpleSexGUI" SimpleSexGUI.Parent = game.CoreGui FGUI.Name = "FGUI" FGUI.Parent = SimpleSexGUI FGUI.BackgroundColor3 = Color3.new(255,255,255) FGUI.BorderSizePixel = 1 FGUI.Position = UDim2.new(0,0, 0.667, 0) FGUI.Size = UDim2.new(0,317, 0,271) FGUI.Draggable = true lbltitle.Name = "Title" lbltitle.Parent = FGUI lbltitle.BackgroundColor3 = Color3.new(255,255,255) lbltitle.BorderSizePixel = 1 lbltitle.Position = UDim2.new (0, 0,-0.122, 0) lbltitle.Size = UDim2.new (0, 317,0, 33) lbltitle.Visible = true lbltitle.Active = true lbltitle.Draggable = false lbltitle.Selectable = true lbltitle.Font = Enum.Font.SourceSansBold lbltitle.Text = "一个简单的操蛋脚本!!" lbltitle.TextColor3 = Color3.new(0, 0, 0) lbltitle.TextSize = 20 btnSex.Name = "Sex" btnSex.Parent = FGUI btnSex.BackgroundColor3 = Color3.new(255,255,255) btnSex.BorderSizePixel = 1 btnSex.Position = UDim2.new (0.044, 0,0.229, 0) btnSex.Size = UDim2.new (0, 99,0, 31) btnSex.Visible = true btnSex.Active = true btnSex.Draggable = false btnSex.Selectable = true btnSex.Font = Enum.Font.SourceSansBold btnSex.Text = "让我们操蛋吧!!" btnSex.TextColor3 = Color3.new(0, 0, 0) btnSex.TextSize = 20 tbxVictim.Name = "VictimTEXT" tbxVictim.Parent = FGUI tbxVictim.BackgroundColor3 = Color3.new(255,255,255) tbxVictim.BorderSizePixel = 1 tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0) tbxVictim.Size = UDim2.new (0, 133,0, 27) tbxVictim.Visible = true tbxVictim.Active = true tbxVictim.Draggable = false tbxVictim.Selectable = true tbxVictim.Font = Enum.Font.SourceSansBold tbxVictim.Text = "名字" tbxVictim.TextColor3 = Color3.new(0, 0, 0) tbxVictim.TextSize = 20 lblFUCKEMALL.Name = "FUCKEMALL" lblFUCKEMALL.Parent = FGUI lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255) lblFUCKEMALL.BorderSizePixel = 1 lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0) lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27) lblFUCKEMALL.Visible = true lblFUCKEMALL.Font = Enum.Font.SourceSansBold lblFUCKEMALL.Text = "操蛋和操蛋" lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0) lblFUCKEMALL.TextSize = 20 ImageLabel.Name = "ImageLabel" ImageLabel.Parent = FGUI ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..." ImageLabel.BorderSizePixel = 1 ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0) ImageLabel.Size = UDim2.new (0, 106,0, 121) btnSex.MouseButton1Click:Connect(function() local player = tbxVictim.Text local stupid = Instance.new('Animation') stupid.AnimationId = 'rbxassetid://148840371' hummy = game:GetService("Players").LocalPlayer.Character.Humanoid pcall(function() hummy.Parent.Pants:Destroy() end) pcall(function() hummy.Parent.Shirt:Destroy() end) local notfunny = hummy:LoadAnimation(stupid) notfunny:Play() notfunny:AdjustSpeed(10) while hummy.Parent.Parent ~= nil do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame end end)
end)

about:Button("Dex抓包",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoFenHG/Dex-Explorer/refs/heads/main/Dex-Explorer.lua"))()
end)

about:Button("位置仪",function()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local copy = Instance.new("TextButton")
local pos = Instance.new("TextBox")
local find = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.639646292, 0, 0.399008662, 0)
Frame.Size = UDim2.new(0, 387, 0, 206)
Frame.Active = true
 
title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 387, 0, 50)
title.Font = Enum.Font.GothamBold
title.Text = "位置仪"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 30.000
title.TextWrapped = true
 
copy.Name = "copy"
copy.Parent = Frame
copy.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
copy.BorderSizePixel = 0
copy.Position = UDim2.new(0.527131796, 0, 0.635922313, 0)
copy.Size = UDim2.new(0, 148, 0, 50)
copy.Font = Enum.Font.GothamSemibold
copy.Text = "复制"
copy.TextColor3 = Color3.fromRGB(255, 255, 255)
copy.TextSize = 20.000
 
pos.Name = "pos"
pos.Parent = Frame
pos.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
pos.BorderSizePixel = 0
pos.Position = UDim2.new(0.0904392749, 0, 0.305825233, 0)
pos.Size = UDim2.new(0, 317, 0, 50)
pos.Font = Enum.Font.GothamSemibold
pos.Text = ""
pos.TextColor3 = Color3.fromRGB(255, 255, 255)
pos.TextSize = 14.000
pos.TextWrapped = true
 
find.Name = "find"
find.Parent = Frame
find.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
find.BorderSizePixel = 0
find.Position = UDim2.new(0.0904392898, 0, 0.635922313, 0)
find.Size = UDim2.new(0, 148, 0, 50)
find.Font = Enum.Font.GothamSemibold
find.Text = "查找当前位置"
find.TextColor3 = Color3.fromRGB(255, 255, 255)
find.TextSize = 20.000
 
-- Scripts:
 
local function UMTQ_fake_script() -- copy.LocalScript 
	local script = Instance.new('LocalScript', copy)
 
	script.Parent.MouseButton1Click:Connect(function()
		setclipboard(script.Parent.Parent.pos.Text)
	end)
end
coroutine.wrap(UMTQ_fake_script)()
local function KJAYG_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)
 
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
 
	dragify(script.Parent)
end
coroutine.wrap(KJAYG_fake_script)()
local function EKBNYI_fake_script() -- find.LocalScript 
	local script = Instance.new('LocalScript', find)
 
	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.pos.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
	end)
end
coroutine.wrap(EKBNYI_fake_script)()
end)

local UITab7 = win:Tab("『画质光影』",'16060333448')

local about = UITab7:section("『画质光影』",true)

about:Button("光影", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("光影滤镜", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("超高画质",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

about:Button("光影V4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("RTX高仿",function()
loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
end)

about:Button("光影深", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
about:Button("光影浅", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

local UITab8 = win:Tab("『无限Robux』",'16060333448')

local about = UITab8:section("『无限Robux』",true)

about:Button("20Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("50Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("100Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("200Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("500Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("1000Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

local UITab99 = win:Tab("『FE』",'16060333448')

local about = UITab99:section("『FE』",true)

about:Button("FE C00lgui", function()
loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)
about:Button("FE 1x1x1x1", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
end)
about:Button("FE大长腿", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
end)
about:Button("FE用头", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)
about:Button("复仇者", function()
    loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
end)
about:Button("鼠标", function()
    loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
end)
about:Button("变怪物", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
about:Button("香蕉枪", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)
about:Button("超长🐔巴", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)
about:Button("操人", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
end)
about:Button("FE动画中心", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
about:Button("FE变玩家", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)
about:Button("FE猫娘R63", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)
about:Button("FE", function()
    loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()
end)

local UITab9 = win:Tab("『音乐』",'16060333448')

local about = UITab9:section("『音乐』",true)

about:Button("彩虹瀑布",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1837879082"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("防空警报", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://792323017"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("义勇军进行曲", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1845918434"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("火车音", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://3900067524"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("Gentry Road",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://5567523008"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("植物大战僵尸",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://158260415" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("早安越南",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8295016126" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("愤怒芒西 Evade?",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://5029269312" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("梅西",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://7354576319" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("永春拳",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1845973140" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("带劲的音乐",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://18841891575" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("韩国国歌",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1837478300" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("哥哥你女朋友不会吃醋吧?",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8715811379" 
     sound.Parent = game.Workspace 
     sound:Play()  
     end) 
      about:Button("蜘蛛侠出场声音",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://9108472930" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
      about:Button("消防车",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://317455930" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
      about:Button("万圣节1🎃",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1837467198" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("好听的",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1844125168" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
 about:Button("国外音乐脚本",function()          
 loadstring(game:HttpGet(('https://pastebin.com/raw/g97RafnE'),true))()                   
end) 
   about:Button("国歌[Krx版]",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1845918434" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("妈妈生的",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6689498326" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Music Ball-CTT",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://9045415830" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("电音",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6911766512" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("梗合集",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8161248815" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Its been so long",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6913550990" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Baller",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://13530439660" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end)
   about:Button("男娘必听",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6797864253" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("螃蟹之舞",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://54100886218" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("布鲁克林惨案",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6783714255" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("航空模拟器音乐",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1838080629" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
     
local UITab11 = win:Tab("『其他作者』",'16060333448')

local about = UITab11:section("『其他作者』",true)

about:Button("LS",function()
KingandJM = "King Advanced and Roaming prohibition center"LS = "LSTMArchive"Free = "My.Conscience"loadstring(game:HttpGet("https://github.com/XiaoyeQWQ/Bs/raw/refs/heads/main/LS.by.Moxiaobai.JM%20Studio.KingAdvancedteam.Members.loveme.LSTAB"))()
end)

about:Button("皮脚本",function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("禁漫中心",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()
end)

about:Button("XK",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

about:Button("初脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/nianchuchuchuchuchu/refs/heads/main/Protected_2427816874224132.txt"))()
end)

about:Button("鹤脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/qazpin66/-/refs/heads/main/%E9%B9%A41.5.lua"))()
end)

about:Button("鱼龙脚本(破解)",function()
getgenv().FH = "鱼龙脚本"loadstring(game:HttpGet(string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,102,50,48,105,51,48,115,52,48,104,47,70,72,47,109,97,105,110,47,70,72,46,108,117,97)))()
end)

about:Button("丁丁脚本(破解)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/xiu/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%81.txt"))()
end)

about:Button("染春被遗弃脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxmyysd/XiaoXu/refs/heads/main/%E8%A2%AB%E9%81%97%E5%BC%83%E6%9F%93%E6%98%A5%E6%BA%90%E7%A0%81(1).lua"))()
end)

about:Button("云脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/VIP/main/%E4%BA%91%E8%84%9A%E6%9C%AC/UNIVERSAL%20VERSION.LUA", true))()
end)

about:Button("king",function()
KingScript = "By King" Roblox= "新飞月二飞春"
KingTeam= "KingQQ新主群https://qm.qq.com/q/SU0hmhIvwk"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShenJiaoBen/ShenJiaoBen/main/King-------------Script.txt"))()
end)

about:Button("情云",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\83\99\114\105\112\116"))()
end)

about:Button("剑客",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JianKeCX/JianKeV5/refs/heads/main/QQqun155160100"))()
end)

about:Button("神青",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/SHEN-QINNG-SCRIPT.lua"))()
end)

about:Button("落叶中心",function()
getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
end)

about:Button("北脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fjhkl/qw/refs/heads/main/%E5%8C%97%E8%84%9A%E6%9C%AC.txt"))()
end)

about:Button("名脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wumingjiaoben/z/refs/heads/main/%E6%97%A0%E5%90%8D%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%813.0%20(1).lua"))()
end)

about:Button("斌脚本2.0.1",function() loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\66\73\78\46\108\117\97\34\41\41\40\41\10")
end)
  
about:Button("复制斌脚本卡密",function()
     setclipboard("bin2024HADE")
end)

local UITab12 = win:Tab("『战争大亨』",'16060333448')

local about = UITab12:section("『护盾』",true)

about:Button("玩家护盾电箱",function(state)
    local argsTemplate = {
    [1] = Vector3.new(),
    [2] = Vector3.new(0, 1, 0),
    [3] = game:GetService("Players").LocalPlayer.Character.RPG,
    [4] = game:GetService("Players").LocalPlayer.Character.RPG,
    [7] = "zxcvbnm4189Rocket2"
}

local localPlayer = game:GetService("Players").LocalPlayer
local localPlayerTeam = localPlayer.Team

while true do
    local players = game:GetService("Players"):GetPlayers()
    local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
    local downwardVector = Vector3.new(0, -1, 0)
    local targetPosition = localPlayerPosition + downwardVector * 500

    for _, player in ipairs(players) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Torso") then
            local args = table.clone(argsTemplate)
            args[1] = targetPosition
            args[5] = player.Character.Torso
            game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
        end

        if player ~= localPlayer and player.Team ~= localPlayerTeam then
            local playerTeamName = player.Team and player.Team.Name
            if playerTeamName then
                local shield = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):FindFirstChild(playerTeamName)
                    and workspace.Tycoon.Tycoons[playerTeamName]:FindFirstChild("PurchasedObjects")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects:FindFirstChild("Base Shield")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects["Base Shield"]:FindFirstChild("Shield")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects["Base Shield"].Shield:FindFirstChild("Shield4")
                
                if shield then
                    local args = table.clone(argsTemplate)
                    args[1] = targetPosition
                    args[5] = shield
                    game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                end
            end
        end
    end

    local playerTeamName = localPlayer.Team and localPlayer.Team.Name
    for _, tycoon in pairs(workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):GetChildren()) do
        if tycoon.Name ~= playerTeamName then
            for _, object in pairs(tycoon:WaitForChild("PurchasedObjects"):GetChildren()) do
                if object:FindFirstChild("ElectricalBox") then
                    local electricalBox = object:FindFirstChild("ElectricalBox")
                    if electricalBox:FindFirstChild("Effect") then
                        local args = table.clone(argsTemplate)
                        args[1] = targetPosition
                        args[5] = electricalBox:FindFirstChild("Effect")
                        game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                    end
                    if electricalBox:FindFirstChild("Effect2") then
                        local args = table.clone(argsTemplate)
                        args[1] = targetPosition
                        args[5] = electricalBox:FindFirstChild("Effect2")
                        game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                    end
                end
            end
        end
    end

    wait(0)
end
end)

about:Button("玩家与护盾",function(state)
local argsTemplate = {
    [1] = Vector3.new(),
    [2] = Vector3.new(0, 1, 0),
    [3] = game:GetService("Players").LocalPlayer.Character.RPG,
    [4] = game:GetService("Players").LocalPlayer.Character.RPG,
    [7] = "zxcvbnm4189Rocket2"
}

local localPlayer = game:GetService("Players").LocalPlayer
local localPlayerTeam = localPlayer.Team

while true do
    local players = game:GetService("Players"):GetPlayers()
    local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
    local upwardVector = Vector3.new(0, 1, 0)
    local targetPosition = localPlayerPosition + upwardVector * 1000

    for _, player in ipairs(players) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Torso") then
            local args = table.clone(argsTemplate)
            args[1] = targetPosition
            args[5] = player.Character.Torso

            game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
        end

        if player ~= localPlayer and player.Team ~= localPlayerTeam then
            local playerTeamName = player.Team and player.Team.Name
            if playerTeamName then
                local shield = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):FindFirstChild(playerTeamName)
                if shield then
                    shield = shield:FindFirstChild("PurchasedObjects")
                    if shield then
                        shield = shield:FindFirstChild("Base Shield")
                        if shield then
                            shield = shield:FindFirstChild("Shield")
                            if shield then
                                shield = shield:FindFirstChild("Shield4")
                                if shield then
                                    local args = table.clone(argsTemplate)
                                    args[1] = targetPosition
                                    args[5] = shield

                                    game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    wait(0)
end
end)

local about = UITab12:section("『护盾』",true)

about:Button("枪械全自动",function(state)
local player = game.Players.LocalPlayer
local backpack = player.Backpack

for _, tool in ipairs(backpack:GetChildren()) do
    local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
    if settingsModule then
        local gun = require(settingsModule)
        
        if gun["Bullets"] then
            gun["Bullets"] = 1
        end
        
        if gun["Ammo"] then
            gun["Ammo"] = 5000000
        end
        
        if gun["Mode"] then
            gun["Mode"] = "Auto"
        end
        
        if gun["FireModes"] and gun["FireModes"]["Auto"] ~= nil then
            gun["FireModes"]["Auto"] = true
        end
        
        if gun["FireRate"] then
            gun["FireRate"] = 1000000000
        end
        
        if gun["DamageMultiplier"] then
            gun["DamageMultiplier"] = 1000000000
        end
        
        if gun["Distance"] then
            gun["Distance"] = 1000000000
        end
        
        if gun["VRecoil"] then
            gun["VRecoil"] = {0, 0}
        end
        
        if gun["HRecoil"] then
            gun["HRecoil"] = {0, 0}
        end
        
        if gun["RecoilPunch"] then
            gun["RecoilPunch"] = 0
        end
        
        if gun["VPunchBase"] then
            gun["VPunchBase"] = 0
        end
        
        if gun["HPunchBase"] then
            gun["HPunchBase"] = 0
        end
        
        if gun["DPunchBase"] then
            gun["DPunchBase"] = 0
        end
        
        if gun["MinRecoilPower"] then
            gun["MinRecoilPower"] = 0
        end
        
        if gun["MaxRecoilPower"] then
            gun["MaxRecoilPower"] = 0
        end

        if gun["BSpeed"] then
            gun["BSpeed"] = 100000000
        end
        
        if gun["BDrop"] then
            gun["BDrop"] = 0
        end

        if gun["MinSpread"] then
            gun["MinSpread"] = 0
        end
        
        if gun["MaxSpread"] then
            gun["MaxSpread"] = 0
        end
    end
end
end)

about:Button("枪械连射400发",function(state)
local player = game.Players.LocalPlayer
local backpack = player.Backpack

for _, tool in ipairs(backpack:GetChildren()) do
    local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
    if settingsModule then
        local gun = require(settingsModule)
        
        if gun["Bullets"] then
            gun["Bullets"] = 400
        end
        
        if gun["Ammo"] then
            gun["Ammo"] = 5000000
        end
        
        if gun["FireRate"] then
            gun["FireRate"] = 1000000000
        end
        
        if gun["DamageMultiplier"] then
            gun["DamageMultiplier"] = 1000000000
        end
        
        if gun["Distance"] then
            gun["Distance"] = 1000000000
        end
        
        if gun["VRecoil"] then
            gun["VRecoil"] = {0, 0}
        end
        
        if gun["HRecoil"] then
            gun["HRecoil"] = {0, 0}
        end
        
        if gun["RecoilPunch"] then
            gun["RecoilPunch"] = 0
        end
        
        if gun["VPunchBase"] then
            gun["VPunchBase"] = 0
        end
        
        if gun["HPunchBase"] then
            gun["HPunchBase"] = 0
        end
        
        if gun["DPunchBase"] then
            gun["DPunchBase"] = 0
        end
        
        if gun["MinRecoilPower"] then
            gun["MinRecoilPower"] = 0
        end
        
        if gun["MaxRecoilPower"] then
            gun["MaxRecoilPower"] = 0
        end

        if gun["BSpeed"] then
            gun["BSpeed"] = 100000000
        end
        
        if gun["BDrop"] then
            gun["BDrop"] = 0
        end

        if gun["MinSpread"] then
            gun["MinSpread"] = 0
        end
        
        if gun["MaxSpread"] then
            gun["MaxSpread"] = 0
        end
    end

    local rocketModule = tool:FindFirstChild("RocketSettings")
    if rocketModule then
        local rocket = require(rocketModule)
        
        if rocket["velocity"] then
            rocket["velocity"] = 1000000000000
        end
        
        if rocket["Distance"] then
            rocket["Distance"] = 1000000000000
        end
        
        if rocket["RocketAmount"] then
            rocket["RocketAmount"] = 10000000000
        end
        
        if rocket["Acceleration"] then
            rocket["Acceleration"] = 1000000000000
        end
        
        if rocket["FireRate"] then
            rocket["FireRate"] = 10000000000000
        end
        
        if rocket["ExpRadius"] then
            rocket["ExpRadius"] = 10000000000
        end
    end
end
end)

local about = UITab12:section("『赠送』",true)

about:Button("赠送弹窗循环",function(state)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

while true do
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            local args = {
                [1] = "StarterCase",
                [2] = 1e20,
                [3] = player
            }

            ReplicatedStorage:WaitForChild("Attachments System"):WaitForChild("CamoCaseGift"):FireServer(unpack(args))
        end
    end
    wait(0)
end
end)

about:Button("一次性赠送弹窗",function(state)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function giveCaseToPlayer(player)
    if player ~= Players.LocalPlayer then
        local args = {
            [1] = "StarterCase",
            [2] = 1e20,
            [3] = player
        }

        ReplicatedStorage:WaitForChild("Attachments System"):WaitForChild("CamoCaseGift"):FireServer(unpack(args))
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    giveCaseToPlayer(player)
end

Players.PlayerAdded:Connect(giveCaseToPlayer)
end)

about:Button("一枪秒人",function()
loadstring(game:HttpGet('https://pastebin.com/raw/6b4XEjQF'))()
end)

about:Button("战争大亨1",function()
loadstring(game:HttpGet'https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua')()
end)

about:Button("战争大亨2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/War-Tycoon/main/Script"))() 
end)

about:Button("战争大亨3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))() 
end)

about:Button("战争大亨4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nici002018/GNHub/master/GNHub.lua", true))()
end)

about:Button("战争大亨5",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))()
end)

about:Button("战争大亨6",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/WarTycoon'))()
end)

about:Button("战争大亨7",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end)

local UITab13 = win:Tab("『忍者传奇』",'16060333448')

local about = UITab13:section("『忍者传奇』",true)
 
about:Button("获取所有元素", function()
    if game:GetService("ReplicatedStorage") and game:GetService("ReplicatedStorage").Elements and game.ReplicatedStorage and game.ReplicatedStorage.rEvents and game.ReplicatedStorage.rEvents.elementMasteryEvent then
        for i, v in pairs(game:GetService("ReplicatedStorage").Elements:GetChildren()) do
            local allelement = v.Name
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer(allelement)
        end
    end
end)

about:Button("传送",function()
loadstring(game:HttpGet("https://pastebin.com/raw/UzaUDSPK"))()
end)

about:Button("忍者传奇1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
end)

about:Button("忍者传奇2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatBlueDevil/Bleus/main/Ninja%20Legends/Source.lua"))()
end)

about:Button("忍者传奇3",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
end)

about:Button("忍者传奇4",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
end)

about:Button("忍者传奇汉化",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/renzhechuanqihanhua/refs/heads/main/%E5%BF%8D%E8%80%85%E4%BC%A0%E5%A5%87%E6%B1%89%E5%8C%96%E8%84%9A%E6%9C%AC%20(1).txt"))()
end)

about:Toggle("吸所有环", "Hoops", false, function(state)
    LS.hoops = state
    if LS.hoops then
        while LS.hoops do
            for i, v in ipairs(workspace.Hoops:GetChildren()) do
                if v.Name == "Hoop" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            wait()
            for i, v in ipairs(workspace.Hoops.Hoop:GetChildren()) do
                if v.Name == "touchPart" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
end)

local UITab14 = win:Tab("『监狱人生』",'16060333448')

local about = UITab14:section("『传送』",true)

about:Button("警卫室",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)

about:Button("监狱室内",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)

about:Button("监狱室外",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)

about:Button("犯罪复活点",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)

about:Button("传送院子", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.5759887695312, 97.99992370605469, 2455.056640625)
end)
about:Button("传送警车库", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.7301635742188, 98.20000457763672, 2503.56982421875)
end)
about:Button("传送死人下水道", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.4256591796875, 78.69828033447266, 2416.18359375)
end)
about:Button("传送食堂", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(921.0059204101562, 99.98993682861328, 2289.23095703125)
end)

local about = UITab14:section("『脚本』",true)

about:Button("无敌模式", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
about:Button("杀死所有人", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
end)

about:Button("变钢铁侠", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
end)
about:Button("变死神", function()
  loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
end)
about:Button("变车模型", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
end)

about:Button("变成警察", function()
    workspace.Remote.TeamEvent:FireServer("Bright blue");
end)
about:Button("变成囚犯", function()
    workspace.Remote.TeamEvent:FireServer("Bright orange");
end)

about:Toggle("杀死光环", "SSGH", false, function(SSGH)
    States.KillAura = SSGH if state then print("Kill Aura On") CreateKillPart() else print("Kill Aura Off") if Parts[1] and Parts[1].Name == "KillAura" then Parts[1]:Destroy() Parts[1] = nil end end end) function CreateKillPart() if Parts[1] then pcall(function() Parts[1]:Destroy() end) Parts[1] = nil end local Part = Instance.new("Part",plr.Character) local hilight = Instance.new("Highlight",Part) hilight.FillTransparency = 1 Part.Anchored = true Part.CanCollide = false Part.CanTouch = false Part.Material = Enum.Material.SmoothPlastic Part.Transparency = .98 Part.Material = Enum.Material.SmoothPlastic Part.BrickColor = BrickColor.White() Part.Size = Vector3.new(20,2,20) Part.Name = "KillAura" Parts[1] = Part end task.spawn(function() repeat task.wait()until plr.Character and char and char:FindFirstChildOfClass("Humanoid") if States.KillAura then CreateKillPart() end end) game:GetService("RunService").Stepped:Connect(function() if States.KillAura then for i,v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer then if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <14 and v.Character.Humanoid.Health >0 then local args = {[1] = v} for i =1,2 do task.spawn(function() game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args)) end) end end end end end
end)

about:Button("手里剑秒杀",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
end)

about:Button("监狱人生1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
end)

about:Button("监狱人生2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
end)

about:Button("监狱人生汉化",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
end)

local UITab17 = win:Tab("『驾驶帝国』",'7734068321')

local about = UITab17:section("『驾驶帝国』",true)

about:Button("驾驶帝国1",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
end)

about:Button("驾驶帝国2",function()
loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
end)

about:Button("驾驶帝国3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", true))()
end)

about:Button("驾驶帝国NEO",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
end)

local UITab18 = win:Tab("『铲雪模拟器』",'16060333448')

local about = UITab18:section("『铲雪模拟器』",true)

about:Toggle("自动收集雪","Value", false, function(Value)
        toggle = Value
    while toggle do wait()
    local args = {
        [1] = workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
        [2] = "Snow1",
        [3] = "MagicWand"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(args))
        end
    end)
    
about:Toggle("自动出售雪（要传送到指定地方）",   "Value",false, function(Value)
    toggle = Value
    while toggle do wait()
    local args = {
        [1] = "SellSnow",
        [2] = "Frosty"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
        end
    end)
    
about:Button("传送出售雪的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.4659423828125, 15.846257209777832, -66.55204010009766)
end)
    
about:Button("传送买车的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.10160064697266, 16.051794052124023, -141.703125)
end)
    
about:Button("传送买工具的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.7429962158203, 16.39700698852539, -12.935890197753906)
    end)
    
    about:Button("传送买背包的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(348.6633605957031, 17.03822898864746, -16.793842315673828)
end)
    
about:Button("传送买假日礼物的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.57424926757812, 16.215335845947266, 147.10423278808594)
end)
    
about:Button("传送买宠物的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.49563598632812, 17.887277603149414, 278.3686218261719)
end)
    
about:Button("传送超大铲雪的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-391.4309997558594, 15.84949016571045, 150.15187072753906)
end)
    
local UITab20 = win:Tab("『scp角色扮演』",'16060333448')

local about = UITab20:section("『LENG Script』",true)

about:Button("自动换蛋+++",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua"))()
end)

about:Button("传送到怪物点位",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/scp%20rp2", true))()
end)

about:Button("FreeLean-Hub",function()  
loadstring(game:HttpGet("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/FreeLeanSCP",true))()
end)

about:Button("发疯Bot",function() loadstring(game:HttpGet("https://gist.githubusercontent.com/cerealwithmilk/83c17f6e383b2fa0d70a887e14523593/raw/d0bee380c2e3ec3f72dc34d1b8ca345c4efc19d8/scp-roleplay.lua"))()
end)

about:Button("快速开门、广播+++",function()
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
end)

about:Button("SCPF COMMUNICATIONS RADIO",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","SCPF COMMUNICATIONS")
end)

about:Button("CLASS-D COMMUNICATIONS RADIO",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
end)

about:Button("Normal Chat",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
end)

about:Button("SCP可用范围",function()
    _G.HeadSize = 15
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)
about:Button("快速射击",function()
local g = getgc(true)
local t = {}
local p = game:GetService("Players").LocalPlayer
local function editCurrentGuns()
    for _, v in pairs(g) do
        if typeof(v) == "table" then
            if rawget(v, "Ammo") and rawget(v, "CurrentAmmo") then
                table.insert(t,v)
            end
        end
    end
    
    for _,v in pairs(t) do
        v.TBS = 0
    end
end
task.spawn(editCurrentGuns)

p.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
for _,v in pairs(p.Backpack:GetChildren()) do
    if v:IsA("Tool") and v:FindFirstChild("identifier") then
        v:FindFirstChild("identifier"):Destroy()
    end
end; for _, v in pairs(game:GetService("ReplicatedStorage").GunSettings:GetChildren()) do
    if v:IsA("ModuleScript") then
        local m = require(v)
        if m.TBS then
            m.TBS = 0
        end
    end
end; p.Backpack.ChildAdded:Connect(function(v)
    p.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
    if v:IsA("Tool") and v:FindFirstChild("identifier") then
        v:FindFirstChild("identifier"):Destroy()
    end
end)
end)

about:Button("自动换蛋+++",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua"))()
end)

about:Button("SCP最强脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Scripts/SCP%3A%20Roleplay"))()
end)

local UITab21 = win:Tab("『极速传奇』",'16060333448')

local about = UITab21:section("『修改』",true)

about:Textbox("修改经验值", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.exp.Value=arg
end)

about:Textbox("修改等级", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.level
.Value=arg
end)

about:Textbox("修改比赛数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Races.Value=arg
end)

about:Textbox("修改圈数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value=arg
end)

about:Textbox("修改重生", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value=arg
end)

about:Textbox("修改步数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Steps.Value=arg
end)

about:Textbox("修改尾迹容量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value=arg
end)

about:Textbox("修改宠物位数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value=arg
end)

about:Textbox("修改宝石数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.Gems.Value=arg
end)

local about = UITab21:section("『自动』",true)

about:Toggle("自动设置最大速度", "SD", false, function(SD)
    if SD then while true do game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeSpeed,math.huge")
 wait() end end
end)

about:Toggle("自动设置最大跳跃", "TY", false, function(TY)
    if TY then while true do game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeJump,math.huge")
 wait() end end
end)

local about = UITab21:section("『无』",true)

about:Button("boa",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
end)

about:Button("汉化",function()
loadstring(game:HttpGet("https://pastebin.com/raw/egMXJcwB", true))()
end)

local UITab22 = win:Tab("『格林维尔』",'16060333448')

local about = UITab22:section("『格林维尔』",true)

about:Button("格林维尔",function()
loadstring(game:HttpGet("https://github.com/root-jiege/new/raw/refs/heads/main/KO"))()
end)

about:Button("格林维尔2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8643/test/main/green"))()
end)

about:Button("格林维尔3",function()
loadstring(game:HttpGet("https://pastefy.app/WBYAsWJm/raw"))()
end)

local UITab23 = win:Tab("『CDID』",'16060333448')

local about = UITab23:section("『CDID』",true)

about:Button("CDID",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Car-Driving-Indonesia-Lunar-hub-v2-12376"))()
end)

about:Button("CDID2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Marco8643/test/main/cdid%20script'))()
end)

about:Button("冷",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/lengcdid/refs/heads/main/%E5%86%B7cdid%E6%BA%90.lua"))()
end)

local UITab24 = win:Tab("『挖到中国』",'16060333448')

local about = UITab24:section("『挖到中国』",true)

about:Button("远程购买炸弹",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/wachuzhongguo/refs/heads/main/jm%E6%8C%96%E5%88%B0%E4%B8%AD%E5%9B%BD%E8%BF%9C%E7%A8%8B%E8%B4%AD%E4%B9%B0%E7%82%B8%E5%BC%B9.lua"))()
end)

