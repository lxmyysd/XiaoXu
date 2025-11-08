local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Idk hub V1.8", "BloodTheme")

--Main
local Main = Window:NewTab("Fe scripts")
local MainSection = Main:NewSection("Scripts")


MainSection:NewButton("Fe monster", "Need pal hair", function()
    clickfling = true -- set this to false if u dont want click fling or use torso fling

function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {} local te = table.insert local m = plr:GetMouse()  if char:FindFirstChild('Pal Hair') then else return end  _G.Jitter=Vector3.new(0,30,0)  for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~= 'HumanoidRootPart' then  bf=Instance.new('BodyForce',v) bf.Force=Vector3.new(50,50,50) te(ct,game:GetService("RunService").Heartbeat:connect(function() pcall(function() v.Velocity = _G.Jitter v.BodyForce.Force=Vector3.new(50,50,50) game.Players.LocalPlayer.ReplicationFocus=workspace sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",9e9) end) end)) end end  char.Archivable = true fl=Instance.new('Folder',char) fl.Name = 'ArmFling' local reanim = char:Clone() char.Humanoid:ChangeState(16) char.HumanoidRootPart:Destroy()  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  hats=0 function create(part, parent, p, r) hats=hats+1 Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name..hats parent.Attachment.Name = part.Name..hats part.AlignPosition.Attachment0 = part[part.Name..hats] part.AlignOrientation.Attachment0 = part[part.Name..hats] part.AlignPosition.Attachment1 = parent[part.Name..hats] part.AlignOrientation.Attachment1 = parent[part.Name..hats] parent[part.Name..hats].Position = p or Vector3.new() part[part.Name..hats].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  function Pos(part, parent, p) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part.AlignPosition.MaxForce = 999999999*10 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false end  function nc(p) if p:IsA('BasePart') or p:IsA('Part') then te(ct,srv.Stepped:Connect(function() p.CanCollide=false end)) te(ct,srv.RenderStepped:Connect(function() p.CanCollide=false end)) else print('Cannot noclip '..p) end end  function af() for i,v in next, game.Players:GetDescendants() do if v:IsA('Player') and v.Name ~= game.Players.LocalPlayer.Name then for _,c in next, v.Character:GetDescendants() do if c:IsA('BasePart') and v.Parent== char then noo=Instance.new('NoCollisionConstraint',c) noo.Part1=char['Torso'] noo.Part0=c noo2=Instance.new('NoCollisionConstraint',c) noo2.Part1=char['Head'] noo2.Part0=c end end end end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') and v.Name ~= 'Pal Hair' then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Motor6D') and v.Name ~= 'Neck' then v:Destroy() end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') and v.Name ~= 'Right Leg' and v.Name ~= 'Head' and v.Parent == char then create(v,reanim[v.Name]) end end  function flinger(p) f=Instance.new('BodyAngularVelocity',p) f.P=9e9*10 f.AngularVelocity = Vector3.new(9e9*10,9e9*10,9e9*10) f.MaxTorque=Vector3.new(9e9*10,0,0) return f end  Pos(char['Right Leg'],reanim['Torso']) fliiiin=flinger(char['Right Leg'])  char['Pal Hair'].Handle:BreakJoints() char['Pal Hair'].Handle.Mesh:Destroy()  create(char['Pal Hair'].Handle,reanim['Right Leg'],Vector3.new(),Vector3.new(90,0,0))  reanim.Animate.Disabled=true  reanim.Parent=fl  sh=false  fp=Instance.new('Part',reanim) fp.Name='FlingPart' fp.CanCollide=false fp.Transparency=1 if clickfling then te(ct,m.Button1Down:Connect(function() sh=true end))  te(ct,m.Button1Up:Connect(function() sh=false end)) end te(ct,srv.Heartbeat:Connect(function() m.TargetFilter=char if sh then fp.CFrame=CFrame.new(m.Hit.p) char['Right Leg'].Position=fp.Position else fp.CFrame=char.Torso.CFrame*CFrame.new(0,0,0) char['Right Leg'].Position=fp.Position end end))  plr.Character=reanim workspace.Camera.CameraSubject=reanim  HumanDied=false  te(ct,reanim.Humanoid.Died:Connect(function() HumanDied=true fliiiin:Destroy() reanim.HumanoidRootPart.Anchored=true old=reanim.HumanoidRootPart.CFrame reanim.HumanoidRootPart.CFrame=old wait() reanim.HumanoidRootPart.CFrame=old char.Humanoid:Destroy() Instance.new('Humanoid',char) plr.Character=char char:BreakJoints() game.Players:Chat('-gr') for i,v in next, ct do v:Disconnect() end end))

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

-- for modes u can go in this link : https://Nexo.notxeneon15.repl.co/nexo/modes.lua

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if reanim.Humanoid.Jump then -- jump
    NECK.C0=NECK.C0:Lerp(CFrame.new(6.3+0*math.cos(sine/10),6.3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-24.98+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+-3*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-2.06+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
    NECK.C0=NECK.C0:Lerp(CFrame.new(6.3+0*math.cos(sine/10),6.3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-24.98+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+-3*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-2.06+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
    NECK.C0=NECK.C0:Lerp(CFrame.new(6.3+0*math.cos(sine/10),6.3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-24.98+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(43.79+-3*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(43.79+-3*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
    NECK.C0=NECK.C0:Lerp(CFrame.new(6.3+0*math.cos(sine/10),6.3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-6.06+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-24.98+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+-3*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-2.06+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
    NECK.C0=NECK.C0:Lerp(CFrame.new(6.3+0*math.cos(sine/10),6.3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-6.06+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-24.98+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(150.78+-3*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-2.06+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator V4
end)

MainSection:NewButton("Fe Fly man", "Need pal hair", function()
    clickfling = true -- set this to false if u dont want click fling or use torso fling

function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {} local te = table.insert local m = plr:GetMouse()  if char:FindFirstChild('Pal Hair') then else return end  _G.Jitter=Vector3.new(0,30,0)  for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~= 'HumanoidRootPart' then  bf=Instance.new('BodyForce',v) bf.Force=Vector3.new(50,50,50) te(ct,game:GetService("RunService").Heartbeat:connect(function() pcall(function() v.Velocity = _G.Jitter v.BodyForce.Force=Vector3.new(50,50,50) game.Players.LocalPlayer.ReplicationFocus=workspace sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",9e9) end) end)) end end  char.Archivable = true fl=Instance.new('Folder',char) fl.Name = 'ArmFling' local reanim = char:Clone() char.Humanoid:ChangeState(16) char.HumanoidRootPart:Destroy()  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  hats=0 function create(part, parent, p, r) hats=hats+1 Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name..hats parent.Attachment.Name = part.Name..hats part.AlignPosition.Attachment0 = part[part.Name..hats] part.AlignOrientation.Attachment0 = part[part.Name..hats] part.AlignPosition.Attachment1 = parent[part.Name..hats] part.AlignOrientation.Attachment1 = parent[part.Name..hats] parent[part.Name..hats].Position = p or Vector3.new() part[part.Name..hats].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  function Pos(part, parent, p) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part.AlignPosition.MaxForce = 999999999*10 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false end  function nc(p) if p:IsA('BasePart') or p:IsA('Part') then te(ct,srv.Stepped:Connect(function() p.CanCollide=false end)) te(ct,srv.RenderStepped:Connect(function() p.CanCollide=false end)) else print('Cannot noclip '..p) end end  function af() for i,v in next, game.Players:GetDescendants() do if v:IsA('Player') and v.Name ~= game.Players.LocalPlayer.Name then for _,c in next, v.Character:GetDescendants() do if c:IsA('BasePart') and v.Parent== char then noo=Instance.new('NoCollisionConstraint',c) noo.Part1=char['Torso'] noo.Part0=c noo2=Instance.new('NoCollisionConstraint',c) noo2.Part1=char['Head'] noo2.Part0=c end end end end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') and v.Name ~= 'Pal Hair' then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Motor6D') and v.Name ~= 'Neck' then v:Destroy() end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') and v.Name ~= 'Right Leg' and v.Name ~= 'Head' and v.Parent == char then create(v,reanim[v.Name]) end end  function flinger(p) f=Instance.new('BodyAngularVelocity',p) f.P=9e9*10 f.AngularVelocity = Vector3.new(9e9*10,9e9*10,9e9*10) f.MaxTorque=Vector3.new(9e9*10,0,0) return f end  Pos(char['Right Leg'],reanim['Torso']) fliiiin=flinger(char['Right Leg'])  char['Pal Hair'].Handle:BreakJoints() char['Pal Hair'].Handle.Mesh:Destroy()  create(char['Pal Hair'].Handle,reanim['Right Leg'],Vector3.new(),Vector3.new(90,0,0))  reanim.Animate.Disabled=true  reanim.Parent=fl  sh=false  fp=Instance.new('Part',reanim) fp.Name='FlingPart' fp.CanCollide=false fp.Transparency=1 if clickfling then te(ct,m.Button1Down:Connect(function() sh=true end))  te(ct,m.Button1Up:Connect(function() sh=false end)) end te(ct,srv.Heartbeat:Connect(function() m.TargetFilter=char if sh then fp.CFrame=CFrame.new(m.Hit.p) char['Right Leg'].Position=fp.Position else fp.CFrame=char.Torso.CFrame*CFrame.new(0,0,0) char['Right Leg'].Position=fp.Position end end))  plr.Character=reanim workspace.Camera.CameraSubject=reanim  HumanDied=false  te(ct,reanim.Humanoid.Died:Connect(function() HumanDied=true fliiiin:Destroy() reanim.HumanoidRootPart.Anchored=true old=reanim.HumanoidRootPart.CFrame reanim.HumanoidRootPart.CFrame=old wait() reanim.HumanoidRootPart.CFrame=old char.Humanoid:Destroy() Instance.new('Humanoid',char) plr.Character=char char:BreakJoints() game.Players:Chat('-gr') for i,v in next, ct do v:Disconnect() end end))

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

-- for modes u can go in this link : https://Nexo.notxeneon15.repl.co/nexo/modes.lua

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if reanim.Humanoid.Jump then -- jump
    NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(43.79+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+-0.2*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(97.29+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.28+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.28+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.27+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.27+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
    NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(43.79+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+-0.2*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(97.29+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.28+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.28+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.27+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.27+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
    NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+-0.2*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-47.91+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
    NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-7.67+-0.2*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-47.91+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(36.15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
    NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(43.79+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+-0.2*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-47.91+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.28+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.28+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.27+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.27+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator V4
end)

MainSection:NewButton("Fe Dark creature", "Need pal hair", function()
    clickfling = true -- set this to false if u dont want click fling or use torso fling

function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {} local te = table.insert local m = plr:GetMouse()  if char:FindFirstChild('Pal Hair') then else return end  _G.Jitter=Vector3.new(0,30,0)  for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~= 'HumanoidRootPart' then  bf=Instance.new('BodyForce',v) bf.Force=Vector3.new(50,50,50) te(ct,game:GetService("RunService").Heartbeat:connect(function() pcall(function() v.Velocity = _G.Jitter v.BodyForce.Force=Vector3.new(50,50,50) game.Players.LocalPlayer.ReplicationFocus=workspace sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",9e9) end) end)) end end  char.Archivable = true fl=Instance.new('Folder',char) fl.Name = 'ArmFling' local reanim = char:Clone() char.Humanoid:ChangeState(16) char.HumanoidRootPart:Destroy()  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  hats=0 function create(part, parent, p, r) hats=hats+1 Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name..hats parent.Attachment.Name = part.Name..hats part.AlignPosition.Attachment0 = part[part.Name..hats] part.AlignOrientation.Attachment0 = part[part.Name..hats] part.AlignPosition.Attachment1 = parent[part.Name..hats] part.AlignOrientation.Attachment1 = parent[part.Name..hats] parent[part.Name..hats].Position = p or Vector3.new() part[part.Name..hats].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  function Pos(part, parent, p) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part.AlignPosition.MaxForce = 999999999*10 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false end  function nc(p) if p:IsA('BasePart') or p:IsA('Part') then te(ct,srv.Stepped:Connect(function() p.CanCollide=false end)) te(ct,srv.RenderStepped:Connect(function() p.CanCollide=false end)) else print('Cannot noclip '..p) end end  function af() for i,v in next, game.Players:GetDescendants() do if v:IsA('Player') and v.Name ~= game.Players.LocalPlayer.Name then for _,c in next, v.Character:GetDescendants() do if c:IsA('BasePart') and v.Parent== char then noo=Instance.new('NoCollisionConstraint',c) noo.Part1=char['Torso'] noo.Part0=c noo2=Instance.new('NoCollisionConstraint',c) noo2.Part1=char['Head'] noo2.Part0=c end end end end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') and v.Name ~= 'Pal Hair' then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then nc(v) end end  for i,v in next, char:GetDescendants() do if v:IsA('Motor6D') and v.Name ~= 'Neck' then v:Destroy() end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') and v.Name ~= 'Right Leg' and v.Name ~= 'Head' and v.Parent == char then create(v,reanim[v.Name]) end end  function flinger(p) f=Instance.new('BodyAngularVelocity',p) f.P=9e9*10 f.AngularVelocity = Vector3.new(9e9*10,9e9*10,9e9*10) f.MaxTorque=Vector3.new(9e9*10,0,0) return f end  Pos(char['Right Leg'],reanim['Torso']) fliiiin=flinger(char['Right Leg'])  char['Pal Hair'].Handle:BreakJoints() char['Pal Hair'].Handle.Mesh:Destroy()  create(char['Pal Hair'].Handle,reanim['Right Leg'],Vector3.new(),Vector3.new(90,0,0))  reanim.Animate.Disabled=true  reanim.Parent=fl  sh=false  fp=Instance.new('Part',reanim) fp.Name='FlingPart' fp.CanCollide=false fp.Transparency=1 if clickfling then te(ct,m.Button1Down:Connect(function() sh=true end))  te(ct,m.Button1Up:Connect(function() sh=false end)) end te(ct,srv.Heartbeat:Connect(function() m.TargetFilter=char if sh then fp.CFrame=CFrame.new(m.Hit.p) char['Right Leg'].Position=fp.Position else fp.CFrame=char.Torso.CFrame*CFrame.new(0,0,0) char['Right Leg'].Position=fp.Position end end))  plr.Character=reanim workspace.Camera.CameraSubject=reanim  HumanDied=false  te(ct,reanim.Humanoid.Died:Connect(function() HumanDied=true fliiiin:Destroy() reanim.HumanoidRootPart.Anchored=true old=reanim.HumanoidRootPart.CFrame reanim.HumanoidRootPart.CFrame=old wait() reanim.HumanoidRootPart.CFrame=old char.Humanoid:Destroy() Instance.new('Humanoid',char) plr.Character=char char:BreakJoints() game.Players:Chat('-gr') for i,v in next, ct do v:Disconnect() end end))

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 0.8
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

-- for modes u can go in this link : https://Nexo.notxeneon15.repl.co/nexo/modes.lua

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if reanim.Humanoid.Jump then -- jump
    NECK.C0=NECK.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),1+0.39*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-9.7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-0.68+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(112.57+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(-28.51+0*math.cos(sine/10)),math.rad(9.7+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+13.23*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+-24.98*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
    NECK.C0=NECK.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),1+0.39*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-9.7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-0.68+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(112.57+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(-28.51+0*math.cos(sine/10)),math.rad(9.7+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+13.23*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+-24.98*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
    NECK.C0=NECK.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),1+0.39*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-9.7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(28.51+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(28.51+0*math.cos(sine/10)),math.rad(-28.51+0*math.cos(sine/10)),math.rad(9.7+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
    NECK.C0=NECK.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),1+0.39*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-9.7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(112.57+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(-28.51+0*math.cos(sine/10)),math.rad(9.7+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+13.23*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+-24.98*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
    NECK.C0=NECK.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),1+0.39*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2.54+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-9.7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    RS.C0=RS.C0:Lerp(CFrame.new(3.62+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(112.57+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LS.C0=LS.C0:Lerp(CFrame.new(-3.91+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(-28.51+0*math.cos(sine/10)),math.rad(9.7+0*math.cos(sine/10))),.2) 
    RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-4.6+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+13.23*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
    LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-4.6+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+-24.98*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator V4
end)

MainSection:NewButton("Hat pet", "Working on all hats and r6,r15 games", function()

loadstring("\10\45\45\45\32\121\111\117\32\115\116\117\112\105\100\10\10\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\83\116\97\114\116\101\114\71\117\105\34\41\58\83\101\116\67\111\114\101\40\34\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110\34\44\123\10\32\32\32\32\84\105\116\108\101\32\61\32\34\73\109\32\80\97\116\114\105\99\107\34\59\10\32\32\32\32\84\101\120\116\32\61\32\34\78\101\116\108\101\115\115\32\108\111\97\100\101\100\34\59\10\32\32\32\32\68\117\114\97\116\105\111\110\32\61\32\49\48\59\10\125\41\10\10\102\111\114\32\105\44\118\32\105\110\32\110\101\120\116\44\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\32\100\111\10\32\32\32\32\105\102\32\118\58\73\115\65\40\34\66\97\115\101\80\97\114\116\34\41\32\97\110\100\32\118\46\78\97\109\101\32\126\61\34\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\34\32\116\104\101\110\32\10\32\32\32\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\41\10\32\32\32\32\118\46\86\101\108\111\99\105\116\121\32\61\32\86\101\99\116\111\114\51\46\110\101\119\40\45\51\48\44\48\44\48\41\10\32\32\32\32\101\110\100\41\10\32\32\32\32\101\110\100\10\32\32\32\32\101\110\100\10\10\32\32\32\32\108\111\99\97\108\32\112\108\114\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\10\32\32\32\32\108\111\99\97\108\32\99\104\97\114\32\61\32\112\108\114\46\67\104\97\114\97\99\116\101\114\10\10\108\111\99\97\108\32\108\112\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\10\10\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\99\104\97\114\58\71\101\116\67\104\105\108\100\114\101\110\40\41\41\32\100\111\10\32\32\32\32\105\102\32\118\58\73\115\65\40\34\66\97\108\108\83\111\99\107\101\116\67\111\110\115\116\114\97\105\110\116\34\41\32\116\104\101\110\10\32\32\32\32\32\32\32\32\118\58\68\101\115\116\114\111\121\40\41\10\32\32\32\32\101\110\100\10\101\110\100\10\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\99\104\97\114\58\71\101\116\67\104\105\108\100\114\101\110\40\41\41\32\100\111\10\32\32\32\32\105\102\32\118\58\73\115\65\40\34\72\105\110\103\101\67\111\110\115\116\114\97\105\110\116\34\41\32\116\104\101\110\10\32\32\32\32\32\32\32\32\118\58\68\101\115\116\114\111\121\40\41\10\32\32\32\32\101\110\100\10\101\110\100\10\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\99\104\97\114\46\72\117\109\97\110\111\105\100\58\71\101\116\65\99\99\101\115\115\111\114\105\101\115\40\41\41\32\100\111\10\108\111\99\97\108\32\104\97\116\32\61\32\118\46\78\97\109\101\10\10\99\104\97\114\91\104\97\116\93\46\65\114\99\104\105\118\97\98\108\101\32\61\32\116\114\117\101\10\108\111\99\97\108\32\102\97\107\101\32\61\32\99\104\97\114\91\104\97\116\93\58\67\108\111\110\101\40\41\10\102\97\107\101\46\80\97\114\101\110\116\32\61\32\99\104\97\114\10\102\97\107\101\46\72\97\110\100\108\101\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\10\10\10\10\10\32\32\32\32\108\111\99\97\108\32\99\97\114\32\61\32\99\104\97\114\91\104\97\116\93\10\10\10\10\32\32\32\32\108\111\99\97\108\32\97\116\116\49\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\65\116\116\97\99\104\109\101\110\116\34\44\99\97\114\46\72\97\110\100\108\101\41\10\10\32\32\32\32\108\111\99\97\108\32\97\112\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\65\108\105\103\110\80\111\115\105\116\105\111\110\34\44\99\97\114\46\72\97\110\100\108\101\41\10\32\32\32\32\97\112\46\65\116\116\97\99\104\109\101\110\116\48\32\61\32\97\116\116\49\10\32\32\32\32\97\112\46\65\116\116\97\99\104\109\101\110\116\49\32\61\32\97\116\116\49\10\32\32\32\32\97\112\46\82\105\103\105\100\105\116\121\69\110\97\98\108\101\100\32\61\32\116\114\117\101\32\10\10\10\32\32\32\32\108\111\99\97\108\32\97\111\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\65\108\105\103\110\79\114\105\101\110\116\97\116\105\111\110\34\44\99\97\114\46\72\97\110\100\108\101\41\32\10\32\32\32\32\97\111\46\65\116\116\97\99\104\109\101\110\116\48\32\61\32\97\116\116\49\10\32\32\32\32\97\111\46\65\116\116\97\99\104\109\101\110\116\49\32\61\32\97\116\116\49\10\32\32\32\32\97\111\46\82\105\103\105\100\105\116\121\69\110\97\98\108\101\100\32\61\32\116\114\117\101\10\32\32\32\32\10\32\32\32\32\99\97\114\46\72\97\110\100\108\101\46\65\99\99\101\115\115\111\114\121\87\101\108\100\58\68\101\115\116\114\111\121\40\41\10\10\32\32\32\32\32\32\32\32\108\111\99\97\108\32\66\80\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\66\111\100\121\80\111\115\105\116\105\111\110\34\44\32\99\97\114\46\72\97\110\100\108\101\41\10\32\32\32\32\32\32\32\32\108\111\99\97\108\32\66\71\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\66\111\100\121\71\121\114\111\34\44\32\99\97\114\46\72\97\110\100\108\101\41\10\32\32\32\32\32\32\32\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\83\116\101\112\112\101\100\58\67\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\41\10\32\32\32\32\32\32\32\32\32\32\66\80\46\77\97\120\70\111\114\99\101\32\61\32\86\101\99\116\111\114\51\46\110\101\119\40\109\97\116\104\46\104\117\103\101\44\32\109\97\116\104\46\104\117\103\101\44\32\109\97\116\104\46\104\117\103\101\41\10\32\32\32\32\32\32\32\32\32\32\66\80\46\80\111\115\105\116\105\111\110\32\61\32\99\104\97\114\91\34\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\34\93\46\80\111\115\105\116\105\111\110\32\43\32\86\101\99\116\111\114\51\46\110\101\119\40\53\44\32\49\46\56\44\32\51\41\10\32\32\32\32\32\32\32\32\32\32\66\71\46\77\97\120\84\111\114\113\117\101\32\61\32\86\101\99\116\111\114\51\46\110\101\119\40\109\97\116\104\46\104\117\103\101\44\32\109\97\116\104\46\104\117\103\101\44\32\109\97\116\104\46\104\117\103\101\41\10\32\32\32\32\32\32\32\32\32\32\66\71\46\67\70\114\97\109\101\32\61\32\99\104\97\114\91\34\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\34\93\46\67\70\114\97\109\101\10\32\32\32\32\32\32\32\32\101\110\100\41\10\101\110\100\10")()
end)

MainSection:NewButton("Fe Crazy fling all", "Fling all", function()
--FE FLING ALL
local torso = game.Players.LocalPlayer.Character.Torso



--true or false for torso in place
torso.Anchored = "true"

wait(0.4)
function rmesh(HatName)
for _,mesh in next, workspace[game.Players.LocalPlayer.Name][HatName]:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

function create(part, parent, position, rotation)
part.AccessoryWeld:Remove()
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("AlignOrientation",part)
Instance.new("Attachment",parent)
part.AlignPosition.Attachment0 = part.Attachment
part.AlignOrientation.Attachment0 = part.Attachment
part.AlignPosition.Attachment1 = parent.Attachment
part.AlignOrientation.Attachment1 = parent.Attachment
part.Attachment.Position = position
part.Attachment.Orientation = rotation
part.AlignPosition.Responsiveness = 200
part.AlignOrientation.Responsiveness = 200
part.AlignPosition.MaxForce = 9999999
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 9999999
end

local LocalPlayer = game.Players.LocalPlayer

function eswait(num)
if num == 0 or num == nil then
game:service("RunService").Stepped:wait(0)
else
for i = 0, num do
game:service("RunService").Stepped:wait(0)
end
end
end

function makepart(hat,part)
Instance.new('Part',workspace[LocalPlayer.Name])
workspace[LocalPlayer.Name].Part.Name = 'lerp'..hat
workspace[LocalPlayer.Name]['lerp'..hat].CanCollide = false
workspace[LocalPlayer.Name]['lerp'..hat].Size = workspace[LocalPlayer.Name][hat].Handle.Size
workspace[LocalPlayer.Name]['lerp'..hat].Transparency = 1
Instance.new('Weld',workspace[LocalPlayer.Name]['lerp'..hat])
create(workspace[LocalPlayer.Name][hat].Handle,workspace[LocalPlayer.Name]['lerp'..hat],Vector3.new(),Vector3.new())
workspace[LocalPlayer.Name]['lerp'..hat].Weld.Part0 = workspace[LocalPlayer.Name]['lerp'..hat]
workspace[LocalPlayer.Name]['lerp'..hat].Weld.Part1 = workspace[LocalPlayer.Name][part]
workspace[LocalPlayer.Name]['lerp'..hat].Weld.C0 = workspace[LocalPlayer.Name]['lerp'..hat].CFrame:inverse() * workspace[LocalPlayer.Name][part].CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),0)
end

local hatsine = 0

local hatchange = 1

function clerp(hat,ppx,ppy,pppz,rrrx,rrry,rrz,lppx,lppy,lpppz,lrrrx,lrrry,lrrz,speed)
coroutine.wrap(function()
while true do
hatsine = hatsine + speed
workspace[game.Players.LocalPlayer.Name]['lerp'..hat].Weld.C0 = workspace[game.Players.LocalPlayer.Name]['lerp'..hat].Weld.C0:lerp(CFrame.new(ppx + lppx * math.sin(hatsine/11), ppy + lppy * math.sin(hatsine/11), pppz + lpppz * math.sin(hatsine/11)) * CFrame.Angles(math.rad(rrrx + lrrrx * math.sin(hatsine/11)), math.rad(rrry + lrrry * math.sin(hatsine/11)), math.rad(rrz + lrrz * math.sin(hatsine/11))),0.1)
eswait()
end
end)()
end

local player = game.Players.LocalPlayer
local character1 = player.Character
local mouse = player:GetMouse()

local fakebody = Instance.new("Part", character1)
fakebody.Transparency = 1
fakebody.Anchored = true
fakebody.CanCollide = false
fakebody.Position = character1.Head.Position
fakebody.Name = "FPart"
wait()
_G.ReanimationType = "PDeath" --PDeath, Fling, Simple
_G.Velocity = Vector3.new(36,0,0)
_G.FlingBlock = true
_G.FlingBlockTransparency = 1
_G.HighlightFlingBlock = true
_G.FlingBlockPosition = "FPart"
_G.HighlightFlingBlockColor = Color3.fromRGB(255,0,0)

loadstring(game:HttpGet("https://raw.githubusercontent.com/GelatekWasTaken/Reanimation.lua/main/Main/Main.lua"))()
wait(1)
wait(0.9)
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,-30,0)
------------------------------

local Players = game.Players:GetPlayers()
local nplrs = #Players
local Randomplayer = nil
local torso = game.Players.LocalPlayer.Character.Torso
--local camera = workspace.CurrentCamera
--local HumPart = game.Players.LocalPlayer.Character.HumanoidRootPart
--local leftleg = game.Players.LocalPlayer.Character.["Left Leg"]
--local rightleg = game.Players.LocalPlayer.Character.["Right Leg"]
--local leftarm = game.Players.LocalPlayer.Character.["Left Arm"]
--local rightarm = game.Players.LocalPlayer.Character.["Right Arm"]
if nplrs > 0 then
     Randomplayer = Players[math.random(1, nplrs)]
end
--print(Randomplayer)
	v.Position = Randomplayer.Character.Torso.Position
	--local hum1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	--local CameraMove = camera.CFrame:Lerp(hum1, 1)
   torso.Anchored = "true"
   -- leftleg.Anchored = "true"
    --rightleg.Anchored = "true"
   -- leftarm.Anchored = "true"
    --rightarm.Anchored = "true"
    
v.Velocity = Vector3.new(0,-30,0)
------------------------------------
wait(0.5)
end)
end
end
end)

MainSection:NewButton("Fe PipBoy Power Armor", "PipBoy Power Armor", function()
        --da pip boye 															
--commission for waffl7
--made by helkern
--Convert to FE by Melon
--Credit Melon and Helkern if Showcased
--not by Orplayz, orplayz is a skid!!!
--Nil is pog ngl

loadstring(game:HttpGet("https://raw.githubusercontent.com/BonzaiBazooka/FEScripts/main/message-9.txt"))()
    end)

    MainSection:NewButton("Fe AMOGUS", "THIS IS SUS!This script dont have fling.", function()
        local netboost = 1000 --velocity 
--netboost usage: 
--set to false to disable
--set to a vector3 value if you dont want the velocity to change
--set to a number to change the velocity in real time with magnitude equal to the number
local idleMag = 0.005 --used only in case netboost is set to a number value
--if magnitude of the real velocity of a part is lower than this
--then the fake velocity is being set to Vector3.new(0, netboost, 0)
--the lower value the less you jitter but you might loose network ownership
local simradius = "shp" --simulation radius (net bypass) method
--"shp" - sethiddenproperty
--"ssr" - setsimulationradius
--false - disable
local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
local newanimate = false --disables the animate script and enables after reanimation
local discharscripts = true --disables all localScripts parented to your character before reanimation
local R15toR6 = true --tries to convert your character to r6 if its r15
local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
local method = 3 --reanimation method
--methods:
--0 - breakJoints (takes [loadtime] seconds to laod)
--1 - limbs
--2 - limbs + anti respawn
--3 - limbs + breakJoints after [loadtime] seconds
--4 - remove humanoid + breakJoints
--5 - remove humanoid + limbs
local alignmode = 2 --AlignPosition mode
--modes:
--1 - AlignPosition rigidity enabled true
--2 - 2 AlignPositions rigidity enabled both true and false
--3 - AlignPosition rigidity enabled false
local hedafterneck = true --disable aligns for head and enable after neck is removed

local lp = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")
local stepped = rs.Stepped
local heartbeat = rs.Heartbeat
local renderstepped = rs.RenderStepped
local sg = game:GetService("StarterGui")
local ws = game:GetService("Workspace")
local cf = CFrame.new
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local inf = math.huge

local c = lp.Character

if not (c and c.Parent) then
    return
end

for i, v in pairs(c:GetDescendants()) do
    if v:IsA("CharacterMesh") or v:IsA("SpecialMesh") then
        v:Destroy()
    end
end

c:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (c and c.Parent) then
        c = nil
    end
end)

local function gp(parent, name, className)
	local ret = nil
	pcall(function()
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				ret = v
				break
			end
		end
	end)
	return ret
end

local function align(Part0, Part1)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)

	local att0 = Instance.new("Attachment", Part0)
	att0.Orientation = v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	local att1 = Instance.new("Attachment", Part1)
	att1.Orientation = v3_0
	att1.Position = v3_0
	att1.Name = "att1_" .. Part1.Name

	if (alignmode == 1) or (alignmode == 2) then
    	local ape = Instance.new("AlignPosition", att0)
    	ape.ApplyAtCenterOfMass = false
    	ape.MaxForce = inf
    	ape.MaxVelocity = inf
    	ape.ReactionForceEnabled = false
    	ape.Responsiveness = 200
    	ape.Attachment1 = att1
    	ape.Attachment0 = att0
    	ape.Name = "AlignPositionRtrue"
    	ape.RigidityEnabled = true
	end

	if (alignmode == 2) or (alignmode == 3) then
    	local apd = Instance.new("AlignPosition", att0)
    	apd.ApplyAtCenterOfMass = false
    	apd.MaxForce = inf
    	apd.MaxVelocity = inf
    	apd.ReactionForceEnabled = false
    	apd.Responsiveness = 200
    	apd.Attachment1 = att1
    	apd.Attachment0 = att0
    	apd.Name = "AlignPositionRfalse"
    	apd.RigidityEnabled = false
    end

	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = inf
	ao.MaxTorque = inf
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false

    if netboost then
        Part0:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (Part0 and Part0.Parent) then
                Part0 = nil
            end
        end)
        spawn(function()
            if typeof(netboost) == "Vector3" then
    	        local vel = v3_0
    	        local rotvel = v3_0
            	while Part0 do
                    Part0.Velocity = vel
                    Part0.RotVelocity = rotvel
                    heartbeat:Wait()
                    if Part0 then
                        vel = Part0.Velocity
                        Part0.Velocity = netboost
                        Part0.RotVelocity = v3_0
                        stepped:Wait()
                    end
                end
        	elseif typeof(netboost) == "number" then
    	        local vel = v3_0
    	        local rotvel = v3_0
            	while Part0 do
                    Part0.Velocity = vel
                    Part0.RotVelocity = rotvel
                    heartbeat:Wait()
                    if Part0 then
                        local newvel = vel
                        local mag = newvel.Magnitude
                        if mag < idleMag then
                            newvel = v3(0, netboost, 0)
                        else
                            local multiplier = netboost / mag
                            newvel *= v3(multiplier,  multiplier, multiplier)
                        end
                        vel = Part0.Velocity
                        rotvel = Part0.RotVelocity
                        Part0.Velocity = newvel
                        Part0.RotVelocity = v3_0
                        stepped:Wait()
                    end
                end
        	end
        end)
    end
end

local function respawnrequest()
    local c = lp.Character
    local ccfr = ws.CurrentCamera.CFrame
	local fc = Instance.new("Model")
	local nh = Instance.new("Humanoid", fc)
	lp.Character = fc
	nh.Health = 0
	lp.Character = c
	fc:Destroy()
    local con = nil
    local function confunc()
        con:Disconnect()
        ws.CurrentCamera.CFrame = ccfr
    end
    con = renderstepped:Connect(confunc)
end

local destroyhum = (method == 4) or (method == 5)
local breakjoints = (method == 0) or (method == 4)
local antirespawn = (method == 0) or (method == 2) or (method == 3)

addtools = addtools and gp(lp, "Backpack", "Backpack")

if simradius == "shp" then
    local shp = sethiddenproperty or set_hidden_property or set_hidden_prop or sethiddenprop
    if shp then
        spawn(function()
            while c and heartbeat:Wait() do
                shp(lp, "SimulationRadius", inf)
            end
        end)
    end
elseif simradius == "ssr" then
    local ssr = setsimulationradius or set_simulation_radius or set_sim_radius or setsimradius or set_simulation_rad or setsimulationrad
    if ssr then
        spawn(function()
            while c and heartbeat:Wait() do
                ssr(inf)
            end
        end)
    end
end

antiragdoll = antiragdoll and function(v)
    if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
        v.Parent = nil
    end
end

if antiragdoll then
    for i, v in pairs(c:GetDescendants()) do
        antiragdoll(v)
    end
    c.DescendantAdded:Connect(antiragdoll)
end

if antirespawn then
    respawnrequest()
end

if method == 0 then
	wait(loadtime)
	if not c then
	    return
	end
end

if discharscripts then
    for i, v in pairs(c:GetChildren()) do
        if v:IsA("LocalScript") then
            v.Disabled = true
        end
    end
elseif newanimate then
    local animate = gp(c, "Animate", "LocalScript")
    if animate and (not animate.Disabled) then
        animate.Disabled = true
    else
        newanimate = false
    end
end

local hum = c:FindFirstChildOfClass("Humanoid")
if hum then
    for i, v in pairs(hum:GetPlayingAnimationTracks()) do
	    v:Stop()
    end
end

if addtools then
    for i, v in pairs(addtools:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = c
        end
    end
end

pcall(function()
    settings().Physics.AllowSleep = false
    settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)

local OLDscripts = {}

for i, v in pairs(c:GetDescendants()) do
	if v.ClassName == "Script" then
		table.insert(OLDscripts, v)
	end
end

local scriptNames = {}

for i, v in pairs(c:GetDescendants()) do
	if v:IsA("BasePart") then
	    local newName = tostring(i)
	    local exists = true
	    while exists do
		    exists = false
		    for i, v in pairs(OLDscripts) do
		        if v.Name == newName then
		            exists = true
		        end
		    end
		    if exists then
		        newName = newName .. "_"    
		    end
	    end
        table.insert(scriptNames, newName)
		Instance.new("Script", v).Name = newName
	end
end

c.Archivable = true
local cl = c:Clone()
for i, v in pairs(cl:GetDescendants()) do
    pcall(function()
        v.Transparency = 1
        v.Anchored = false
    end)
end

local model = Instance.new("Model", c)
model.Name = model.ClassName

model:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (model and model.Parent) then
        model = nil
    end
end)

for i, v in pairs(c:GetChildren()) do
	if v ~= model then
	    if destroyhum and v:IsA("Humanoid") then
	        v:Destroy()
	    else
	        if addtools and v:IsA("Tool") then
	            for i1, v1 in pairs(v:GetDescendants()) do
	                if v1 and v1.Parent and v1:IsA("BasePart") then
	                    local bv = Instance.new("BodyVelocity", v1)
	                    bv.Velocity = v3_0
	                    bv.MaxForce = v3(1000, 1000, 1000)
	                    bv.P = 1250
	                    bv.Name = "bv_" .. v.Name
	                end
	            end
	        end
		    v.Parent = model
	    end
	end
end
local head = gp(model, "Head", "BasePart")
local torso = gp(model, "Torso", "BasePart") or gp(model, "UpperTorso", "BasePart")
if breakjoints then
    model:BreakJoints()
else
    if head and torso then
        for i, v in pairs(model:GetDescendants()) do
            if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
                local save = false
                if (v.Part0 == torso) and (v.Part1 == head) then
                    save = true
                end
                if (v.Part0 == head) and (v.Part1 == torso) then
                    save = true
                end
                if save then
                    if hedafterneck then
                        hedafterneck = v
                    end
                else
                    v:Destroy()
                end
            end
        end
    end
    if method == 3 then
        spawn(function()
            wait(loadtime)
            if model then
                model:BreakJoints()
            end
        end)
    end
end

cl.Parent = c
for i, v in pairs(cl:GetChildren()) do
	v.Parent = c
end
cl:Destroy()

local modelDes = {}
for i, v in pairs(model:GetDescendants()) do
    if v:IsA("BasePart") then
        i = tostring(i)
        local con = nil
        con = v:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (v and v.Parent) then
                con:Disconnect()
                modelDes[i] = nil
            end
        end)
        modelDes[i] = v
    end
end
local modelcolcon = nil
local function modelcolf()
    if model then
        for i, v in pairs(modelDes) do
			v.CanCollide = false
		end
    else
        modelcolcon:Disconnect()
    end
end
modelcolcon = stepped:Connect(modelcolf)
modelcolf()

for i, scr in pairs(model:GetDescendants()) do
	if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
		local Part0 = scr.Parent
		if Part0:IsA("BasePart") then
			for i1, scr1 in pairs(c:GetDescendants()) do
				if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
					local Part1 = scr1.Parent
					if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
						align(Part0, Part1)
						break
					end
				end
			end
		end
	end
end

if (typeof(hedafterneck) == "Instance") and head and head.Parent then
    local aligns = {}
    for i, v in pairs(head:GetDescendants()) do
        if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
            table.insert(aligns, v)
            v.Enabled = false
        end
    end
    spawn(function()
        while c and hedafterneck and hedafterneck.Parent do
            stepped:Wait()
        end
        if not (c and head and head.Parent) then
            return
        end
        for i, v in pairs(aligns) do
            pcall(function()
                v.Enabled = true
            end)
        end
    end)
end

for i, v in pairs(c:GetDescendants()) do
	if v and v.Parent then
		if v.ClassName == "Script" then
			if table.find(scriptNames, v.Name) then
				v:Destroy()
			end
		elseif not v:IsDescendantOf(model) then
			if v:IsA("Decal") then
			    v.Transparency = 1
			elseif v:IsA("ForceField") then
			    v.Visible = false
			elseif v:IsA("Sound") then
			    v.Playing = false
			elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
				v.Enabled = false
			end
		end
	end
end

if newanimate then
    local animate = gp(c, "Animate", "LocalScript")
    if animate then
        animate.Disabled = false
    end
end

if addtools then
    for i, v in pairs(c:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = addtools
        end
    end
end

local hum0 = model:FindFirstChildOfClass("Humanoid")
local hum1 = c:FindFirstChildOfClass("Humanoid")
if hum1 then
    ws.CurrentCamera.CameraSubject = hum1
    local camSubCon = nil
    local function camSubFunc()
        camSubCon:Disconnect()
        if c and hum1 and (hum1.Parent == c) then
            ws.CurrentCamera.CameraSubject = hum1
        end
    end
    camSubCon = renderstepped:Connect(camSubFunc)
	if hum0 then
		hum0.Changed:Connect(function(prop)
			if (prop == "Jump") and hum1 and hum1.Parent then
				hum1.Jump = hum0.Jump
			end
		end)
	else
	    lp.Character = nil
	    lp.Character = c
	end
end

local rb = Instance.new("BindableEvent", c)
rb.Event:Connect(function()
	rb:Destroy()
	sg:SetCore("ResetButtonCallback", true)
	if destroyhum then
	    c:BreakJoints()
	    return
	end
	if antirespawn then
	    if hum0 and hum0.Parent and (hum0.Health > 0) then
	        model:BreakJoints()
	        hum0.Health = 0
	    end
		respawnrequest()
	else
	    if hum0 and hum0.Parent and (hum0.Health > 0) then
	        model:BreakJoints()
	        hum0.Health = 0
	    end
	end
end)
sg:SetCore("ResetButtonCallback", rb)

spawn(function()
	while c do
		if hum0 and hum0.Parent and hum1 and hum1.Parent then
            hum1.Jump = hum0.Jump
        end
		wait()
	end
	sg:SetCore("ResetButtonCallback", true)
end)

R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
if R15toR6 then
	local cfr = nil
	pcall(function()
		cfr = gp(c, "HumanoidRootPart", "BasePart").CFrame
	end)
	if cfr then
		local R6parts = { 
			head = {
				Name = "Head",
				Size = v3(2, 1, 1),
				R15 = {
					Head = 0
				}
			},
			torso = {
				Name = "Torso",
				Size = v3(2, 2, 1),
				R15 = {
					UpperTorso = 0.2,
					LowerTorso = -0.8
				}
			},
			root = {
				Name = "HumanoidRootPart",
				Size = v3(2, 2, 1),
				R15 = {
					HumanoidRootPart = 0
				}
			},
			leftArm = {
				Name = "Left Arm",
				Size = v3(1, 2, 1),
				R15 = {
					LeftHand = -0.85,
					LeftLowerArm = -0.2,
					LeftUpperArm = 0.4
				}
			},
			rightArm = {
				Name = "Right Arm",
				Size = v3(1, 2, 1),
				R15 = {
					RightHand = -0.85,
					RightLowerArm = -0.2,
					RightUpperArm = 0.4
				}
			},
			leftLeg = {
				Name = "Left Leg",
				Size = v3(1, 2, 1),
				R15 = {
					LeftFoot = -0.85,
					LeftLowerLeg = -0.15,
					LeftUpperLeg = 0.6
				}
			},
			rightLeg = {
				Name = "Right Leg",
				Size = v3(1, 2, 1),
				R15 = {
					RightFoot = -0.85,
					RightLowerLeg = -0.15,
					RightUpperLeg = 0.6
				}
			}
		}
		for i, v in pairs(c:GetChildren()) do
			if v:IsA("BasePart") then
				for i1, v1 in pairs(v:GetChildren()) do
					if v1:IsA("Motor6D") then
						v1.Part0 = nil
					end
				end
			end
		end
		for i, v in pairs(R6parts) do
			local part = Instance.new("Part")
			part.Name = v.Name
			part.Size = v.Size
			part.CFrame = cfr
			part.Anchored = false
			part.Transparency = 1
			part.CanCollide = false
			for i1, v1 in pairs(v.R15) do
				local R15part = gp(c, i1, "BasePart")
				local att = gp(R15part, "att1_" .. i1, "Attachment")
				if R15part then
					local weld = Instance.new("Weld", R15part)
					weld.Name = "Weld_" .. i1
					weld.Part0 = part
					weld.Part1 = R15part
					weld.C0 = cf(0, v1, 0)
					weld.C1 = cf(0, 0, 0)
					R15part.Massless = true
					R15part.Name = "R15_" .. i1
					R15part.Parent = part
				    if att then
				        att.Parent = part
				        att.Position = v3(0, v1, 0)
				    end
				end
			end
			part.Parent = c
			R6parts[i] = part
		end
		local R6joints = {
			neck = {
				Parent = R6parts.torso,
				Name = "Neck",
				Part0 = R6parts.torso,
				Part1 = R6parts.head,
				C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
				C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			},
			rootJoint = {
				Parent = R6parts.root,
				Name = "RootJoint" ,
				Part0 = R6parts.root,
				Part1 = R6parts.torso,
				C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
				C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			},
			rightShoulder = {
				Parent = R6parts.torso,
				Name = "Right Shoulder",
				Part0 = R6parts.torso,
				Part1 = R6parts.rightArm,
				C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
				C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			},
			leftShoulder = {
				Parent = R6parts.torso,
				Name = "Left Shoulder",
				Part0 = R6parts.torso,
				Part1 = R6parts.leftArm,
				C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			},
			rightHip = {
				Parent = R6parts.torso,
				Name = "Right Hip",
				Part0 = R6parts.torso,
				Part1 = R6parts.rightLeg,
				C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
				C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			},
			leftHip = {
				Parent = R6parts.torso,
				Name = "Left Hip" ,
				Part0 = R6parts.torso,
				Part1 = R6parts.leftLeg,
				C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			}
		}
		for i, v in pairs(R6joints) do
			local joint = Instance.new("Motor6D")
			for prop, val in pairs(v) do
				joint[prop] = val
			end
			R6joints[i] = joint
		end
		hum1.RigType = Enum.HumanoidRigType.R6
		hum1.HipHeight = 0
	end
end

wait()
if not c then
    return
end

local venttoggle = false
local vented = false
local mode2 = false
local attack = false
local modetoggle = false
local dead = false
local dtoggle = false
local sittoggle = false
local sit = false
local sine = 0
local mouse = lp:GetMouse()

local joints = {
    ["RootJoint"] = "",
    ["Neck"] = "",
    ["Right Hip"] = "",
    ["Left Hip"] = "",
    ["Left Shoulder"] = "",
    ["Right Shoulder"] = ""
}

for i, v in pairs(c:GetDescendants()) do
    if v:IsA("Motor6D") and (joints[v.Name] == "") and (not v:IsDescendantOf(model)) then
        joints[v.Name] = v
    end
end

for i, v in pairs(joints) do
    if v and (v ~= "") then
        v.C0 = cf(0, 0, 0)
        v.C1 = cf(0, 0, 0)
    else
        return
    end
end

local Root = gp(c, "HumanoidRootPart", "BasePart")
if not Root then
    return
end

local function replace(a)
    local b, c = a.Part0, a.Part1
    a.Part1, a.Part0 = b, c
end

replace(joints["Left Shoulder"])
replace(joints["Right Shoulder"])
replace(joints["Left Hip"])
replace(joints["Right Hip"])

for i, v in pairs(c:GetChildren()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end

joints.Neck.C0 = cf(0, 0.3, -0.5)

mouse.Button1Down:Connect(function()
    if not (kill or mode2 or dead) then
        attack = true
        vented = false
        hum1.WalkSpeed = 0
        wait(0.5)
        hum1.WalkSpeed = 16
        attack = false
    end
end)

mouse.KeyDown:Connect(function(key)
    if not c then 
        return 
    end
    key = key:lower()
    if k == "e" then
        if not venttoggle then
            modetoggle = false
            mode2 = false
            venttoggle = true
            vented = true
            hum1.WalkSpeed = 100
            position = "ventidle"
        elseif venttoggle then
            venttoggle = false
            vented = false
            hum1.WalkSpeed = 16
        end
    elseif key == "f" then
        if not modetoggle then
            venttoggle = false
            vented = false
            modetoggle = true
            mode2 = true
            sittoggle = false
            sit = false
            hum1.WalkSpeed = 60
        elseif modetoggle then
            modetoggle = false
            mode2 = false
            hum1.WalkSpeed = 16
        end
    elseif key == "q" then
        if dtoggle == false then
            venttoggle = false
            vented = false
            modetoggle = false
            mode2 = false
            dtoggle = true
            dead = true
            sittoggle = false
            sit = false
            hum1.WalkSpeed = 0
        elseif dtoggle == true then
            dtoggle = false
            dead = false
            hum1.WalkSpeed = 16
        end
    elseif key == "c" then
        if sittoggle == false then
            venttoggle = false
            vented = false
            modetoggle = false
            mode2 = false
            dtoggle = false
            dead = false
            sittoggle = true
            sit = true
            hum1.WalkSpeed = 0
        elseif sittoggle == true then
            sittoggle = false
            sit = false
            hum1.WalkSpeed = 16
        end
    end
end)

local pose = "idle"
while stepped:Wait() and c do
    if attack then
        pose = "attack"
    elseif dead then
        pose = "dead"
    elseif sit then
        pose = "sit"
    elseif mode2 then
        if Root.Velocity.Magnitude < 2 then
            pose = "idle2"
        elseif Root.Velocity.Magnitude > 20 then
            pose = "walk2"
        end
    else
        if Root.Velocity.y > 1 then
            pose = "jump"
        elseif Root.Velocity.y < -1 then
            pose = "fall"
        elseif Root.Velocity.Magnitude < 2 then
            pose = "idle"
        elseif Root.Velocity.Magnitude < 20 then
            pose = "walk"
        elseif Root.Velocity.Magnitude > 20 then
            pose = "run"
        end 
    end
    sine += 1
    if pose == "idle" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0.3 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(20 + 0 * math.sin(sine/12)), math.rad(-3 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(3 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "walk" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0.3 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 30 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + -0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + -30 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "jump" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(15 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "fall" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(15 + 10 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-10 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(10 + 5 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(10 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "vent" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + -8 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "ventidle" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), -20 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "idle2" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/20), 3 + 0.3 * math.sin(sine/20), 0 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + 20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(20 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/20), 2 + 0 * math.sin(sine/20), 0.5 + -0.5 * math.sin(sine/20)) * CFrame.Angles(math.rad(10 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
    elseif pose == "walk2" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/20), 3 + 0.3 * math.sin(sine/20), 0 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(-60 + 10 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/20), 2 + 0 * math.sin(sine/20), 0.3 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + -10 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(-5 + 0 * math.sin(sine/20))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20), 0.5 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(5 + 0 * math.sin(sine/20))),0.1)
    elseif pose == "attack" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "sit" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), -1.8 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(10 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), -1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/12)), math.rad(10 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), -1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/12)), math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "dead" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), -2.5 + 0 * math.sin(sine/5), -1 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 3 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 3 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12))),0.1)
    end
    joints["Right Shoulder"].C0 = joints["Right Shoulder"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), -0.8 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    joints["Left Shoulder"].C0 = joints["Left Shoulder"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), -0.8 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
end
    end)

    MainSection:NewButton("Fe Memeus", "Meme character.", function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/2MSTmKBa"))()
    end)

    MainSection:NewButton("Fe walk on walls", "You cant walk on  walls.", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end)
--Others
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("infinite yield", "infinite yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

OtherSection:NewButton("Domaix x", "Domain x hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
end)

OtherSection:NewSlider("Walk speed", "change your speed", 1000, 0, function(s) -- 1000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
--Credits
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Fe scripts by nhffaf")

CreditsSection:NewKeybind("F to hide and show menu.", "F to hide and show menu.", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
--Player
local Pl = Window:NewTab("Player")
local PlSection = Pl:NewSection("Functions")

PlSection:NewSlider("Walk speed", "change your speed", 1000, 0, function(s) -- 1000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlSection:NewButton("Anti fling", "Other exploiters cant fling you.", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/hKfDWcJw'))();
end)
