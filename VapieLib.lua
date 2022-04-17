--[[

    Original [
        Title: Vape Ui Library
        Author: KinxHub Team
    ]

    Remake [
        Title: Vapie Ui Library
        Author: https://github.com/CantCode023
    ]

]]--

local lib = {RainbowColorValue = 0, HueSelectionPosition = 0}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local PresetColor = Color3.fromRGB(44, 120, 224)
local BackgroundPresetColor = Color3.fromRGB(34, 34, 34)
local PresetTextColor = Color3.fromRGB(255, 255, 255)
local Themes = {"Default", "Sakura", "Dark Sakura", "Honey", "Synapse X", "Custom"}
local currentTheme = "Default"
local themeColor = {
    ["Default"] = {
        ["PresetColor"] = Color3.fromRGB(44, 120, 224),
        ["BackgroundColor"] = Color3.fromRGB(30, 30, 30),
        ["BackgroundPreset"] = Color3.fromRGB(50, 50, 50),
        ["TextColor"] = Color3.fromRGB(255, 255, 255),
        ["TabColor"] = Color3.fromRGB(255,255,255),
        ["SecondaryColor"] = Color3.fromRGB(120,120,120),
        ["TextBoxColor"] = Color3.fromRGB(255,255,255)
    },
    ["Sakura"] = {
        ["PresetColor"] = Color3.fromRGB(255, 124, 231),
        ["BackgroundColor"] = Color3.fromRGB(239, 239, 239),
        ["BackgroundPreset"] = Color3.fromRGB(255, 150, 212),
        ["TextColor"] = Color3.fromRGB(255,255,255),
        ["TabColor"] = Color3.fromRGB(255, 124, 231),
        ["SecondaryColor"] = Color3.fromRGB(255, 255, 255),
        ["TextBoxColor"] = Color3.fromRGB(0,0,0)
    },
    ["Dark Sakura"] = {
        ["PresetColor"] = Color3.fromRGB(255, 124, 231),
        ["BackgroundColor"] = Color3.fromRGB(32, 32, 32),
        ["BackgroundPreset"] = Color3.fromRGB(204, 68, 169),
        ["TextColor"] = Color3.fromRGB(255, 255, 255),
        ["TabColor"] = Color3.fromRGB(255,255,255),
        ["SecondaryColor"] = Color3.fromRGB(255, 255, 255),
        ["TextBoxColor"] = Color3.fromRGB(0,0,0)
    },
    ["Honey"] = {
        ["PresetColor"] = Color3.fromRGB(255, 219, 143),
        ["BackgroundColor"] = Color3.fromRGB(63, 53, 35),
        ["BackgroundPreset"] = Color3.fromRGB(159, 121, 43),
        ["TextColor"] = Color3.fromRGB(255, 255, 255),
        ["TabColor"] = Color3.fromRGB(255,255,255),
        ["SecondaryColor"] = Color3.fromRGB(255,255,255),
        ["TextBoxColor"] = Color3.fromRGB(0,0,0)
    },
    ["Synapse X"] = {
        ["PresetColor"] = Color3.fromRGB(255, 154, 0),
        ["BackgroundColor"] = Color3.fromRGB(48, 48, 48),
        ["BackgroundPreset"] = Color3.fromRGB(68, 68, 68),
        ["TextColor"] = Color3.fromRGB(255,255, 255),
        ["TabColor"] = Color3.fromRGB(255,255,255),
        ["SecondaryColor"] = Color3.fromRGB(255, 255, 255),
        ["TextBoxColor"] = Color3.fromRGB(0,0,0)
    },
    ["Custom"] = {
        ["PresetColor"] = Color3.fromRGB(44, 120, 224),
        ["BackgroundColor"] = Color3.fromRGB(30, 30, 30),
        ["BackgroundPreset"] = Color3.fromRGB(50, 50, 50),
        ["TextColor"] = Color3.fromRGB(255, 255, 255),
        ["TabColor"] = Color3.fromRGB(255,255,255),
        ["SecondaryColor"] = Color3.fromRGB(50,50,50),
        ["TextBoxColor"] = Color3.fromRGB(255,255,255)
    }
}
local CloseBind = Enum.KeyCode.RightControl

local windows = 0

local imgui = Instance.new("ScreenGui")
local Prefabs = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Window = Instance.new("ImageLabel")
local Resizer = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Toggle = Instance.new("ImageButton")
local Base = Instance.new("ImageLabel")
local Top = Instance.new("ImageLabel")
local Tabs = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabSelection = Instance.new("ImageLabel")
local TabButtons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("Frame")
local Tab = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
local TextBox_Roundify_4px = Instance.new("ImageLabel")
local Slider = Instance.new("ImageLabel")
local Title_2 = Instance.new("TextLabel")
local Indicator = Instance.new("ImageLabel")
local Value = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Circle = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Dropdown = Instance.new("TextButton")
local Indicator_2 = Instance.new("ImageLabel")
local Box = Instance.new("ImageButton")
local Objects = Instance.new("ScrollingFrame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextButton_Roundify_4px = Instance.new("ImageLabel")
local TabButton = Instance.new("TextButton")
local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")
local Folder = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local TextButton_Roundify_4px_3 = Instance.new("ImageLabel")
local Toggle_2 = Instance.new("ImageLabel")
local Objects_2 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local HorizontalAlignment = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local Console = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Source = Instance.new("TextBox")
local Comments = Instance.new("TextLabel")
local Globals = Instance.new("TextLabel")
local Keywords = Instance.new("TextLabel")
local RemoteHighlight = Instance.new("TextLabel")
local Strings = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local Numbers = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local ColorPicker = Instance.new("ImageLabel")
local Palette = Instance.new("ImageLabel")
local Indicator_3 = Instance.new("ImageLabel")
local Sample = Instance.new("ImageLabel")
local Saturation = Instance.new("ImageLabel")
local Indicator_4 = Instance.new("Frame")
local Switch = Instance.new("TextButton")
local TextButton_Roundify_4px_4 = Instance.new("ImageLabel")
local Title_3 = Instance.new("TextLabel")
local Button_2 = Instance.new("TextButton")
local TextButton_Roundify_4px_5 = Instance.new("ImageLabel")
local DropdownButton = Instance.new("TextButton")
local Keybind = Instance.new("ImageLabel")
local Title_4 = Instance.new("TextLabel")
local Input = Instance.new("TextButton")
local Input_Roundify_4px = Instance.new("ImageLabel")
local Windows = Instance.new("Frame")

imgui.Name = "imgui"
imgui.Parent = game:GetService("CoreGui")

Prefabs.Name = "Prefabs"
Prefabs.Parent = imgui
Prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
Prefabs.Size = UDim2.new(0, 100, 0, 100)
Prefabs.Visible = false

Label.Name = "Label"
Label.Parent = Prefabs
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.Size = UDim2.new(0, 200, 0, 20)
Label.Font = Enum.Font.GothamSemibold
Label.Text = "Hello, world 123"
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left

Window.Name = "Window"
Window.Parent = Prefabs
Window.Active = true
Window.BackgroundColor3 = Color3.new(1, 1, 1)
Window.BackgroundTransparency = 1
Window.ClipsDescendants = true
Window.Position = UDim2.new(0, 20, 0, 20)
Window.Selectable = true
Window.Size = UDim2.new(0, 200, 0, 200)
Window.Image = "rbxassetid://2851926732"
Window.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Window.ScaleType = Enum.ScaleType.Slice
Window.SliceCenter = Rect.new(12, 12, 12, 12)

Resizer.Name = "Resizer"
Resizer.Parent = Window
Resizer.Active = true
Resizer.BackgroundColor3 = Color3.new(1, 1, 1)
Resizer.BackgroundTransparency = 1
Resizer.BorderSizePixel = 0
Resizer.Position = UDim2.new(1, -20, 1, -20)
Resizer.Size = UDim2.new(0, 20, 0, 20)

Bar.Name = "Bar"
Bar.Parent = Window
Bar.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0, 0, 0, 5)
Bar.Size = UDim2.new(1, 0, 0, 15)

Toggle.Name = "Toggle"
Toggle.Parent = Bar
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.Position = UDim2.new(0, 5, 0, -2)
Toggle.Rotation = 90
Toggle.Size = UDim2.new(0, 20, 0, 20)
Toggle.ZIndex = 2
Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Base.Name = "Base"
Base.Parent = Bar
Base.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0, 0, 0.800000012, 0)
Base.Size = UDim2.new(1, 0, 0, 10)
Base.Image = "rbxassetid://2851926732"
Base.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.ScaleType = Enum.ScaleType.Slice
Base.SliceCenter = Rect.new(12, 12, 12, 12)

Top.Name = "Top"
Top.Parent = Bar
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0, 0, 0, -5)
Top.Size = UDim2.new(1, 0, 0, 10)
Top.Image = "rbxassetid://2851926732"
Top.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(12, 12, 12, 12)

Tabs.Name = "Tabs"
Tabs.Parent = Window
Tabs.BackgroundColor3 = Color3.new(1, 1, 1)
Tabs.BackgroundTransparency = 1
Tabs.Position = UDim2.new(0, 15, 0, 60)
Tabs.Size = UDim2.new(1, -30, 1, -60)

Title.Name = "Title"
Title.Parent = Window
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 30, 0, 3)
Title.Size = UDim2.new(0, 200, 0, 20)
Title.Font = Enum.Font.GothamBold
Title.Text = "Gamer Time"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left

TabSelection.Name = "TabSelection"
TabSelection.Parent = Window
TabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
TabSelection.BackgroundTransparency = 1
TabSelection.Position = UDim2.new(0, 15, 0, 30)
TabSelection.Size = UDim2.new(1, -30, 0, 25)
TabSelection.Visible = false
TabSelection.Image = "rbxassetid://2851929490"
TabSelection.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
TabSelection.ScaleType = Enum.ScaleType.Slice
TabSelection.SliceCenter = Rect.new(4, 4, 4, 4)

TabButtons.Name = "TabButtons"
TabButtons.Parent = TabSelection
TabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
TabButtons.BackgroundTransparency = 1
TabButtons.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = TabButtons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

Frame.Parent = TabSelection
Frame.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(1, 0, 0, 2)

Tab.Name = "Tab"
Tab.Parent = Prefabs
Tab.BackgroundColor3 = Color3.new(1, 1, 1)
Tab.BackgroundTransparency = 1
Tab.Size = UDim2.new(1, 0, 1, 0)
Tab.Visible = false
Tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
Tab.CanvasSize = UDim2.new(0, 0, 0, 0)
Tab.BorderSizePixel = 0
Tab.ScrollBarThickness = 0

UIListLayout_2.Parent = Tab
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

TextBox.Parent = Prefabs
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 0, 20)
TextBox.ZIndex = 2
TextBox.Font = Enum.Font.GothamSemibold
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.PlaceholderText = "Input Text"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextBox.TextSize = 14

TextBox_Roundify_4px.Name = "TextBox_Roundify_4px"
TextBox_Roundify_4px.Parent = TextBox
TextBox_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox_Roundify_4px.BackgroundTransparency = 1
TextBox_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextBox_Roundify_4px.Image = "rbxassetid://2851929490"
TextBox_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextBox_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextBox_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Slider.Name = "Slider"
Slider.Parent = Prefabs
Slider.BackgroundColor3 = Color3.new(1, 1, 1)
Slider.BackgroundTransparency = 1
Slider.Position = UDim2.new(0, 0, 0.178571433, 0)
Slider.Size = UDim2.new(1, 0, 0, 20)
Slider.Image = "rbxassetid://2851929490"
Slider.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(4, 4, 4, 4)

Title_2.Name = "Title"
Title_2.Parent = Slider
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.Position = UDim2.new(0.5, 0, 0.5, -10)
Title_2.Size = UDim2.new(0, 0, 0, 20)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.GothamBold
Title_2.Text = "Slider"
Title_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_2.TextSize = 14

Indicator.Name = "Indicator"
Indicator.Parent = Slider
Indicator.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator.BackgroundTransparency = 1
Indicator.Size = UDim2.new(0, 0, 0, 20)
Indicator.Image = "rbxassetid://2851929490"
Indicator.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
Indicator.ScaleType = Enum.ScaleType.Slice
Indicator.SliceCenter = Rect.new(4, 4, 4, 4)

