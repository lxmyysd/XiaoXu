-- Roblox Script UI
-- This script creates a modern GUI interface for Roblox scripts

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ScriptUI"
screenGui.Parent = playerGui
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = screenGui
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Active = true
mainFrame.Draggable = true

-- Add corner radius
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 12)
mainCorner.Parent = mainFrame

-- Add drop shadow effect
local shadow = Instance.new("Frame")
shadow.Name = "Shadow"
shadow.Parent = screenGui
shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
shadow.BackgroundTransparency = 0.7
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0.5, -198, 0.5, -148)
shadow.Size = UDim2.new(0, 404, 0, 304)
shadow.ZIndex = mainFrame.ZIndex - 1

local shadowCorner = Instance.new("UICorner")
shadowCorner.CornerRadius = UDim.new(0, 12)
shadowCorner.Parent = shadow

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Parent = mainFrame
titleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
titleBar.BorderSizePixel = 0
titleBar.Size = UDim2.new(1, 0, 0, 40)

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titleBar

-- Fix corner for title bar bottom
local titleFix = Instance.new("Frame")
titleFix.Parent = titleBar
titleFix.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
titleFix.BorderSizePixel = 0
titleFix.Position = UDim2.new(0, 0, 0.5, 0)
titleFix.Size = UDim2.new(1, 0, 0.5, 0)

-- Title Text
local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Parent = titleBar
titleText.BackgroundTransparency = 1
titleText.Position = UDim2.new(0, 15, 0, 0)
titleText.Size = UDim2.new(1, -60, 1, 0)
titleText.Font = Enum.Font.GothamBold
titleText.Text = "Script UI v1.0"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.TextSize = 16
titleText.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Parent = titleBar
closeButton.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(1, -35, 0.5, -10)
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Font = Enum.Font.GothamBold
closeButton.Text = "×"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 16

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 10)
closeCorner.Parent = closeButton

-- Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Parent = titleBar
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 195, 85)
minimizeButton.BorderSizePixel = 0
minimizeButton.Position = UDim2.new(1, -60, 0.5, -10)
minimizeButton.Size = UDim2.new(0, 20, 0, 20)
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.Text = "−"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.TextSize = 16

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(0, 10)
minimizeCorner.Parent = minimizeButton

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Name = "ContentFrame"
contentFrame.Parent = mainFrame
contentFrame.BackgroundTransparency = 1
contentFrame.Position = UDim2.new(0, 0, 0, 40)
contentFrame.Size = UDim2.new(1, 0, 1, -40)

-- Tab System
local tabFrame = Instance.new("Frame")
tabFrame.Name = "TabFrame"
tabFrame.Parent = contentFrame
tabFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
tabFrame.BorderSizePixel = 0
tabFrame.Size = UDim2.new(1, 0, 0, 35)

local tabCorner = Instance.new("UICorner")
tabCorner.CornerRadius = UDim.new(0, 8)
tabCorner.Parent = tabFrame

-- Tab Layout
local tabLayout = Instance.new("UIListLayout")
tabLayout.Parent = tabFrame
tabLayout.FillDirection = Enum.FillDirection.Horizontal
tabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
tabLayout.Padding = UDim.new(0, 2)

-- Tab Padding
local tabPadding = Instance.new("UIPadding")
tabPadding.Parent = tabFrame
tabPadding.PaddingLeft = UDim.new(0, 5)
tabPadding.PaddingTop = UDim.new(0, 5)

-- Function to create tabs
local function createTab(name, layoutOrder)
    local tab = Instance.new("TextButton")
    tab.Name = name .. "Tab"
    tab.Parent = tabFrame
    tab.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
    tab.BorderSizePixel = 0
    tab.Size = UDim2.new(0, 80, 1, -10)
    tab.Font = Enum.Font.Gotham
    tab.Text = name
    tab.TextColor3 = Color3.fromRGB(200, 200, 200)
    tab.TextSize = 12
    tab.LayoutOrder = layoutOrder
    
    local tabCorner = Instance.new("UICorner")
    tabCorner.CornerRadius = UDim.new(0, 6)
    tabCorner.Parent = tab
    
    return tab
end

-- Create tabs
local playerTab = createTab("Player", 1)
local worldTab = createTab("World", 2)
local visualTab = createTab("Visual", 3)

-- Content Area
local contentArea = Instance.new("ScrollingFrame")
contentArea.Name = "ContentArea"
contentArea.Parent = contentFrame
contentArea.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
contentArea.BorderSizePixel = 0
contentArea.Position = UDim2.new(0, 0, 0, 45)
contentArea.Size = UDim2.new(1, 0, 1, -45)
contentArea.ScrollBarThickness = 6
contentArea.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 120)

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0, 8)
contentCorner.Parent = contentArea