Value.Name = "Value"
Value.Parent = Slider
Value.BackgroundColor3 = Color3.new(1, 1, 1)
Value.BackgroundTransparency = 1
Value.Position = UDim2.new(1, -55, 0.5, -10)
Value.Size = UDim2.new(0, 50, 0, 20)
Value.Font = Enum.Font.GothamBold
Value.Text = "0%"
Value.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Value.TextSize = 14

TextLabel.Parent = Slider
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(1, -20, -0.75, 0)
TextLabel.Size = UDim2.new(0, 26, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "]"
TextLabel.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel.TextSize = 14

TextLabel_2.Parent = Slider
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(1, -65, -0.75, 0)
TextLabel_2.Size = UDim2.new(0, 26, 0, 50)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "["
TextLabel_2.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel_2.TextSize = 14

Circle.Name = "Circle"
Circle.Parent = Prefabs
Circle.BackgroundColor3 = Color3.new(1, 1, 1)
Circle.BackgroundTransparency = 1
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.5

UIListLayout_3.Parent = Prefabs
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 20)

Dropdown.Name = "Dropdown"
Dropdown.Parent = Prefabs
Dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
Dropdown.BackgroundTransparency = 1
Dropdown.BorderSizePixel = 0
Dropdown.Position = UDim2.new(-0.055555556, 0, 0.0833333284, 0)
Dropdown.Size = UDim2.new(0, 200, 0, 20)
Dropdown.ZIndex = 2
Dropdown.Font = Enum.Font.GothamBold
Dropdown.Text = "   Dropdown"
Dropdown.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Dropdown.TextSize = 14
Dropdown.TextXAlignment = Enum.TextXAlignment.Left

Indicator_2.Name = "Indicator"
Indicator_2.Parent = Dropdown
Indicator_2.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_2.BackgroundTransparency = 1
Indicator_2.Position = UDim2.new(0.899999976, -10, 0.100000001, 0)
Indicator_2.Rotation = -90
Indicator_2.Size = UDim2.new(0, 15, 0, 15)
Indicator_2.ZIndex = 2
Indicator_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"

Box.Name = "Box"
Box.Parent = Dropdown
Box.BackgroundColor3 = Color3.new(1, 1, 1)
Box.BackgroundTransparency = 1
Box.Position = UDim2.new(0, 0, 0, 25)
Box.Size = UDim2.new(1, 0, 0, 150)
Box.ZIndex = 3
Box.Image = "rbxassetid://2851929490"
Box.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Box.ScaleType = Enum.ScaleType.Slice
Box.SliceCenter = Rect.new(4, 4, 4, 4)

Objects.Name = "Objects"
Objects.Parent = Box
Objects.BackgroundColor3 = Color3.new(1, 1, 1)
Objects.BackgroundTransparency = 1
Objects.BorderSizePixel = 0
Objects.Size = UDim2.new(1, 0, 1, 0)
Objects.ZIndex = 3
Objects.CanvasSize = UDim2.new(0, 0, 0, 0)
Objects.ScrollBarThickness = 8

UIListLayout_4.Parent = Objects
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px.Parent = Dropdown
TextButton_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px.BackgroundTransparency = 1
TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

TabButton.Name = "TabButton"
TabButton.Parent = Prefabs
TabButton.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TabButton.BackgroundTransparency = 1
TabButton.BorderSizePixel = 0
TabButton.Position = UDim2.new(0.185185179, 0, 0, 0)
TabButton.Size = UDim2.new(0, 71, 0, 25)
TabButton.ZIndex = 2
TabButton.Font = Enum.Font.GothamSemibold
TabButton.Text = "Test tab"
TabButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TabButton.TextSize = 14

TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_2.Parent = TabButton
TextButton_Roundify_4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_2.BackgroundTransparency = 1
TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_2.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_2.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_2.SliceCenter = Rect.new(4, 4, 4, 4)

Folder.Name = "Folder"
Folder.Parent = Prefabs
Folder.BackgroundColor3 = Color3.new(1, 1, 1)
Folder.BackgroundTransparency = 1
Folder.Position = UDim2.new(0, 0, 0, 50)
Folder.Size = UDim2.new(1, 0, 0, 20)
Folder.Image = "rbxassetid://2851929490"
Folder.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Folder.ScaleType = Enum.ScaleType.Slice
Folder.SliceCenter = Rect.new(4, 4, 4, 4)

Button.Name = "Button"
Button.Parent = Folder
Button.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button.BackgroundTransparency = 1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 0, 20)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamSemibold
Button.Text = "      Folder"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 14
Button.TextXAlignment = Enum.TextXAlignment.Left

TextButton_Roundify_4px_3.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_3.Parent = Button
TextButton_Roundify_4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_3.BackgroundTransparency = 1
TextButton_Roundify_4px_3.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_3.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_3.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_3.SliceCenter = Rect.new(4, 4, 4, 4)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Button
Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_2.BackgroundTransparency = 1
Toggle_2.Position = UDim2.new(0, 5, 0, 0)
Toggle_2.Size = UDim2.new(0, 20, 0, 20)
Toggle_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Objects_2.Name = "Objects"
Objects_2.Parent = Folder
Objects_2.BackgroundColor3 = Color3.new(1, 1, 1)
Objects_2.BackgroundTransparency = 1
Objects_2.Position = UDim2.new(0, 10, 0, 25)
Objects_2.Size = UDim2.new(1, -10, 1, -25)
Objects_2.Visible = false

UIListLayout_5.Parent = Objects_2
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 5)

HorizontalAlignment.Name = "HorizontalAlignment"
HorizontalAlignment.Parent = Prefabs
HorizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
HorizontalAlignment.BackgroundTransparency = 1
HorizontalAlignment.Size = UDim2.new(1, 0, 0, 20)

UIListLayout_6.Parent = HorizontalAlignment
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 5)

Console.Name = "Console"
Console.Parent = Prefabs
Console.BackgroundColor3 = Color3.new(1, 1, 1)
Console.BackgroundTransparency = 1
Console.Size = UDim2.new(1, 0, 0, 200)
Console.Image = "rbxassetid://2851928141"
Console.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Console.ScaleType = Enum.ScaleType.Slice
Console.SliceCenter = Rect.new(8, 8, 8, 8)

ScrollingFrame.Parent = Console
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 1)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 4
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

Source.Name = "Source"
Source.Parent = ScrollingFrame
Source.BackgroundColor3 = Color3.new(1, 1, 1)
Source.BackgroundTransparency = 1
Source.Position = UDim2.new(0, 40, 0, 0)
Source.Size = UDim2.new(1, -40, 0, 10000)
Source.ZIndex = 3
Source.ClearTextOnFocus = false
Source.Font = Enum.Font.Code
Source.MultiLine = true
Source.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
Source.Text = ""
Source.TextColor3 = Color3.new(1, 1, 1)
Source.TextSize = 12
Source.TextStrokeColor3 = Color3.new(1, 1, 1)
Source.TextWrapped = true
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top
Source.AutomaticSize = Enum.AutomaticSize.XY

-- asdasd

Comments.Name = "Comments"
Comments.Parent = Source
Comments.BackgroundColor3 = Color3.new(1, 1, 1)
Comments.BackgroundTransparency = 1
Comments.Size = UDim2.new(1, 0, 1, 0)
Comments.ZIndex = 5
Comments.Font = Enum.Font.Code
Comments.Text = ""
Comments.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
Comments.TextSize = 12
Comments.TextXAlignment = Enum.TextXAlignment.Left
Comments.TextYAlignment = Enum.TextYAlignment.Top

Globals.Name = "Globals"
Globals.Parent = Source
Globals.BackgroundColor3 = Color3.new(1, 1, 1)
Globals.BackgroundTransparency = 1
Globals.Size = UDim2.new(1, 0, 1, 0)
Globals.ZIndex = 5
Globals.Font = Enum.Font.Code
Globals.Text = ""
Globals.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
Globals.TextSize = 12
Globals.TextXAlignment = Enum.TextXAlignment.Left
Globals.TextYAlignment = Enum.TextYAlignment.Top

Keywords.Name = "Keywords"
Keywords.Parent = Source
Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords.BackgroundTransparency = 1
Keywords.Size = UDim2.new(1, 0, 1, 0)
Keywords.ZIndex = 5
Keywords.Font = Enum.Font.Code
Keywords.Text = ""
Keywords.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
Keywords.TextSize = 12
Keywords.TextXAlignment = Enum.TextXAlignment.Left
Keywords.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight.Name = "RemoteHighlight"
RemoteHighlight.Parent = Source
RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteHighlight.BackgroundTransparency = 1
RemoteHighlight.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight.ZIndex = 5
RemoteHighlight.Font = Enum.Font.Code
RemoteHighlight.Text = ""
RemoteHighlight.TextColor3 = Color3.new(0, 0.568627, 1)
RemoteHighlight.TextSize = 12
RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight.TextYAlignment = Enum.TextYAlignment.Top

Strings.Name = "Strings"
Strings.Parent = Source
Strings.BackgroundColor3 = Color3.new(1, 1, 1)
Strings.BackgroundTransparency = 1
Strings.Size = UDim2.new(1, 0, 1, 0)
Strings.ZIndex = 5
Strings.Font = Enum.Font.Code
Strings.Text = ""
Strings.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
Strings.TextSize = 12
Strings.TextXAlignment = Enum.TextXAlignment.Left
Strings.TextYAlignment = Enum.TextYAlignment.Top

Tokens.Name = "Tokens"
Tokens.Parent = Source
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Size = UDim2.new(1, 0, 1, 0)
Tokens.ZIndex = 5
Tokens.Font = Enum.Font.Code
Tokens.Text = ""
Tokens.TextColor3 = Color3.new(1, 1, 1)
Tokens.TextSize = 12
Tokens.TextXAlignment = Enum.TextXAlignment.Left
Tokens.TextYAlignment = Enum.TextYAlignment.Top

Numbers.Name = "Numbers"
Numbers.Parent = Source
Numbers.BackgroundColor3 = Color3.new(1, 1, 1)
Numbers.BackgroundTransparency = 1
Numbers.Size = UDim2.new(1, 0, 1, 0)
Numbers.ZIndex = 4
Numbers.Font = Enum.Font.Code
Numbers.Text = ""
Numbers.TextColor3 = Color3.new(1, 0.776471, 0)
Numbers.TextSize = 12
Numbers.TextXAlignment = Enum.TextXAlignment.Left
Numbers.TextYAlignment = Enum.TextYAlignment.Top

Info.Name = "Info"
Info.Parent = Source
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 1
Info.Size = UDim2.new(1, 0, 1, 0)
Info.ZIndex = 5
Info.Font = Enum.Font.Code
Info.Text = ""
Info.TextColor3 = Color3.new(0, 0.635294, 1)
Info.TextSize = 12
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = ScrollingFrame
Lines.BackgroundColor3 = Color3.new(1, 1, 1)
Lines.BackgroundTransparency = 1
Lines.BorderSizePixel = 0
Lines.Size = UDim2.new(0, 40, 0, 10000)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1\n"
Lines.TextColor3 = Color3.new(1, 1, 1)
Lines.TextSize = 12
Lines.TextWrapped = true
Lines.TextYAlignment = Enum.TextYAlignment.Top

ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = Prefabs
ColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
ColorPicker.BackgroundTransparency = 1
ColorPicker.Size = UDim2.new(0, 180, 0, 110)
ColorPicker.Image = "rbxassetid://2851929490"
ColorPicker.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ColorPicker.ScaleType = Enum.ScaleType.Slice
ColorPicker.SliceCenter = Rect.new(4, 4, 4, 4)

Palette.Name = "Palette"
Palette.Parent = ColorPicker
Palette.BackgroundColor3 = Color3.new(1, 1, 1)
Palette.BackgroundTransparency = 1
Palette.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
Palette.Size = UDim2.new(0, 100, 0, 100)
Palette.Image = "rbxassetid://698052001"
Palette.ScaleType = Enum.ScaleType.Slice
Palette.SliceCenter = Rect.new(4, 4, 4, 4)

Indicator_3.Name = "Indicator"
Indicator_3.Parent = Palette
Indicator_3.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_3.BackgroundTransparency = 1
Indicator_3.Size = UDim2.new(0, 5, 0, 5)
Indicator_3.ZIndex = 2
Indicator_3.Image = "rbxassetid://2851926732"
Indicator_3.ImageColor3 = Color3.new(0, 0, 0)
Indicator_3.ScaleType = Enum.ScaleType.Slice
Indicator_3.SliceCenter = Rect.new(12, 12, 12, 12)