-- Content Layout
local contentLayout = Instance.new("UIListLayout")
contentLayout.Parent = contentArea
contentLayout.FillDirection = Enum.FillDirection.Vertical
contentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
contentLayout.Padding = UDim.new(0, 10)

local contentPadding = Instance.new("UIPadding")
contentPadding.Parent = contentArea
contentPadding.PaddingLeft = UDim.new(0, 15)
contentPadding.PaddingRight = UDim.new(0, 15)
contentPadding.PaddingTop = UDim.new(0, 15)
contentPadding.PaddingBottom = UDim.new(0, 15)

-- Function to create buttons
local function createButton(text, callback)
    local button = Instance.new("TextButton")
    button.Parent = contentArea
    button.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
    button.BorderSizePixel = 0
    button.Size = UDim2.new(1, 0, 0, 35)
    button.Font = Enum.Font.GothamMedium
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 14
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = button
    
    -- Hover effect
    button.MouseEnter:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(85, 145, 255)})
        tween:Play()
    end)
    
    button.MouseLeave:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(70, 130, 255)})
        tween:Play()
    end)
    
    if callback then
        button.MouseButton1Click:Connect(callback)
    end
    
    return button
end

-- Function to create toggles
local function createToggle(text, defaultState, callback)
    local toggleFrame = Instance.new("Frame")
    toggleFrame.Parent = contentArea
    toggleFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    toggleFrame.BorderSizePixel = 0
    toggleFrame.Size = UDim2.new(1, 0, 0, 40)
    
    local toggleCorner = Instance.new("UICorner")
    toggleCorner.CornerRadius = UDim.new(0, 8)
    toggleCorner.Parent = toggleFrame
    
    local toggleLabel = Instance.new("TextLabel")
    toggleLabel.Parent = toggleFrame
    toggleLabel.BackgroundTransparency = 1
    toggleLabel.Position = UDim2.new(0, 15, 0, 0)
    toggleLabel.Size = UDim2.new(1, -60, 1, 0)
    toggleLabel.Font = Enum.Font.Gotham
    toggleLabel.Text = text
    toggleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    toggleLabel.TextSize = 12
    toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local toggleButton = Instance.new("TextButton")
    toggleButton.Parent = toggleFrame
    toggleButton.BackgroundColor3 = defaultState and Color3.fromRGB(85, 255, 127) or Color3.fromRGB(255, 85, 85)
    toggleButton.BorderSizePixel = 0
    toggleButton.Position = UDim2.new(1, -35, 0.5, -10)
    toggleButton.Size = UDim2.new(0, 20, 0, 20)
    toggleButton.Text = ""
    
    local toggleButtonCorner = Instance.new("UICorner")
    toggleButtonCorner.CornerRadius = UDim.new(0, 10)
    toggleButtonCorner.Parent = toggleButton
    
    local isToggled = defaultState
    
    toggleButton.MouseButton1Click:Connect(function()
        isToggled = not isToggled
        local newColor = isToggled and Color3.fromRGB(85, 255, 127) or Color3.fromRGB(255, 85, 85)
        local tween = TweenService:Create(toggleButton, TweenInfo.new(0.2), {BackgroundColor3 = newColor})
        tween:Play()
        
        if callback then
            callback(isToggled)
        end
    end)
    
    return toggleFrame, isToggled
end