Sample.Name = "Sample"
Sample.Parent = ColorPicker
Sample.BackgroundColor3 = Color3.new(1, 1, 1)
Sample.BackgroundTransparency = 1
Sample.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
Sample.Size = UDim2.new(0, 25, 0, 25)
Sample.Image = "rbxassetid://2851929490"
Sample.ScaleType = Enum.ScaleType.Slice
Sample.SliceCenter = Rect.new(4, 4, 4, 4)

Saturation.Name = "Saturation"
Saturation.Parent = ColorPicker
Saturation.BackgroundColor3 = Color3.new(1, 1, 1)
Saturation.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
Saturation.Size = UDim2.new(0, 15, 0, 100)
Saturation.Image = "rbxassetid://3641079629"

Indicator_4.Name = "Indicator"
Indicator_4.Parent = Saturation
Indicator_4.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_4.BorderSizePixel = 0
Indicator_4.Size = UDim2.new(0, 20, 0, 2)
Indicator_4.ZIndex = 2

Switch.Name = "Switch"
Switch.Parent = Prefabs
Switch.BackgroundColor3 = Color3.new(1, 1, 1)
Switch.BackgroundTransparency = 1
Switch.BorderSizePixel = 0
Switch.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
Switch.Size = UDim2.new(0, 20, 0, 20)
Switch.ZIndex = 2
Switch.Font = Enum.Font.SourceSans
Switch.Text = ""
Switch.TextColor3 = Color3.new(1, 1, 1)
Switch.TextSize = 18

TextButton_Roundify_4px_4.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_4.Parent = Switch
TextButton_Roundify_4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_4.BackgroundTransparency = 1
TextButton_Roundify_4px_4.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_4.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_4.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_4.ImageTransparency = 0.5
TextButton_Roundify_4px_4.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_4.SliceCenter = Rect.new(4, 4, 4, 4)

Title_3.Name = "Title"
Title_3.Parent = Switch
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.Position = UDim2.new(1.20000005, 0, 0, 0)
Title_3.Size = UDim2.new(0, 20, 0, 20)
Title_3.Font = Enum.Font.GothamSemibold
Title_3.Text = "Switch"
Title_3.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_3.TextSize = 14
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Button_2.Name = "Button"
Button_2.Parent = Prefabs
Button_2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button_2.BackgroundTransparency = 1
Button_2.BorderSizePixel = 0
Button_2.Size = UDim2.new(0, 91, 0, 20)
Button_2.ZIndex = 2
Button_2.Font = Enum.Font.GothamSemibold
Button_2.TextColor3 = Color3.new(1, 1, 1)
Button_2.TextSize = 14

TextButton_Roundify_4px_5.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_5.Parent = Button_2
TextButton_Roundify_4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_5.BackgroundTransparency = 1
TextButton_Roundify_4px_5.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_5.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_5.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_5.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_5.SliceCenter = Rect.new(4, 4, 4, 4)

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = Prefabs
DropdownButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
DropdownButton.BorderSizePixel = 0
DropdownButton.Size = UDim2.new(1, 0, 0, 20)
DropdownButton.ZIndex = 3
DropdownButton.Font = Enum.Font.GothamBold
DropdownButton.Text = "      Button"
DropdownButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
DropdownButton.TextSize = 14
DropdownButton.TextXAlignment = Enum.TextXAlignment.Left

Keybind.Name = "Keybind"
Keybind.Parent = Prefabs
Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind.BackgroundTransparency = 1
Keybind.Size = UDim2.new(0, 200, 0, 20)
Keybind.Image = "rbxassetid://2851929490"
Keybind.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
Keybind.ScaleType = Enum.ScaleType.Slice
Keybind.SliceCenter = Rect.new(4, 4, 4, 4)

Title_4.Name = "Title"
Title_4.Parent = Keybind
Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
Title_4.BackgroundTransparency = 1
Title_4.Size = UDim2.new(0, 0, 1, 0)
Title_4.Font = Enum.Font.GothamBold
Title_4.Text = "Keybind"
Title_4.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_4.TextSize = 14
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Input.Name = "Input"
Input.Parent = Keybind
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.BackgroundTransparency = 1
Input.BorderSizePixel = 0
Input.Position = UDim2.new(1, -85, 0, 2)
Input.Size = UDim2.new(0, 80, 1, -4)
Input.ZIndex = 2
Input.Font = Enum.Font.GothamSemibold
Input.Text = "RShift"
Input.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Input.TextSize = 12
Input.TextWrapped = true

Input_Roundify_4px.Name = "Input_Roundify_4px"
Input_Roundify_4px.Parent = Input
Input_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
Input_Roundify_4px.BackgroundTransparency = 1
Input_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
Input_Roundify_4px.Image = "rbxassetid://2851929490"
Input_Roundify_4px.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
Input_Roundify_4px.ScaleType = Enum.ScaleType.Slice
Input_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Windows.Name = "Windows"
Windows.Parent = imgui
Windows.BackgroundColor3 = Color3.new(1, 1, 1)
Windows.BackgroundTransparency = 1
Windows.Position = UDim2.new(0, 20, 0, 20)
Windows.Size = UDim2.new(1, 20, 1, -20)

coroutine.wrap(
    function()
        while wait() do
            lib.RainbowColorValue = lib.RainbowColorValue + 1 / 255
            lib.HueSelectionPosition = lib.HueSelectionPosition + 1

            if lib.RainbowColorValue >= 1 then
                lib.RainbowColorValue = 0
            end

            if lib.HueSelectionPosition == 80 then
                lib.HueSelectionPosition = 0
            end
        end
    end
)()

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        object.Position = pos
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