-- Function to create sliders
local function createSlider(text, minValue, maxValue, defaultValue, callback)
    local sliderFrame = Instance.new("Frame")
    sliderFrame.Parent = contentArea
    sliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    sliderFrame.BorderSizePixel = 0
    sliderFrame.Size = UDim2.new(1, 0, 0, 50)
    
    local sliderCorner = Instance.new("UICorner")
    sliderCorner.CornerRadius = UDim.new(0, 8)
    sliderCorner.Parent = sliderFrame
    
    local sliderLabel = Instance.new("TextLabel")
    sliderLabel.Parent = sliderFrame
    sliderLabel.BackgroundTransparency = 1
    sliderLabel.Position = UDim2.new(0, 15, 0, 5)
    sliderLabel.Size = UDim2.new(1, -30, 0, 20)
    sliderLabel.Font = Enum.Font.Gotham
    sliderLabel.Text = text .. ": " .. defaultValue
    sliderLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    sliderLabel.TextSize = 12
    sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local sliderTrack = Instance.new("Frame")
    sliderTrack.Parent = sliderFrame
    sliderTrack.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
    sliderTrack.BorderSizePixel = 0
    sliderTrack.Position = UDim2.new(0, 15, 0, 30)
    sliderTrack.Size = UDim2.new(1, -30, 0, 6)
    
    local trackCorner = Instance.new("UICorner")
    trackCorner.CornerRadius = UDim.new(0, 3)
    trackCorner.Parent = sliderTrack
    
    local sliderFill = Instance.new("Frame")
    sliderFill.Parent = sliderTrack
    sliderFill.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
    sliderFill.BorderSizePixel = 0
    sliderFill.Size = UDim2.new((defaultValue - minValue) / (maxValue - minValue), 0, 1, 0)
    
    local fillCorner = Instance.new("UICorner")
    fillCorner.CornerRadius = UDim.new(0, 3)
    fillCorner.Parent = sliderFill
    
    local sliderKnob = Instance.new("TextButton")
    sliderKnob.Parent = sliderTrack
    sliderKnob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sliderKnob.BorderSizePixel = 0
    sliderKnob.Position = UDim2.new((defaultValue - minValue) / (maxValue - minValue), -8, 0.5, -8)
    sliderKnob.Size = UDim2.new(0, 16, 0, 16)
    sliderKnob.Text = ""
    
    local knobCorner = Instance.new("UICorner")
    knobCorner.CornerRadius = UDim.new(0, 8)
    knobCorner.Parent = sliderKnob
    
    local currentValue = defaultValue
    local dragging = false
    
    sliderKnob.MouseButton1Down:Connect(function()
        dragging = true
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    RunService.Heartbeat:Connect(function()
        if dragging then
            local mouse = Players.LocalPlayer:GetMouse()
            local relativeX = math.clamp((mouse.X - sliderTrack.AbsolutePosition.X) / sliderTrack.AbsoluteSize.X, 0, 1)
            currentValue = math.floor(minValue + (maxValue - minValue) * relativeX)
            
            sliderKnob.Position = UDim2.new(relativeX, -8, 0.5, -8)
            sliderFill.Size = UDim2.new(relativeX, 0, 1, 0)
            sliderLabel.Text = text .. ": " .. currentValue
            
            if callback then
                callback(currentValue)
            end
        end
    end)
    
    return sliderFrame, currentValue
end

-- Add sample content
createButton("Infinite Jump", function()
    print("Infinite Jump activated!")
end)

createToggle("Fly Mode", false, function(state)
    print("Fly Mode:", state)
end)

createSlider("Walk Speed", 16, 100, 16, function(value)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = value
    end
end)

createSlider("Jump Power", 50, 200, 50, function(value)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.JumpPower = value
    end
end)

createButton("Teleport to Spawn", function()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 10, 0)
    end
end)

createToggle("Noclip", false, function(state)
    print("Noclip:", state)
    -- Noclip implementation would go here
end)

-- Update content size
local function updateContentSize()
    contentArea.CanvasSize = UDim2.new(0, 0, 0, contentLayout.AbsoluteContentSize.Y + 30)
end

contentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateContentSize)
updateContentSize()

-- Button functionality
closeButton.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(mainFrame, TweenInfo.new(0.3), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })
    local shadowTween = TweenService:Create(shadow, TweenInfo.new(0.3), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })
    tween:Play()
    shadowTween:Play()
    
    tween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)

local isMinimized = false
minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    
    local targetSize = isMinimized and UDim2.new(0, 400, 0, 40) or UDim2.new(0, 400, 0, 300)
    local targetShadowSize = isMinimized and UDim2.new(0, 404, 0, 44) or UDim2.new(0, 404, 0, 304)
    
    local tween = TweenService:Create(mainFrame, TweenInfo.new(0.3), {Size = targetSize})
    local shadowTween = TweenService:Create(shadow, TweenInfo.new(0.3), {Size = targetShadowSize})
    
    tween:Play()
    shadowTween:Play()
    
    contentFrame.Visible = not isMinimized
end)

-- Tab functionality
local currentTab = "Player"

local function switchTab(tabName)
    -- Reset all tab colors
    playerTab.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
    worldTab.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
    visualTab.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
    
    -- Highlight selected tab
    if tabName == "Player" then
        playerTab.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
    elseif tabName == "World" then
        worldTab.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
    elseif tabName == "Visual" then
        visualTab.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
    end
    
    currentTab = tabName
    print("Switched to", tabName, "tab")
end

playerTab.MouseButton1Click:Connect(function() switchTab("Player") end)
worldTab.MouseButton1Click:Connect(function() switchTab("World") end)
visualTab.MouseButton1Click:Connect(function() switchTab("Visual") end)

-- Initialize with Player tab selected
switchTab("Player")

print("Roblox Script UI loaded successfully!")