function lib:Window(text, preset, closebind)
    windows = windows + 1
    local ui = Instance.new("ScreenGui")
    ui.Name = tostring(text)
    ui.Parent = game:GetService('CoreGui')
    ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ui.DisplayOrder = 65454269
    
    CloseBind = closebind or Enum.KeyCode.RightControl
    PresetColor = preset or Color3.fromRGB(44, 120, 224)
    fs = false
    local Main = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner", Main)
    local TabHold = Instance.new("Frame")
    local TabHoldLayout = Instance.new("UIListLayout")
    local Title = Instance.new("TextLabel")
    local TabFolder = Instance.new("Folder")
    local DragFrame = Instance.new("Frame")

    Main.Name = "Main"
    Main.Parent = ui
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)
    Main.ClipsDescendants = true
    Main.Visible = true

    MainCorner.CornerRadius = UDim.new(0, 5)
    MainCorner.Name = "MainCorner"

    TabHold.Name = "TabHold"
    TabHold.Parent = Main
    TabHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabHold.BackgroundTransparency = 1.000
    TabHold.Position = UDim2.new(0.0339285731, 0, 0.147335425, 0)
    TabHold.Size = UDim2.new(0, 107, 0, 254)

    TabHoldLayout.Name = "TabHoldLayout"
    TabHoldLayout.Parent = TabHold
    TabHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabHoldLayout.Padding = UDim.new(0, 11)

    Title.Name = "Title"
    Title.Parent = Main
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.0339285731, 0, 0.0564263314, 0)
    Title.Size = UDim2.new(0, 200, 0, 23)
    Title.Font = Enum.Font.GothamSemibold
    Title.Text = text
    Title.TextColor3 = PresetColor or Color3.fromRGB(68, 68, 68)
    Title.TextSize = 12.000
    Title.TextXAlignment = Enum.TextXAlignment.Left

    coroutine.wrap(
        function()
            while wait() do
                Title.TextColor3 = PresetColor
            end
        end
    )()

    DragFrame.Name = "DragFrame"
    DragFrame.Parent = Main
    DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DragFrame.BackgroundTransparency = 1.000
    DragFrame.Size = UDim2.new(0, 560, 0, 41)

    
    
    Main:TweenSize(UDim2.new(0, 560, 0, 319), "Out", "Quart", 0.6, true)
    

    MakeDraggable(DragFrame, Main)
    
    local uitoggled = false
    local knixhub = nil
    UserInputService.InputBegan:Connect(
        function(io, p)
            if io.KeyCode == CloseBind then
                if uitoggled == false then
                    Main:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Quart", 0.6, true)
                    uitoggled = true
                    wait(.5)
                    knixhub = false
                elseif uitoggled == true then
                    Main:TweenSize(UDim2.new(0, 560, 0, 319), "Out", "Quart", 0.6, true)
                    uitoggled = false
                    wait(.5)
                    knixhub = true
                end
            end
        end
    )

    TabFolder.Name = "TabFolder"
    TabFolder.Parent = Main

	function lib:ChangeUiKeybind(key)
		CloseBind = key
	end
    
    function lib:ChangePresetColor(toch)
        PresetColor = Color3.fromRGB(toch.R * 255, toch.G * 255, toch.B * 255)
    end

    function lib:ChangeMainColor(toch)
        Main.BackgroundColor3 = Color3.fromRGB(toch.R * 255, toch.G * 255, toch.B * 255)
    end

    function lib:ChangeBackgroundPresetColor(toch)
        BackgroundPresetColor = Color3.fromRGB(toch.R * 255, toch.G * 255, toch.B * 255)
    end

    function lib:ChangePresetTextColor(toch)
        PresetTextColor = Color3.fromRGB(toch.R * 255, toch.G * 255, toch.B * 255)
    end
    
    function lib:Notification(texttitle,textdesc,textbtn)

        local NotificationHold = Instance.new("TextButton")
        local NotificationFrame = Instance.new("Frame")
        local OkayBtn = Instance.new("TextButton")
        local OkayBtnCorner = Instance.new("UICorner")
        local OkayBtnTitle = Instance.new("TextLabel")
        local NotificationTitle = Instance.new("TextLabel")
        local NotificationDesc = Instance.new("TextLabel")


        NotificationHold.Name = "NotificationHold"
        NotificationHold.Parent = Main
        NotificationHold.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        NotificationHold.BackgroundTransparency = 1.000
        NotificationHold.BorderSizePixel = 0
        NotificationHold.Size = UDim2.new(0, 560, 0, 319)
        NotificationHold.AutoButtonColor = false
        NotificationHold.Font = Enum.Font.SourceSans
        NotificationHold.Text = ""
        spawn(function()
            while wait() do
                NotificationHold.TextColor3 = PresetTextColor
            end
        end)
        NotificationHold.TextSize = 14.000
        
        TweenService:Create(
            NotificationHold,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 0.7}
        ):Play()
        wait(0.4)

        NotificationFrame.Name = "NotificationFrame"
        NotificationFrame.Parent = NotificationHold
        NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        NotificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        NotificationFrame.BorderSizePixel = 0
        NotificationFrame.ClipsDescendants = true
        NotificationFrame.Position = UDim2.new(0.5, 0, 0.498432577, 0)
        
        NotificationFrame:TweenSize(UDim2.new(0, 164,0, 193), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

        OkayBtn.Name = "OkayBtn"
        OkayBtn.Parent = NotificationFrame
        
        spawn(function()
            while wait() do
                OkayBtn.BackgroundColor3 = BackgroundPresetColor
            end
        end)

        OkayBtn.Position = UDim2.new(0.0609756112, 0, 0.720207274, 0)
        OkayBtn.Size = UDim2.new(0, 144, 0, 42)
        OkayBtn.AutoButtonColor = false
        OkayBtn.Font = Enum.Font.SourceSans
        OkayBtn.Text = ""
        spawn(function()
            while wait() do
                OkayBtn.TextColor3 = PresetTextColor
            end
        end)
        OkayBtn.TextSize = 14.000

        OkayBtnCorner.CornerRadius = UDim.new(0, 5)
        OkayBtnCorner.Name = "OkayBtnCorner"
        OkayBtnCorner.Parent = OkayBtn

        OkayBtnTitle.Name = "OkayBtnTitle"
        OkayBtnTitle.Parent = OkayBtn
        OkayBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OkayBtnTitle.BackgroundTransparency = 1.000
        OkayBtnTitle.Position = UDim2.new(0.0763888881, 0, 0, 0)
        OkayBtnTitle.Size = UDim2.new(0, 181, 0, 42)
        OkayBtnTitle.Font = Enum.Font.Gotham
        OkayBtnTitle.Text = textbtn
        spawn(function()
            while wait() do
                OkayBtnTitle.TextColor3 = PresetTextColor
            end
        end)
        OkayBtnTitle.TextSize = 14.000
        OkayBtnTitle.TextXAlignment = Enum.TextXAlignment.Left

        NotificationTitle.Name = "NotificationTitle"
        NotificationTitle.Parent = NotificationFrame
        NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NotificationTitle.BackgroundTransparency = 1.000
        NotificationTitle.Position = UDim2.new(0.0670731738, 0, 0.0829015523, 0)
        NotificationTitle.Size = UDim2.new(0, 143, 0, 26)
        NotificationTitle.Font = Enum.Font.Gotham
        NotificationTitle.Text = texttitle
        spawn(function()
            while wait() do
                NotificationTitle.TextColor3 = PresetTextColor
            end
        end)
        NotificationTitle.TextSize = 18.000
        NotificationTitle.TextXAlignment = Enum.TextXAlignment.Left

        NotificationDesc.Name = "NotificationDesc"
        NotificationDesc.Parent = NotificationFrame
        NotificationDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NotificationDesc.BackgroundTransparency = 1.000
        NotificationDesc.Position = UDim2.new(0.0670000017, 0, 0.218999997, 0)
        NotificationDesc.Size = UDim2.new(0, 143, 0, 91)
        NotificationDesc.Font = Enum.Font.Gotham
        NotificationDesc.Text = textdesc
        spawn(function()
            while wait() do
                NotificationDesc.TextColor3 = PresetTextColor
            end
        end)
        NotificationDesc.TextSize = 15.000
        NotificationDesc.TextWrapped = true
        NotificationDesc.TextXAlignment = Enum.TextXAlignment.Left
        NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top
        
        OkayBtn.MouseButton1Click:Connect(function()
            NotificationFrame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
        
            wait(0.4)
            
            TweenService:Create(
                NotificationHold,
                TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 1}
            ):Play()
            
            wait(.3)
            
            NotificationHold:Destroy()
        end)
    end
    local tabhold = {}
    function tabhold:Tab(nama)
        local TabBtn = Instance.new("TextButton")
        local TabTitle = Instance.new("TextLabel")
        local TabBtnIndicator = Instance.new("Frame")
        local TabBtnIndicatorCorner = Instance.new("UICorner")

        TabBtn.Name = "TabBtn"
        TabBtn.Parent = TabHold
        TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabBtn.BackgroundTransparency = 1.000
        TabBtn.Size = UDim2.new(0, 107, 0, 21)
        TabBtn.Font = Enum.Font.SourceSans
        TabBtn.Text = ""
        spawn(function()
            while wait() do
                TabBtn.TextColor3 = themeColor[currentTheme]["TabColor"]
            end
        end)
        TabBtn.TextSize = 14.000

        TabTitle.Name = "TabTitle"
        TabTitle.Parent = TabBtn
        TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabTitle.BackgroundTransparency = 1.000
        TabTitle.Size = UDim2.new(0, 107, 0, 21)
        TabTitle.Font = Enum.Font.Gotham
        TabTitle.Text = nama
        spawn(function()
            while wait() do
                TabTitle.TextColor3 = themeColor[currentTheme]["TabColor"]
            end
        end)
        TabTitle.TextSize = 14.000
        TabTitle.TextXAlignment = Enum.TextXAlignment.Left

        TabBtnIndicator.Name = "TabBtnIndicator"
        TabBtnIndicator.Parent = TabBtn
        TabBtnIndicator.BackgroundColor3 = PresetColor
        TabBtnIndicator.BorderSizePixel = 0
        TabBtnIndicator.Position = UDim2.new(0, 0, 1, 0)
        TabBtnIndicator.Size = UDim2.new(0, 0, 0, 2)

        TabBtnIndicatorCorner.Name = "TabBtnIndicatorCorner"
        TabBtnIndicatorCorner.Parent = TabBtnIndicator
        
        coroutine.wrap(
            function()
                while wait() do
                    TabBtnIndicator.BackgroundColor3 = PresetColor     
                end
            end
        )()
        

        local Tab = Instance.new("ScrollingFrame")
        local TabLayout = Instance.new("UIListLayout")
        
        Tab.Name = "Tab"
        Tab.Parent = TabFolder
        Tab.Active = true
        Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Tab.BackgroundTransparency = 1.000
        Tab.BorderSizePixel = 0
        Tab.Position = UDim2.new(0.31400001, 0, 0.147, 0)
        Tab.Size = UDim2.new(0, 373, 0, 254)
        Tab.CanvasSize = UDim2.new(0, 0, 0, 0)
        Tab.ScrollBarThickness = 3
        Tab.Visible = false
        
        TabLayout.Name = "TabLayout"
        TabLayout.Parent = Tab
        TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
        TabLayout.Padding = UDim.new(0, 6)
        
        if fs == false then
            fs = true
            TabBtnIndicator.Size = UDim2.new(0, 13, 0, 2)
            spawn(function()
                while wait() do
                    TabTitle.TextColor3 = themeColor[currentTheme]["TabColor"]
                end
            end)
            Tab.Visible = true
        end
        
        TabBtn.MouseButton1Click:Connect(function()
            for i, v in next, TabFolder:GetChildren() do
                if v.Name == "Tab" then
                    v.Visible = false
                end
                Tab.Visible = true
            end
            for i, v in next, TabHold:GetChildren() do
                if v.Name == "TabBtn" then
                    v.TabBtnIndicator:TweenSize(UDim2.new(0, 0, 0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TabBtnIndicator:TweenSize(UDim2.new(0, 13, 0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TweenService:Create(
                        v.TabTitle,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = themeColor[currentTheme]["TabColor"]}
                    ):Play()
                    TweenService:Create(
                        TabTitle,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = themeColor[currentTheme]["TabColor"]}
                    ):Play()
                end
            end
        end)
        local tabcontent = {}
        function tabcontent:Button(text, callback)
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")
            local ButtonTitle = Instance.new("TextLabel")

            Button.Name = "Button"
            Button.Parent = Tab
            spawn(function()
                while wait() do
                    Button.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Button.Size = UDim2.new(0, 363, 0, 42)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.SourceSans
            Button.Text = ""
            spawn(function()
                while wait() do
                    Button.TextColor3 = PresetTextColor
                end
            end)
            Button.TextSize = 14.000

            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button

            ButtonTitle.Name = "ButtonTitle"
            ButtonTitle.Parent = Button
            ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonTitle.BackgroundTransparency = 1.000
            ButtonTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            ButtonTitle.Size = UDim2.new(0, 187, 0, 42)
            ButtonTitle.Font = Enum.Font.Gotham
            ButtonTitle.Text = text
            spawn(function()
                while wait() do
                    ButtonTitle.TextColor3 = PresetTextColor
                end
            end)
            ButtonTitle.TextSize = 14.000
            ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            Button.MouseButton1Click:Connect(function()
                pcall(callback)
            end)
            
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:DestroyGui()
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")
            local ButtonTitle = Instance.new("TextLabel")

            Button.Name = "Button"
            Button.Parent = Tab
            
            spawn(function()
                while wait() do
                    Button.BackgroundColor3 = BackgroundPresetColor
                end
            end)

            Button.Size = UDim2.new(0, 363, 0, 42)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.SourceSans
            Button.Text = ""
            spawn(function()
                while wait() do
                    Button.TextColor3 = PresetTextColor
                end
            end)
            Button.TextSize = 14.000

            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button

            ButtonTitle.Name = "ButtonTitle"
            ButtonTitle.Parent = Button
            ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonTitle.BackgroundTransparency = 1.000
            ButtonTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            ButtonTitle.Size = UDim2.new(0, 187, 0, 42)
            ButtonTitle.Font = Enum.Font.Gotham
            ButtonTitle.Text = "Destroy Gui"
            spawn(function()
                while wait() do
                    ButtonTitle.TextColor3 = PresetTextColor
                end
            end)
            ButtonTitle.TextSize = 14.000
            ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            Button.MouseButton1Click:Connect(function()
                game.CoreGui[text]:Destroy()
            end)
            
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:Toggle(text, callback)
            local toggled = false

            local Toggle = Instance.new("TextButton")
            local ToggleCorner = Instance.new("UICorner")
            local ToggleTitle = Instance.new("TextLabel")
            local FrameToggle1 = Instance.new("Frame")
            local FrameToggle1Corner = Instance.new("UICorner")
            local FrameToggle2 = Instance.new("Frame")
            local FrameToggle2Corner = Instance.new("UICorner")
            local FrameToggle3 = Instance.new("Frame")
            local FrameToggle3Corner = Instance.new("UICorner")
            local FrameToggleCircle = Instance.new("Frame")
            local FrameToggleCircleCorner = Instance.new("UICorner")

            Toggle.Name = "Toggle"
            Toggle.Parent = Tab
            spawn(function()
                while wait() do
                    Toggle.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Toggle.Position = UDim2.new(0.215625003, 0, 0.446271926, 0)
            Toggle.Size = UDim2.new(0, 363, 0, 42)
            Toggle.AutoButtonColor = false
            Toggle.Font = Enum.Font.SourceSans
            Toggle.Text = ""
            spawn(function()
                while wait() do
                    Toggle.TextColor3 = PresetTextColor
                end
            end)
            Toggle.TextSize = 14.000

            ToggleCorner.CornerRadius = UDim.new(0, 5)
            ToggleCorner.Name = "ToggleCorner"
            ToggleCorner.Parent = Toggle

            ToggleTitle.Name = "ToggleTitle"
            ToggleTitle.Parent = Toggle
            ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTitle.BackgroundTransparency = 1.000
            ToggleTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            ToggleTitle.Size = UDim2.new(0, 187, 0, 42)
            ToggleTitle.Font = Enum.Font.Gotham
            ToggleTitle.Text = text
            spawn(function()
                while wait() do
                    ToggleTitle.TextColor3 = PresetTextColor
                end
            end)
            ToggleTitle.TextSize = 14.000
            ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

            FrameToggle1.Name = "FrameToggle1"
            FrameToggle1.Parent = Toggle
            FrameToggle1.Position = UDim2.new(0.859504104, 0, 0.285714298, 0)
            FrameToggle1.Size = UDim2.new(0, 37, 0, 18)

            FrameToggle1Corner.Name = "FrameToggle1Corner"
            FrameToggle1Corner.Parent = FrameToggle1

            FrameToggle2.Name = "FrameToggle2"
            FrameToggle2.Parent = FrameToggle1
            FrameToggle2.Position = UDim2.new(0.0489999987, 0, 0.0930000022, 0)
            FrameToggle2.Size = UDim2.new(0, 33, 0, 14)
            FrameToggle2.BackgroundTransparency = 0
            FrameToggle2Corner.Name = "FrameToggle2Corner"
            FrameToggle2Corner.Parent = FrameToggle2

            FrameToggle3.Name = "FrameToggle3"
            FrameToggle3.Parent = FrameToggle1
            FrameToggle3.BackgroundTransparency = 1.000
            FrameToggle3.Size = UDim2.new(0, 37, 0, 18)
            FrameToggle3.BackgroundColor3 = PresetColor
            FrameToggle3.BackgroundTransparency = 1

            FrameToggle3Corner.Name = "FrameToggle3Corner"
            FrameToggle3Corner.Parent = FrameToggle3

            FrameToggleCircle.Name = "FrameToggleCircle"
            FrameToggleCircle.Parent = FrameToggle1
            spawn(function()
                while wait() do
                    FrameToggleCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)
                end
            end)
            FrameToggleCircle.Position = UDim2.new(0.127000004, 0, 0.222000003, 0)
            FrameToggleCircle.Size = UDim2.new(0, 10, 0, 10)

            FrameToggleCircleCorner.Name = "FrameToggleCircleCorner"
            FrameToggleCircleCorner.Parent = FrameToggleCircle
            
            coroutine.wrap(
                function()
                    while wait() do
                        FrameToggle3.BackgroundColor3 = PresetColor  
                    end
                end
            )()
            
            Toggle.MouseButton1Click:Connect(function()
                if toggled == false then
                    TweenService:Create(
                        FrameToggle3,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = PresetColor}
                    ):Play()
                    TweenService:Create(
                        FrameToggle1,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 1}
                    ):Play()
                    TweenService:Create(
                        FrameToggle2,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 1}
                    ):Play()
                    TweenService:Create(
                        FrameToggle3,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        FrameToggleCircle,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    FrameToggleCircle:TweenPosition(UDim2.new(0.587, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                else
                    TweenService:Create(
                        FrameToggle1,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        FrameToggle2,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        FrameToggle3,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 1}
                    ):Play()
                    TweenService:Create(
                        FrameToggleCircle,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    FrameToggleCircle:TweenPosition(UDim2.new(0.127000004, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                end
                toggled = not toggled
                pcall(callback, toggled)
            end)
            
            if default == true then
                TweenService:Create(
                    FrameToggle1,
                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1}
                ):Play()
                TweenService:Create(
                    FrameToggle2,
                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1}
                ):Play()
                TweenService:Create(
                    FrameToggle3,
                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0}
                ):Play()
                TweenService:Create(
                    FrameToggleCircle,
                    TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(255,255,255)}
                ):Play()
                toggled = not toggled
            end
            
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:Slider(text, min,max,start,callback)
            local dragging = false
            local Slider = Instance.new("TextButton")
            local SliderCorner = Instance.new("UICorner")
            local SliderTitle = Instance.new("TextLabel")
            local SliderValue = Instance.new("TextBox")
            local SlideFrame = Instance.new("Frame")
            local CurrentValueFrame = Instance.new("Frame")
            local SlideCircle = Instance.new("ImageButton")

            Slider.Name = "Slider"
            Slider.Parent = Tab
            spawn(function()
                while wait() do
                    Slider.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Slider.Position = UDim2.new(-0.48035714, 0, -0.570532918, 0)
            Slider.Size = UDim2.new(0, 363, 0, 60)
            Slider.AutoButtonColor = false
            Slider.Font = Enum.Font.SourceSans
            Slider.Text = ""
            spawn(function()
                while wait() do
                    Slider.TextColor3 = PresetTextColor
                end
            end)
            Slider.TextSize = 14.000

            SliderCorner.CornerRadius = UDim.new(0, 5)
            SliderCorner.Name = "SliderCorner"
            SliderCorner.Parent = Slider

            SliderTitle.Name = "SliderTitle"
            SliderTitle.Parent = Slider
            SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderTitle.BackgroundTransparency = 1.000
            SliderTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            SliderTitle.Size = UDim2.new(0, 187, 0, 42)
            SliderTitle.Font = Enum.Font.Gotham
            SliderTitle.Text = text
            spawn(function()
                while wait() do
                    SliderTitle.TextColor3 = PresetTextColor
                end
            end)
            SliderTitle.TextSize = 14.000
            SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

            SliderValue.Name = "SliderValue"
            SliderValue.Parent = Slider
            SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.BackgroundTransparency = 1.000
            SliderValue.Position = UDim2.new(0.0358126722, 0, 0, 0)
            SliderValue.Size = UDim2.new(0, 335, 0, 42)
            SliderValue.Font = Enum.Font.Gotham
            SliderValue.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
            spawn(function()
                while wait() do
                    SliderValue.TextColor3 = PresetTextColor
                end
            end)
            SliderValue.TextSize = 14.000
            SliderValue.TextXAlignment = Enum.TextXAlignment.Right
            SliderValue.BorderSizePixel = 0

            SlideFrame.Name = "SlideFrame"
            SlideFrame.Parent = Slider
            spawn(function()
                while wait() do
                    SlideFrame.BackgroundColor3 = themeColor[currentTheme]["SecondaryColor"]
                end
            end)
            SlideFrame.BorderSizePixel = 0
            SlideFrame.Position = UDim2.new(0.0342647657, 0, 0.686091602, 0)
            SlideFrame.Size = UDim2.new(0, 335, 0, 3)

            CurrentValueFrame.Name = "CurrentValueFrame"
            CurrentValueFrame.Parent = SlideFrame
            CurrentValueFrame.BackgroundColor3 = PresetColor
            CurrentValueFrame.BorderSizePixel = 0
            CurrentValueFrame.Size = UDim2.new((start or 0) / max, 0, 0, 3)

            SlideCircle.Name = "SlideCircle"
            SlideCircle.Parent = SlideFrame
            SlideCircle.BackgroundColor3 = PresetColor
            SlideCircle.BackgroundTransparency = 1.000
            SlideCircle.Position = UDim2.new((start or 0)/max, -6,-1.30499995, 0)
            SlideCircle.Size = UDim2.new(0, 11, 0, 11)
            SlideCircle.Image = "rbxassetid://3570695787"
            SlideCircle.ImageColor3 = PresetColor
            
            coroutine.wrap(
                function()
                    while wait() do
                        CurrentValueFrame.BackgroundColor3 = PresetColor
                        SlideCircle.ImageColor3 = PresetColor
                    end
                end
            )()

            local realValue;
            SliderValue.FocusLost:Connect(
                function(enterPressed)
                    if enterPressed then
                        realValue = tonumber(SliderValue.Text)
                        local posdf =
                            UDim2.new(
                                math.clamp(realValue/100, 0, 1),
                                -6,
                                -1.30499995,
                                0
                            )
                        local pos1df =
                            UDim2.new(
                                -- math.clamp((((realValue + 550) - SlideFrame.AbsoluteSize.X)/SlideFrame.AbsoluteSize.X)-0.5, 0, 1),
                                math.clamp(realValue/100, 0, 1),
                                0,
                                0,
                                3
                            )
                        CurrentValueFrame:TweenSize(pos1df, "Out", "Sine", 0.1, true)
                        SlideCircle:TweenPosition(posdf, "Out", "Sine", 0.1, true)
                        local success, err = pcall(callback, realValue)
                        if success then
                            return
                        else
                            return err
                        end
                    end
                end
            )
            
            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - SlideFrame.AbsolutePosition.X) / SlideFrame.AbsoluteSize.X, 0, 1),
                        -6,
                        -1.30499995,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - SlideFrame.AbsolutePosition.X) / SlideFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        3
                    )
                CurrentValueFrame:TweenSize(pos1, "Out", "Sine", 0.1, true)
                SlideCircle:TweenPosition(pos, "Out", "Sine", 0.1, true)
                local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                SliderValue.Text = tostring(value)
                pcall(callback, value or realValue)
            end


            SlideCircle.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                    end
                end
            )
            SlideCircle.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end
            )
            game:GetService("UserInputService").InputChanged:Connect(
            function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    move(input)
                end
            end
            )
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:Dropdown(text, list, callback)
            local droptog = false
            local framesize = 0
            local itemcount = 0
            
            local Dropdown = Instance.new("Frame")
            local DropdownCorner = Instance.new("UICorner")
            local DropdownBtn = Instance.new("TextButton")
            local DropdownTitle = Instance.new("TextLabel")
            local ArrowImg = Instance.new("ImageLabel")
            local DropItemHolder = Instance.new("ScrollingFrame")
            local DropLayout = Instance.new("UIListLayout")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Tab
            spawn(function()
                while wait() do
                    Dropdown.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Dropdown.ClipsDescendants = true
            Dropdown.Position = UDim2.new(-0.541071415, 0, -0.532915354, 0)
            Dropdown.Size = UDim2.new(0, 363, 0, 42)

            DropdownCorner.CornerRadius = UDim.new(0, 5)
            DropdownCorner.Name = "DropdownCorner"
            DropdownCorner.Parent = Dropdown

            DropdownBtn.Name = "DropdownBtn"
            DropdownBtn.Parent = Dropdown
            DropdownBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownBtn.BackgroundTransparency = 1.000
            DropdownBtn.Size = UDim2.new(0, 363, 0, 42)
            DropdownBtn.Font = Enum.Font.SourceSans
            DropdownBtn.Text = ""
            spawn(function()
                while wait() do
                    DropdownBtn.TextColor3 = PresetTextColor
                end
            end)
            DropdownBtn.TextSize = 14.000

            DropdownTitle.Name = "DropdownTitle"
            DropdownTitle.Parent = Dropdown
            DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTitle.BackgroundTransparency = 1.000
            DropdownTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            DropdownTitle.Size = UDim2.new(0, 187, 0, 42)
            DropdownTitle.Font = Enum.Font.Gotham
            DropdownTitle.Text = text
            spawn(function()
                while wait() do
                    DropdownTitle.TextColor3 = PresetTextColor
                end
            end)
            DropdownTitle.TextSize = 14.000
            DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

            ArrowImg.Name = "ArrowImg"
            ArrowImg.Parent = DropdownTitle
            ArrowImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ArrowImg.BackgroundTransparency = 1.000
            ArrowImg.Position = UDim2.new(1.65240645, 0, 0.190476194, 0)
            ArrowImg.Size = UDim2.new(0, 26, 0, 26)
            ArrowImg.Image = "http://www.roblox.com/asset/?id=6034818375"

            DropItemHolder.Name = "DropItemHolder"
            DropItemHolder.Parent = DropdownTitle
            DropItemHolder.Active = true
            DropItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropItemHolder.BackgroundTransparency = 1.000
            DropItemHolder.BorderSizePixel = 0
            DropItemHolder.Position = UDim2.new(-0.00400000019, 0, 1.04999995, 0)
            DropItemHolder.Size = UDim2.new(0, 342, 0, 0)
            DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropItemHolder.ScrollBarThickness = 3

            DropLayout.Name = "DropLayout"
            DropLayout.Parent = DropItemHolder
            DropLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            DropdownBtn.MouseButton1Click:Connect(function()
                if droptog == false then
                    Dropdown:TweenSize(UDim2.new(0, 363, 0, 55 + framesize), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TweenService:Create(
                        ArrowImg,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 270}
                    ):Play()
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                    droptog = not droptog
                else
                    Dropdown:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TweenService:Create(
                        ArrowImg,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                    droptog = not droptog
                end
            end)
            
            for i,v in next, list do
                itemcount = itemcount + 1
                if itemcount <= 3 then
                    framesize = framesize + 26
                    DropItemHolder.Size = UDim2.new(0, 342, 0, framesize)
                end
                local Item = Instance.new("TextButton")
                local ItemCorner = Instance.new("UICorner")

                Item.Name = "Item"
                Item.Parent = DropItemHolder
                spawn(function()
                    while wait() do
                        Item.BackgroundColor3 = BackgroundPresetColor
                    end
                end)
                Item.ClipsDescendants = true
                Item.Size = UDim2.new(0, 335, 0, 25)
                Item.AutoButtonColor = false
                Item.Font = Enum.Font.Gotham
                Item.Text = v
                spawn(function()
                    while wait() do
                        Item.TextColor3 = PresetTextColor
                    end
                end)
                Item.TextSize = 15.000

                ItemCorner.CornerRadius = UDim.new(0, 4)
                ItemCorner.Name = "ItemCorner"
                ItemCorner.Parent = Item
                
                Item.MouseButton1Click:Connect(function()
                    droptog = not droptog
                    DropdownTitle.Text = text .. " - " .. v
                    pcall(callback, v)
                    Dropdown:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TweenService:Create(
                        ArrowImg,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                end)
                
                DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropLayout.AbsoluteContentSize.Y)
            end
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
            local dropholder = {}
            function dropholder:Refresh()
                for i,v in next, list do
                    itemcount = itemcount + 1
                    if itemcount <= 3 then
                        framesize = framesize + 26
                        DropItemHolder.Size = UDim2.new(0, 342, 0, framesize)
                    end
                    local Item = Instance.new("TextButton")
                    local ItemCorner = Instance.new("UICorner")
    
                    Item.Name = "Item"
                    Item.Parent = DropItemHolder
                    spawn(function()
                        while wait() do
                            Item.BackgroundColor3 = BackgroundPresetColor
                        end
                    end)
                    Item.ClipsDescendants = true
                    Item.Size = UDim2.new(0, 335, 0, 25)
                    Item.AutoButtonColor = false
                    Item.Font = Enum.Font.Gotham
                    Item.Text = v
                    spawn(function()
                        while wait() do
                            Item.TextColor3 = PresetTextColor
                        end
                    end)
                    Item.TextSize = 15.000
    
                    ItemCorner.CornerRadius = UDim.new(0, 4)
                    ItemCorner.Name = "ItemCorner"
                    ItemCorner.Parent = Item
                    
                    Item.MouseButton1Click:Connect(function()
                        droptog = not droptog
                        DropdownTitle.Text = text .. " - " .. v
                        pcall(callback, v)
                        Dropdown:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                        TweenService:Create(
                            ArrowImg,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                        wait(.2)
                        Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                    end)
                    
                    DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropLayout.AbsoluteContentSize.Y)
                end
            end
            function dropholder:Add(n)
                table.insert(list, n)
                dropholder:Refresh()
            end
            function dropholder:Remove(n)
                if table.find(list,n) then
                    table.remove(list, table.find(list,n))
                    dropholder:Refresh()
                else
                    return false
                end
            end
            return dropholder
        end
        function tabcontent:ChangeTheme()
            local droptog = false
            local framesize = 0
            local itemcount = 0
            
            local Dropdown = Instance.new("Frame")
            local DropdownCorner = Instance.new("UICorner")
            local DropdownBtn = Instance.new("TextButton")
            local DropdownTitle = Instance.new("TextLabel")
            local ArrowImg = Instance.new("ImageLabel")
            local DropItemHolder = Instance.new("ScrollingFrame")
            local DropLayout = Instance.new("UIListLayout")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Tab
            spawn(function()
                while wait() do
                    Dropdown.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Dropdown.ClipsDescendants = true
            Dropdown.Position = UDim2.new(-0.541071415, 0, -0.532915354, 0)
            Dropdown.Size = UDim2.new(0, 363, 0, 42)

            DropdownCorner.CornerRadius = UDim.new(0, 5)
            DropdownCorner.Name = "DropdownCorner"
            DropdownCorner.Parent = Dropdown

            DropdownBtn.Name = "DropdownBtn"
            DropdownBtn.Parent = Dropdown
            DropdownBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownBtn.BackgroundTransparency = 1.000
            DropdownBtn.Size = UDim2.new(0, 363, 0, 42)
            DropdownBtn.Font = Enum.Font.SourceSans
            DropdownBtn.Text = ""
            spawn(function()
                while wait() do
                    DropdownBtn.TextColor3 = PresetTextColor
                end
            end)
            DropdownBtn.TextSize = 14.000

            DropdownTitle.Name = "DropdownTitle"
            DropdownTitle.Parent = Dropdown
            DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTitle.BackgroundTransparency = 1.000
            DropdownTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            DropdownTitle.Size = UDim2.new(0, 187, 0, 42)
            DropdownTitle.Font = Enum.Font.Gotham
            DropdownTitle.Text = "Change Theme"
            spawn(function()
                while wait() do
                    DropdownTitle.TextColor3 = PresetTextColor
                end
            end)
            DropdownTitle.TextSize = 14.000
            DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

            ArrowImg.Name = "ArrowImg"
            ArrowImg.Parent = DropdownTitle
            ArrowImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ArrowImg.BackgroundTransparency = 1.000
            ArrowImg.Position = UDim2.new(1.65240645, 0, 0.190476194, 0)
            ArrowImg.Size = UDim2.new(0, 26, 0, 26)
            ArrowImg.Image = "http://www.roblox.com/asset/?id=6034818375"

            DropItemHolder.Name = "DropItemHolder"
            DropItemHolder.Parent = DropdownTitle
            DropItemHolder.Active = true
            DropItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropItemHolder.BackgroundTransparency = 1.000
            DropItemHolder.BorderSizePixel = 0
            DropItemHolder.Position = UDim2.new(-0.00400000019, 0, 1.04999995, 0)
            DropItemHolder.Size = UDim2.new(0, 342, 0, 0)
            DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropItemHolder.ScrollBarThickness = 3

            DropLayout.Name = "DropLayout"
            DropLayout.Parent = DropItemHolder
            DropLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            DropdownBtn.MouseButton1Click:Connect(function()
                if droptog == false then
                    Dropdown:TweenSize(UDim2.new(0, 363, 0, 55 + framesize), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TweenService:Create(
                        ArrowImg,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 270}
                    ):Play()
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                    droptog = not droptog
                else
                    Dropdown:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TweenService:Create(
                        ArrowImg,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                    droptog = not droptog
                end
            end)
            
            for i,v in next, Themes do
                itemcount = itemcount + 1
                if itemcount <= 3 then
                    framesize = framesize + 26
                    DropItemHolder.Size = UDim2.new(0, 342, 0, framesize)
                end
                local Item = Instance.new("TextButton")
                local ItemCorner = Instance.new("UICorner")

                Item.Name = "Item"
                Item.Parent = DropItemHolder
                spawn(function()
                    while wait() do
                        Item.BackgroundColor3 = BackgroundPresetColor
                    end
                end)
                Item.ClipsDescendants = true
                Item.Size = UDim2.new(0, 335, 0, 25)
                Item.AutoButtonColor = false
                Item.Font = Enum.Font.Gotham
                Item.Text = v
                spawn(function()
                    while wait() do
                        Item.TextColor3 = PresetTextColor
                    end
                end)
                Item.TextSize = 15.000
                ItemCorner.CornerRadius = UDim.new(0, 4)
                ItemCorner.Name = "ItemCorner"
                ItemCorner.Parent = Item

                Item.MouseButton1Click:Connect(function()
                    droptog = not droptog
                    DropdownTitle.Text = text .. " - " .. v
                    print(v)
                    currentTheme = v
                    pcall(function()
                        Main.BackgroundColor3 = themeColor[v]["BackgroundColor"]
                        PresetColor = themeColor[v]["PresetColor"]
                        PresetTextColor = themeColor[v]["TextColor"]
                        BackgroundPresetColor = themeColor[v]["BackgroundPreset"]
                    end, v)
                    Dropdown:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    TweenService:Create(
                        ArrowImg,
                        TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                end)
                
                DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropLayout.AbsoluteContentSize.Y)
            end
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:Colorpicker(text, preset, callback)
            local ColorPickerToggled = false
            local OldToggleColor = Color3.fromRGB(0, 0, 0)
            local OldColor = Color3.fromRGB(0, 0, 0)
            local OldColorSelectionPosition = nil
            local OldHueSelectionPosition = nil
            local ColorH, ColorS, ColorV = 1, 1, 1
            local RainbowColorPicker = false
            local ColorPickerInput = nil
            local ColorInput = nil
            local HueInput = nil

            local Colorpicker = Instance.new("Frame")
            local ColorpickerCorner = Instance.new("UICorner")
            local ColorpickerTitle = Instance.new("TextLabel")
            local BoxColor = Instance.new("Frame")
            local BoxColorCorner = Instance.new("UICorner")
            local ConfirmBtn = Instance.new("TextButton")
            local ConfirmBtnCorner = Instance.new("UICorner")
            local ConfirmBtnTitle = Instance.new("TextLabel")
            local ColorpickerBtn = Instance.new("TextButton")
            local RainbowToggle = Instance.new("TextButton")
            local RainbowToggleCorner = Instance.new("UICorner")
            local RainbowToggleTitle = Instance.new("TextLabel")
            local FrameRainbowToggle1 = Instance.new("Frame")
            local FrameRainbowToggle1Corner = Instance.new("UICorner")
            local FrameRainbowToggle2 = Instance.new("Frame")
            local FrameRainbowToggle2_2 = Instance.new("UICorner")
            local FrameRainbowToggle3 = Instance.new("Frame")
            local FrameToggle3 = Instance.new("UICorner")
            local FrameRainbowToggleCircle = Instance.new("Frame")
            local FrameRainbowToggleCircleCorner = Instance.new("UICorner")
            local Color = Instance.new("ImageLabel")
            local ColorCorner = Instance.new("UICorner")
            local ColorSelection = Instance.new("ImageLabel")
            local Hue = Instance.new("ImageLabel")
            local HueCorner = Instance.new("UICorner")
            local HueGradient = Instance.new("UIGradient")
            local HueSelection = Instance.new("ImageLabel")


            Colorpicker.Name = "Colorpicker"
            Colorpicker.Parent = Tab
            spawn(function()
                while wait() do
                    Colorpicker.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Colorpicker.ClipsDescendants = true
            Colorpicker.Position = UDim2.new(-0.541071415, 0, -0.532915354, 0)
            Colorpicker.Size = UDim2.new(0, 363, 0, 42)

            ColorpickerCorner.CornerRadius = UDim.new(0, 5)
            ColorpickerCorner.Name = "ColorpickerCorner"
            ColorpickerCorner.Parent = Colorpicker

            ColorpickerTitle.Name = "ColorpickerTitle"
            ColorpickerTitle.Parent = Colorpicker
            ColorpickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorpickerTitle.BackgroundTransparency = 1.000
            ColorpickerTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            ColorpickerTitle.Size = UDim2.new(0, 187, 0, 42)
            ColorpickerTitle.Font = Enum.Font.Gotham
            ColorpickerTitle.Text = text
            spawn(function()
                while wait() do
                    ColorpickerTitle.TextColor3 = PresetTextColor
                end
            end)
            ColorpickerTitle.TextSize = 14.000
            ColorpickerTitle.TextXAlignment = Enum.TextXAlignment.Left

            BoxColor.Name = "BoxColor"
            BoxColor.Parent = ColorpickerTitle
            BoxColor.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
            BoxColor.Position = UDim2.new(1.60427809, 0, 0.214285716, 0)
            BoxColor.Size = UDim2.new(0, 41, 0, 23)

            BoxColorCorner.CornerRadius = UDim.new(0, 5)
            BoxColorCorner.Name = "BoxColorCorner"
            BoxColorCorner.Parent = BoxColor

            ConfirmBtn.Name = "ConfirmBtn"
            ConfirmBtn.Parent = ColorpickerTitle
            spawn(function()
                while wait() do
                    ConfirmBtn.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            ConfirmBtn.Position = UDim2.new(1.25814295, 0, 1.09037197, 0)
            ConfirmBtn.Size = UDim2.new(0, 105, 0, 32)
            ConfirmBtn.AutoButtonColor = false
            ConfirmBtn.Font = Enum.Font.SourceSans
            ConfirmBtn.Text = ""
            spawn(function()
                while wait() do
                    ConfirmBtn.TextColor3 = PresetTextColor
                end
            end)
            ConfirmBtn.TextSize = 14.000

            ConfirmBtnCorner.CornerRadius = UDim.new(0, 5)
            ConfirmBtnCorner.Name = "ConfirmBtnCorner"
            ConfirmBtnCorner.Parent = ConfirmBtn

            ConfirmBtnTitle.Name = "ConfirmBtnTitle"
            ConfirmBtnTitle.Parent = ConfirmBtn
            ConfirmBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ConfirmBtnTitle.BackgroundTransparency = 1.000
            ConfirmBtnTitle.Size = UDim2.new(0, 33, 0, 32)
            ConfirmBtnTitle.Font = Enum.Font.Gotham
            ConfirmBtnTitle.Text = "Confirm"
            spawn(function()
                while wait() do
                    ConfirmBtnTitle.TextColor3 = PresetTextColor
                end
            end)
            ConfirmBtnTitle.TextSize = 14.000
            ConfirmBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
            ColorpickerBtn.Name = "ColorpickerBtn"
            ColorpickerBtn.Parent = ColorpickerTitle
            ColorpickerBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorpickerBtn.BackgroundTransparency = 1.000
            ColorpickerBtn.Size = UDim2.new(0, 363, 0, 42)
            ColorpickerBtn.Font = Enum.Font.SourceSans
            ColorpickerBtn.Text = ""
            ColorpickerBtn.TextColor3 = PresetTextColor
            ColorpickerBtn.TextSize = 14.000

            RainbowToggle.Name = "RainbowToggle"
            RainbowToggle.Parent = ColorpickerTitle
            spawn(function()
                while wait() do
                    RainbowToggle.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            RainbowToggle.Position = UDim2.new(1.26349044, 0, 2.12684202, 0)
            RainbowToggle.Size = UDim2.new(0, 104, 0, 32)
            RainbowToggle.AutoButtonColor = false
            RainbowToggle.Font = Enum.Font.SourceSans
            RainbowToggle.Text = ""
            spawn(function()
                while wait() do
                    RainbowToggle.TextColor3 = PresetTextColor
                end
            end)
            RainbowToggle.TextSize = 14.000

            RainbowToggleCorner.CornerRadius = UDim.new(0, 5)
            RainbowToggleCorner.Name = "RainbowToggleCorner"
            RainbowToggleCorner.Parent = RainbowToggle

            RainbowToggleTitle.Name = "RainbowToggleTitle"
            RainbowToggleTitle.Parent = RainbowToggle
            RainbowToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            RainbowToggleTitle.BackgroundTransparency = 1.000
            RainbowToggleTitle.Size = UDim2.new(0, 33, 0, 32)
            RainbowToggleTitle.Font = Enum.Font.Gotham
            RainbowToggleTitle.Text = "Rainbow"
            spawn(function()
                while wait() do
                    RainbowToggleTitle.TextColor3 = PresetTextColor
                end
            end)
            RainbowToggleTitle.TextSize = 14.000
            RainbowToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

            FrameRainbowToggle1.Name = "FrameRainbowToggle1"
            FrameRainbowToggle1.Parent = RainbowToggle
            spawn(function()
                while wait() do
                    FrameRainbowToggle1.BackgroundColor3 = themeColor[currentTheme]["SecondaryColor"]
                end
            end)
            FrameRainbowToggle1.Position = UDim2.new(0.649999976, 0, 0.186000004, 0)
            FrameRainbowToggle1.Size = UDim2.new(0, 37, 0, 18)
            FrameRainbowToggle1.BackgroundTransparency = 0

            FrameRainbowToggle1Corner.Name = "FrameRainbowToggle1Corner"
            FrameRainbowToggle1Corner.Parent = FrameRainbowToggle1

            FrameRainbowToggle2.Name = "FrameRainbowToggle2"
            FrameRainbowToggle2.Parent = FrameRainbowToggle1
            FrameRainbowToggle2.BackgroundTransparency = 0
            spawn(function()
                while wait() do
                    FrameRainbowToggle2.BackgroundColor3 = themeColor[currentTheme]["SecondaryColor"]
                end
            end)
            FrameRainbowToggle2.Position = UDim2.new(0.0590000004, 0, 0.112999998, 0)
            FrameRainbowToggle2.Size = UDim2.new(0, 33, 0, 14)

            FrameRainbowToggle2_2.Name = "FrameRainbowToggle2"
            FrameRainbowToggle2_2.Parent = FrameRainbowToggle2

            FrameRainbowToggle3.Name = "FrameRainbowToggle3"
            FrameRainbowToggle3.Parent = FrameRainbowToggle1
            spawn(function()
                while wait() do
                    FrameRainbowToggle3.BackgroundColor3 = PresetColor
                end
            end)
            FrameRainbowToggle3.BackgroundTransparency = 1.000
            FrameRainbowToggle3.Size = UDim2.new(0, 37, 0, 18)

            FrameToggle3.Name = "FrameToggle3"
            FrameToggle3.Parent = FrameRainbowToggle3
            spawn(function()
                while wait() do
                    FrameRainbowToggle3.BackgroundColor3 = PresetColor
                end
            end)

            FrameRainbowToggleCircle.Name = "FrameRainbowToggleCircle"
            FrameRainbowToggleCircle.Parent = FrameRainbowToggle1
            FrameRainbowToggleCircle.Position = UDim2.new(0.127000004, 0, 0.222000003, 0)
            FrameRainbowToggleCircle.Size = UDim2.new(0, 10, 0, 10)
            spawn(function()
                while wait() do
                    FrameRainbowToggleCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)
                end
            end)
            FrameRainbowToggleCircleCorner.Name = "FrameRainbowToggleCircleCorner"
            FrameRainbowToggleCircleCorner.Parent = FrameRainbowToggleCircle

            Color.Name = "Color"
            Color.Parent = ColorpickerTitle
            Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
            Color.Position = UDim2.new(0, 0, 0, 42)
            Color.Size = UDim2.new(0, 194, 0, 80)
            Color.ZIndex = 10
            Color.Image = "rbxassetid://4155801252"

            ColorCorner.CornerRadius = UDim.new(0, 3)
            ColorCorner.Name = "ColorCorner"
            ColorCorner.Parent = Color

            ColorSelection.Name = "ColorSelection"
            ColorSelection.Parent = Color
            ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorSelection.BackgroundTransparency = 1.000
            ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
            ColorSelection.Size = UDim2.new(0, 18, 0, 18)
            ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
            ColorSelection.ScaleType = Enum.ScaleType.Fit
            ColorSelection.Visible = false

            Hue.Name = "Hue"
            Hue.Parent = ColorpickerTitle
            Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Hue.Position = UDim2.new(0, 202, 0, 42)
            Hue.Size = UDim2.new(0, 25, 0, 80)

            HueCorner.CornerRadius = UDim.new(0, 3)
            HueCorner.Name = "HueCorner"
            HueCorner.Parent = Hue

            HueGradient.Color = ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
                ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
                ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
                ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
                ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
            }            HueGradient.Rotation = 270
            HueGradient.Name = "HueGradient"
            HueGradient.Parent = Hue

            HueSelection.Name = "HueSelection"
            HueSelection.Parent = Hue
            HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            HueSelection.BackgroundTransparency = 1.000
            HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
            HueSelection.Size = UDim2.new(0, 18, 0, 18)
            HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
            HueSelection.Visible = false
            
            coroutine.wrap(
                function()
                    while wait() do
                        FrameRainbowToggle3.BackgroundColor3 = PresetColor  
                    end
                end
            )()
            
            ColorpickerBtn.MouseButton1Click:Connect(function()
                if ColorPickerToggled == false then
                    ColorSelection.Visible = true
                    HueSelection.Visible = true
                    Colorpicker:TweenSize(UDim2.new(0, 363, 0, 132), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)

                else
                    ColorSelection.Visible = false
                    HueSelection.Visible = false
                    Colorpicker:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                end
                ColorPickerToggled = not ColorPickerToggled
            end)


            local function UpdateColorPicker(nope)
                BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
                Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

                pcall(callback, BoxColor.BackgroundColor3)
            end

            ColorH =
                1 -
                (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                    Hue.AbsoluteSize.Y)
            ColorS =
                (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                    Color.AbsoluteSize.X)
            ColorV =
                1 -
                (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                    Color.AbsoluteSize.Y)

            BoxColor.BackgroundColor3 = preset
            Color.BackgroundColor3 = preset
            pcall(callback, BoxColor.BackgroundColor3)

            Color.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if ColorInput then
                            ColorInput:Disconnect()
                        end

                        ColorInput =
                            RunService.RenderStepped:Connect(
                                function()
                                local ColorX =
                                    (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                        Color.AbsoluteSize.X)
                                local ColorY =
                                    (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                        Color.AbsoluteSize.Y)

                                ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                                ColorS = ColorX
                                ColorV = 1 - ColorY

                                UpdateColorPicker(true)
                            end
                            )
                    end
                end
            )

            Color.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
                    end
                end
            )

            Hue.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if HueInput then
                            HueInput:Disconnect()
                        end

                        HueInput =
                            RunService.RenderStepped:Connect(
                                function()
                                local HueY =
                                    (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                        Hue.AbsoluteSize.Y)

                                HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
                                ColorH = 1 - HueY

                                UpdateColorPicker(true)
                            end
                            )
                    end
                end
            )

            Hue.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if HueInput then
                            HueInput:Disconnect()
                        end
                    end
                end
            )

            RainbowToggle.MouseButton1Down:Connect(
                function()
                    RainbowColorPicker = not RainbowColorPicker

                    if ColorInput then
                        ColorInput:Disconnect()
                    end

                    if HueInput then
                        HueInput:Disconnect()
                    end

                    if RainbowColorPicker then
                        TweenService:Create(
                            FrameRainbowToggle1,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        ):Play()
                        TweenService:Create(
                            FrameRainbowToggle2,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        ):Play()
                        TweenService:Create(
                            FrameRainbowToggle3,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0}
                        ):Play()
                        TweenService:Create(
                            FrameRainbowToggleCircle,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(255,255,255)}
                        ):Play()
                        FrameRainbowToggleCircle:TweenPosition(UDim2.new(0.587, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)

                        OldToggleColor = BoxColor.BackgroundColor3
                        OldColor = Color.BackgroundColor3
                        OldColorSelectionPosition = ColorSelection.Position
                        OldHueSelectionPosition = HueSelection.Position

                        while RainbowColorPicker do
                            BoxColor.BackgroundColor3 = Color3.fromHSV(lib.RainbowColorValue, 1, 1)
                            Color.BackgroundColor3 = Color3.fromHSV(lib.RainbowColorValue, 1, 1)

                            ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                            HueSelection.Position = UDim2.new(0.48, 0, 0, lib.HueSelectionPosition)

                            pcall(callback, BoxColor.BackgroundColor3)
                            wait()
                        end
                    elseif not RainbowColorPicker then
                        TweenService:Create(
                            FrameRainbowToggle1,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0}
                        ):Play()
                        TweenService:Create(
                            FrameRainbowToggle2,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        ):Play()
                        TweenService:Create(
                            FrameRainbowToggle3,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        ):Play()
                        TweenService:Create(
                            FrameRainbowToggleCircle,
                            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(255,255,255)}
                        ):Play()
                        FrameRainbowToggleCircle:TweenPosition(UDim2.new(0.127000004, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)

                        BoxColor.BackgroundColor3 = OldToggleColor
                        Color.BackgroundColor3 = OldColor

                        ColorSelection.Position = OldColorSelectionPosition
                        HueSelection.Position = OldHueSelectionPosition

                        pcall(callback, BoxColor.BackgroundColor3)
                    end
                end
            )

            ConfirmBtn.MouseButton1Click:Connect(
                function()
                    ColorSelection.Visible = false
                    HueSelection.Visible = false
                    Colorpicker:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
                    wait(.2)
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
                end
            )
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:Label(text, textscaled)
            local Label = Instance.new("TextButton")
            local LabelCorner = Instance.new("UICorner")
            local LabelTitle = Instance.new("TextLabel")

            Label.Name = "Button"
            Label.Parent = Tab
            spawn(function()
                while wait() do
                    Label.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Label.Size = UDim2.new(0, 363, 0, 42)
            Label.AutoButtonColor = false
            Label.Font = Enum.Font.SourceSans
            Label.Text = ""
            spawn(function()
                while wait() do
                    Label.TextColor3 = PresetTextColor
                end
            end)
            Label.TextSize = 14.000
            Label.TextScaled = textscaled

            LabelCorner.CornerRadius = UDim.new(0, 5)
            LabelCorner.Name = "ButtonCorner"
            LabelCorner.Parent = Label

            LabelTitle.Name = "ButtonTitle"
            LabelTitle.Parent = Label
            LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelTitle.BackgroundTransparency = 1.000
            LabelTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            LabelTitle.Size = UDim2.new(0, 187, 0, 42)
            LabelTitle.Font = Enum.Font.Gotham
            LabelTitle.Text = text
            LabelTitle.TextScaled = textscaled
            spawn(function()
                while wait() do
                    LabelTitle.TextColor3 = PresetTextColor
                end
            end)
            LabelTitle.TextSize = 14.000
            LabelTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:Textbox(text, disapper, callback)
            local Textbox = Instance.new("Frame")
            local TextboxCorner = Instance.new("UICorner")
            local TextboxTitle = Instance.new("TextLabel")
            local TextboxFrame = Instance.new("Frame")
            local TextboxFrameCorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")

            Textbox.Name = "Textbox"
            Textbox.Parent = Tab
            spawn(function()
                while wait() do
                    Textbox.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Textbox.ClipsDescendants = true
            Textbox.Position = UDim2.new(-0.541071415, 0, -0.532915354, 0)
            Textbox.Size = UDim2.new(0, 363, 0, 42)

            TextboxCorner.CornerRadius = UDim.new(0, 5)
            TextboxCorner.Name = "TextboxCorner"
            TextboxCorner.Parent = Textbox

            TextboxTitle.Name = "TextboxTitle"
            TextboxTitle.Parent = Textbox
            TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxTitle.BackgroundTransparency = 1.000
            TextboxTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            TextboxTitle.Size = UDim2.new(0, 187, 0, 42)
            TextboxTitle.Font = Enum.Font.Gotham
            TextboxTitle.Text = text
            spawn(function()
                while wait() do
                    TextboxTitle.TextColor3 = PresetTextColor
                end
            end)
            TextboxTitle.TextSize = 14.000
            TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

            TextboxFrame.Name = "TextboxFrame"
            TextboxFrame.Parent = TextboxTitle
            TextboxFrame.BackgroundColor3 = Color3.fromRGB(45,45,45)
            TextboxFrame.Position = UDim2.new(1, -50, 0, 10)
            TextboxFrame.Size = UDim2.new(0, 200, 0, 23)

            TextboxFrameCorner.CornerRadius = UDim.new(0, 5)
            TextboxFrameCorner.Name = "TextboxFrameCorner"
            TextboxFrameCorner.Parent = TextboxFrame

            TextBox.Parent = TextboxFrame
            TextBox.BackgroundTransparency = 1.000
            TextBox.Size = UDim2.new(0, 200, 0, 23)
            TextBox.Font = Enum.Font.GothamBlack
            TextBox.Text = ""
            spawn(function()
                while wait() do
                    TextboxFrame.BackgroundColor3 = themeColor[currentTheme]["SecondaryColor"]
                    TextBox.TextColor3 = themeColor[currentTheme]["TextBoxColor"]
                end
            end)
            TextBox.TextScaled = true
            TextBox.ClearTextOnFocus = false
            
            TextBox.FocusLost:Connect(
                function(ep)
                    if ep then
                        if #TextBox.Text > 0 then
                            pcall(callback, TextBox.Text)
                            if disapper then
                                TextBox.Text = ""
                            end
                        end
                    end
                end
            )
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
        end
        function tabcontent:Bind(text, keypreset, callback)
            local binding = false
            local Key = keypreset.Name
            local Bind = Instance.new("TextButton")
            local BindCorner = Instance.new("UICorner")
            local BindTitle = Instance.new("TextLabel")
            local BindText = Instance.new("TextLabel")

            Bind.Name = "Bind"
            Bind.Parent = Tab
            spawn(function()
                while wait() do
                    Bind.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Bind.Size = UDim2.new(0, 363, 0, 42)
            Bind.AutoButtonColor = false
            Bind.Font = Enum.Font.SourceSans
            Bind.Text = ""
            spawn(function()
                while wait() do
                    Bind.TextColor3 = PresetTextColor
                end
            end)
            Bind.TextSize = 14.000

            BindCorner.CornerRadius = UDim.new(0, 5)
            BindCorner.Name = "BindCorner"
            BindCorner.Parent = Bind

            BindTitle.Name = "BindTitle"
            BindTitle.Parent = Bind
            BindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BindTitle.BackgroundTransparency = 1.000
            BindTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            BindTitle.Size = UDim2.new(0, 187, 0, 42)
            BindTitle.Font = Enum.Font.Gotham
            BindTitle.Text = text
            spawn(function()
                while wait() do
                    BindTitle.TextColor3 = PresetTextColor
                end
            end)
            BindTitle.TextSize = 14.000
            BindTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            BindText.Name = "BindText"
            BindText.Parent = Bind
            BindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BindText.BackgroundTransparency = 1.000
            BindText.Position = UDim2.new(0.0358126722, 0, 0, 0)
            BindText.Size = UDim2.new(0, 337, 0, 42)
            BindText.Font = Enum.Font.Gotham
            BindText.Text = Key
            spawn(function()
                while wait() do
                    BindText.TextColor3 = PresetTextColor
                end
            end)
            BindText.TextSize = 14.000
            BindText.TextXAlignment = Enum.TextXAlignment.Right
            
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
            
            Bind.MouseButton1Click:Connect(function()
                BindText.Text = "..."
                binding = true
                local inputwait = game:GetService("UserInputService").InputBegan:wait()
                if inputwait.KeyCode.Name ~= "Unknown" then
                    BindText.Text = inputwait .KeyCode.Name
                    Key = inputwait.KeyCode.Name
                    binding = false
                else
                    binding = false
                end
            end)
            
            game:GetService("UserInputService").InputBegan:connect(
            function(current, pressed)
                if not pressed then
                    if current.KeyCode.Name == Key and binding == false then
                        pcall(callback)
                    end
                end
            end
            )
        end
        
        function tabcontent:UiKeybind(keypreset, callback)
            local binding = false
            local Key = keypreset.Name
            local Bind = Instance.new("TextButton")
            local BindCorner = Instance.new("UICorner")
            local BindTitle = Instance.new("TextLabel")
            local BindText = Instance.new("TextLabel")

            Bind.Name = "Bind"
            Bind.Parent = Tab
            spawn(function()
                while wait() do
                    Bind.BackgroundColor3 = BackgroundPresetColor
                end
            end)
            Bind.Size = UDim2.new(0, 363, 0, 42)
            Bind.AutoButtonColor = false
            Bind.Font = Enum.Font.SourceSans
            Bind.Text = ""
            spawn(function()
                while wait() do
                    Bind.TextColor3 = PresetTextColor
                end
            end)
            Bind.TextSize = 14.000

            BindCorner.CornerRadius = UDim.new(0, 5)
            BindCorner.Name = "BindCorner"
            BindCorner.Parent = Bind

            BindTitle.Name = "BindTitle"
            BindTitle.Parent = Bind
            BindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BindTitle.BackgroundTransparency = 1.000
            BindTitle.Position = UDim2.new(0.0358126722, 0, 0, 0)
            BindTitle.Size = UDim2.new(0, 187, 0, 42)
            BindTitle.Font = Enum.Font.Gotham
            BindTitle.Text = "Change Ui Keybind"
            spawn(function()
                while wait() do
                    BindTitle.TextColor3 = PresetTextColor
                end
            end)
            BindTitle.TextSize = 14.000
            BindTitle.TextXAlignment = Enum.TextXAlignment.Left

            BindText.Name = "BindText"
            BindText.Parent = Bind
            BindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BindText.BackgroundTransparency = 1.000
            BindText.Position = UDim2.new(0.0358126722, 0, 0, 0)
            BindText.Size = UDim2.new(0, 337, 0, 42)
            BindText.Font = Enum.Font.Gotham
            BindText.Text = Key
            spawn(function()
                while wait() do
                    BindText.TextColor3 = PresetTextColor
                end
            end)
            BindText.TextSize = 14.000
            BindText.TextXAlignment = Enum.TextXAlignment.Right
            
            Tab.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
            
            Bind.MouseButton1Click:Connect(function()
                BindText.Text = "..."
                binding = true
                local inputwait = game:GetService("UserInputService").InputBegan:Wait()
                if inputwait.KeyCode.Name ~= "Unknown" then
                    BindText.Text = inputwait.KeyCode.Name
                    Key = inputwait.KeyCode
                    pcall(callback, Key)
                    binding = false
                else
                    binding = false
                end
            end)
        end
        function tabcontent:Console(console_options)
            local console_data = {}

            console_options = typeof(console_options) == "table" and console_options or {["readonly"] = true,["full"] = false,}
            console_options = {
                ["y"] = tonumber(console_options.y) or 200,
                ["source"] = console_options.source or "Logs",
                ["readonly"] = ((console_options.readonly) == true),
                ["full"] = ((console_options.full) == true),
            }

            local console = Prefabs:FindFirstChild("Console"):Clone()

            console.Parent = Tab
            console.ZIndex = console.ZIndex + (windows * 10)
            console.Size = UDim2.new(1, 0, console_options.full and 1 or 0, console_options.y)
            spawn(function()
                while wait() do
                    console.ImageColor3 = BackgroundPresetColor
                end
            end)

            local sf = console:GetChildren()[1]
            local Source = sf:FindFirstChild("Source")
            local Lines = sf:FindFirstChild("Lines")
            Source.ZIndex = Source.ZIndex + (windows * 10)
            Lines.ZIndex = Lines.ZIndex + (windows * 10)

            Source.TextEditable = not console_options.readonly

            do -- Syntax Zindex
                for i,v in next, Source:GetChildren() do
                    v.ZIndex = v.ZIndex + (windows * 10) + 1
                end
            end
            Source.Comments.ZIndex = Source.Comments.ZIndex + 1

            do -- Highlighting (thanks to whoever made this)
                local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
                local global_env = {"getrawmetatable", "newcclosure", "islclosure", "setclipboard", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16", "load", "fire", "Fire"}

                local Highlight = function(string, keywords)
                    local K = {}
                    local S = string
                    local Token =
                    {
                        ["="] = true,
                        ["."] = true,
                        [","] = true,
                        ["("] = true,
                        [")"] = true,
                        ["["] = true,
                        ["]"] = true,
                        ["{"] = true,
                        ["}"] = true,
                        [":"] = true,
                        ["*"] = true,
                        ["/"] = true,
                        ["+"] = true,
                        ["-"] = true,
                        ["%"] = true,
                        [";"] = true,
                        ["~"] = true
                    }
                    for i, v in pairs(keywords) do
                        K[v] = true
                    end
                    S = S:gsub(".", function(c)
                        if Token[c] ~= nil then
                            return "\32"
                        else
                            return c
                        end
                    end)
                    S = S:gsub("%S+", function(c)
                        if K[c] ~= nil then
                            return c
                        else
                            return (" "):rep(#c)
                        end
                    end)

                    return S
                end

                local hTokens = function(string)
                    local Token =
                    {
                        ["="] = true,
                        ["."] = true,
                        [","] = true,
                        ["("] = true,
                        [")"] = true,
                        ["["] = true,
                        ["]"] = true,
                        ["{"] = true,
                        ["}"] = true,
                        [":"] = true,
                        ["*"] = true,
                        ["/"] = true,
                        ["+"] = true,
                        ["-"] = true,
                        ["%"] = true,
                        [";"] = true,
                        ["~"] = true
                    }
                    local A = ""
                    string:gsub(".", function(c)
                        if Token[c] ~= nil then
                            A = A .. c
                        elseif c == "\n" then
                            A = A .. "\n"
                        elseif c == "\t" then
                            A = A .. "\t"
                        else
                            A = A .. "\32"
                        end
                    end)

                    return A
                end

                local strings = function(string)
                    local highlight = ""
                    local quote = false
                    string:gsub(".", function(c)
                        if quote == false and c == "\34" then
                            quote = true
                        elseif quote == true and c == "\34" then
                            quote = false
                        end
                        if quote == false and c == "\34" then
                            highlight = highlight .. "\34"
                        elseif c == "\n" then
                            highlight = highlight .. "\n"
                        elseif c == "\t" then
                            highlight = highlight .. "\t"
                        elseif quote == true then
                            highlight = highlight .. c
                        elseif quote == false then
                            highlight = highlight .. "\32"
                        end
                    end)

                    return highlight
                end

                local info = function(string)
                    local highlight = ""
                    local quote = false
                    string:gsub(".", function(c)
                        if quote == false and c == "[" then
                            quote = true
                        elseif quote == true and c == "]" then
                            quote = false
                        end
                        if quote == false and c == "\"]" then
                            highlight = highlight .. "\"]"
                        elseif c == "\n" then
                            highlight = highlight .. "\n"
                        elseif c == "\t" then
                            highlight = highlight .. "\t"
                        elseif quote == true then
                            highlight = highlight .. c
                        elseif quote == false then
                            highlight = highlight .. "\32"
                        end
                    end)

                    return highlight
                end

                local numbers = function(string)
                    local A = ""
                    string:gsub(".", function(c)
                        if tonumber(c) ~= nil then
                            A = A .. c
                        elseif c == "\n" then
                            A = A .. "\n"
                        elseif c == "\t" then
                            A = A .. "\t"
                        else
                            A = A .. "\32"
                        end
                    end)

                    return A
                end

                local highlight_lua = function(type)
                    if type == "Text" then
                        Source.Text = Source.Text:gsub("\13", "")
                        Source.Text = Source.Text:gsub("\t", "      ")
                        local s = Source.Text

                        Source.Keywords.Text = Highlight(s, lua_keywords)
                        Source.Globals.Text = Highlight(s, global_env)
                        Source.RemoteHighlight.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
                        Source.Tokens.Text = hTokens(s)
                        Source.Numbers.Text = numbers(s)
                        Source.Strings.Text = strings(s)

                        local lin = 1
                        s:gsub("\n", function()
                            lin = lin + 1
                        end)

                        Lines.Text = ""
                        for i = 1, lin do
                            Lines.Text = Lines.Text .. i .. "\n"
                        end

                        sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
                    end

                    if type == "Text" then
                        Source.Text = Source.Text:gsub("\13", "")
                        Source.Text = Source.Text:gsub("\t", "      ")
                        local s = Source.Text

                        Source.Info.Text = info(s)

                        local lin = 1
                        s:gsub("\n", function()
                            lin = lin + 1
                        end)

                        sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
                    end
                end

                if console_options.source == "Lua" then
                    highlight_lua("Text")
                    Source.Changed:Connect(highlight_lua)
                elseif console_options.source == "Logs" then
                    Lines.Visible = false

                    highlight_lua("Text")
                    Source.Changed:Connect(highlight_lua)
                end

                function console_data:Set(code)
                    Source.Text = tostring(code)
                end

                function console_data:Get()
                    return Source.Text
                end

                function console_data:Log(msg)
                    Source.Text = Source.Text .. "[*] " .. tostring(msg) .. "\n"
                end

            end

            return console_data, console
        end
        return tabcontent
    end
    return tabhold
end
print("Version: 1.2.9")
return lib
