--!strict
--!optimize 2

--Constants
local UDim2_one = UDim2.new(1,0,1,0)
local UDim2_half = UDim2.new(0.5,0,0.5,0)
local UDim2_point_one = UDim2.new(0.1,0,0.1,0)
local Vector2_Half = Vector2.new(0.5,0.5)
local Vector2_One_Half = Vector2.new(1,0.5)
local Vector2_Zero_Half = Vector2.new(0,0.5)
local Vector2_Half_One = Vector2.new(0.5,1)
local Vector2_Half_Zero = Vector2.new(0.5,0)


local ScrollbarSize = 12
--initialize

local Toolbar = plugin:CreateToolbar("Bind")
local Open_UI_Button = Toolbar:CreateButton("Bind_Weld_Plugin_YS","Open Weld UI","rbxassetid://99241917663573","Open UI")
Open_UI_Button.ClickableWhenViewportHidden=true
local Widget = plugin:CreateDockWidgetPluginGui("Bind_Weld_Plugin_Widget_YS",DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float,false,false,200,200,50,50))
Widget.Title = "Bind (Welding Menu)"
Widget.Name = "Bind (Welding Menu)"
--numeric for loop benchmark and select and constants


--setup


local Main = Instance.new("Frame") do
	Main.AnchorPoint = Vector2_Half
	Main.BackgroundColor3 = Color3.new(0.196,0.196,0.196)
	Main.BorderColor3 = Color3.new(0,0,0)
	Main.BorderSizePixel = 0
	Main.Name = "Main"
	Main.Position = UDim2_half
	Main.Size = UDim2_one
end
--[Children] {
local Weld = Instance.new("TextButton") do
	Weld.AnchorPoint = Vector2_Half
	Weld.BackgroundColor3 = Color3.new(1,0,0)
	Weld.BorderColor3 = Color3.new(0,0,0)
	Weld.BorderSizePixel = 0
	Weld.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	Weld.Name = "Weld"
	Weld.Position = UDim2.new(0.5,0,0.85,0)
	Weld.Size = UDim2.new(0.2,0,0.083,0)
	Weld.Text = "Weld"
	Weld.TextColor3 = Color3.new(0,0,0)
	Weld.TextScaled = true
	Weld.TextSize = 14
	Weld.TextWrapped = true
	Weld.ZIndex = 2
	Weld.Parent = Main
end
--[Children] {
local UICorner = Instance.new("UICorner") do
	UICorner.CornerRadius = UDim.new(0,5)
	UICorner.Parent = Weld
end
local UIStroke = Instance.new("UIStroke") do
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.new(0.275,0,0)
	UIStroke.Parent = Weld
end
--}
local Base = Instance.new("ScrollingFrame") do
	Base.BackgroundColor3 = Color3.new(0.451,0.451,0.451)
	Base.BorderColor3 = Color3.new(0,0,0)
	Base.BorderSizePixel = 0
	Base.Name = "Base"
	Base.Position = UDim2_point_one
	Base.Selectable = false
	Base.Size = UDim2.new(0.3,0,0.5,0)
	Base.ZIndex = 2
	Base.Parent = Main
end
--[Children] {
local UICorner_1 = Instance.new("UICorner") do
	UICorner_1.CornerRadius = UDim.new(0,5)
	UICorner_1.Parent = Base
end
local UIListLayout = Instance.new("UIListLayout") do
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = Base
end
local SampleBase = Instance.new("Frame") do
	SampleBase.Active = true
	SampleBase.BackgroundColor3 = Color3.new(0.294,0.294,0.294)
	SampleBase.BorderColor3 = Color3.new(0,0,0)
	SampleBase.BorderSizePixel = 0
	SampleBase.Name = "SampleBase"
	SampleBase.Size = UDim2.new(1,-12,0,20)
	SampleBase.ZIndex = 3
	SampleBase.Parent = Base
end
--[Children] {
local ColorSample = Instance.new("Frame") do
	ColorSample.AnchorPoint = Vector2_One_Half
	ColorSample.BackgroundColor3 = Color3.new(0.729,0.208,0)
	ColorSample.BorderColor3 = Color3.new(0,0,0)
	ColorSample.BorderSizePixel = 0
	ColorSample.Interactable = false
	ColorSample.Name = "ColorSample"
	ColorSample.Position = UDim2.new(1,0,0.5,0)
	ColorSample.Size = UDim2.new(0,15,0,15)
	ColorSample.ZIndex = 4
	ColorSample.Parent = SampleBase
end
--[Children] {
local UICorner_2 = Instance.new("UICorner") do
	UICorner_2.CornerRadius = UDim.new(1,0)
	UICorner_2.Parent = ColorSample
end
--}
local ImageButton = Instance.new("ImageButton") do
	ImageButton.Active = false
	ImageButton.BackgroundColor3 = Color3.new(1,1,1)
	ImageButton.BackgroundTransparency = 1
	ImageButton.BorderColor3 = Color3.new(0,0,0)
	ImageButton.BorderSizePixel = 0
	ImageButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	ImageButton.ImageColor3 = Color3.new(0,0,0)
	ImageButton.Interactable = false
	ImageButton.Selectable = false
	ImageButton.Size = UDim2.new(0,20,0,20)
	ImageButton.ZIndex = 4
	ImageButton.Parent = SampleBase
end
local TextLabel = Instance.new("TextLabel") do
	TextLabel.BackgroundColor3 = Color3.new(0.459,0.459,0.459)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderColor3 = Color3.new(0,0,0)
	TextLabel.BorderSizePixel = 0
	TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel.Interactable = false
	TextLabel.Position = UDim2.new(0,25,0,0)
	TextLabel.Size = UDim2.new(1,-40,1,0)
	TextLabel.TextColor3 = Color3.new(1,1,1)
	TextLabel.TextSize = 20
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.ZIndex = 4
	TextLabel.Parent = SampleBase
end
local ClickBox = Instance.new("TextButton") do
	ClickBox.BackgroundColor3 = Color3.new(1,1,1)
	ClickBox.BackgroundTransparency = 1
	ClickBox.BorderColor3 = Color3.new(0,0,0)
	ClickBox.BorderSizePixel = 0
	ClickBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	ClickBox.Name = "ClickBox"
	ClickBox.Size = UDim2_one
	ClickBox.Text = ""
	ClickBox.TextColor3 = Color3.new(0,0,0)
	ClickBox.TextSize = 14
	ClickBox.TextTransparency = 1
	ClickBox.ZIndex = 5
	ClickBox.Parent = SampleBase
end
--}
--}
local Targets = Instance.new("ScrollingFrame") do
	Targets.AnchorPoint = Vector2.xAxis
	Targets.BackgroundColor3 = Color3.new(0.451,0.451,0.451)
	Targets.BorderColor3 = Color3.new(0,0,0)
	Targets.BorderSizePixel = 0
	Targets.Name = "Targets"
	Targets.Position = UDim2.new(0.9,0,0.1,0)
	Targets.Selectable = false
	Targets.Size = UDim2.new(0.3,0,0.5,0)
	Targets.ZIndex = 2
	Targets.Parent = Main
end
--[Children] {
local UICorner_3 = Instance.new("UICorner") do
	UICorner_3.CornerRadius = UDim.new(0,5)
	UICorner_3.Parent = Targets
end
local UIListLayout_1 = Instance.new("UIListLayout") do
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.Parent = Targets
end
local SampleTarget = Instance.new("Frame") do
	SampleTarget.Active = true
	SampleTarget.BackgroundColor3 = Color3.new(0.294,0.294,0.294)
	SampleTarget.BorderColor3 = Color3.new(0,0,0)
	SampleTarget.BorderSizePixel = 0
	SampleTarget.Name = "SampleTarget"
	SampleTarget.Size = UDim2.new(1,-12,0,20)
	SampleTarget.ZIndex = 3
	SampleTarget.Parent = Targets
end
--[Children] {
local ColorSample_1 = Instance.new("Frame") do
	ColorSample_1.AnchorPoint = Vector2_Zero_Half
	ColorSample_1.BackgroundColor3 = Color3.new(0.729,0.208,0)
	ColorSample_1.BorderColor3 = Color3.new(0,0,0)
	ColorSample_1.BorderSizePixel = 0
	ColorSample_1.Interactable = false
	ColorSample_1.Name = "ColorSample"
	ColorSample_1.Position = UDim2.new(0,0,0.5,0)
	ColorSample_1.Size = UDim2.new(0,15,0,15)
	ColorSample_1.ZIndex = 4
	ColorSample_1.Parent = SampleTarget
end
--[Children] {
local UICorner_4 = Instance.new("UICorner") do
	UICorner_4.CornerRadius = UDim.new(1,0)
	UICorner_4.Parent = ColorSample_1
end
--}
local ImageButton_1 = Instance.new("ImageButton") do
	ImageButton_1.Active = false
	ImageButton_1.BackgroundColor3 = Color3.new(1,1,1)
	ImageButton_1.BackgroundTransparency = 1
	ImageButton_1.BorderColor3 = Color3.new(0,0,0)
	ImageButton_1.BorderSizePixel = 0
	ImageButton_1.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	ImageButton_1.ImageColor3 = Color3.new(0,0,0)
	ImageButton_1.Interactable = false
	ImageButton_1.Position = UDim2.new(0,15,0,0)
	ImageButton_1.Selectable = false
	ImageButton_1.Size = UDim2.new(0,20,0,20)
	ImageButton_1.ZIndex = 4
	ImageButton_1.Parent = SampleTarget
end
local TextLabel_1 = Instance.new("TextLabel") do
	TextLabel_1.BackgroundColor3 = Color3.new(0.459,0.459,0.459)
	TextLabel_1.BackgroundTransparency = 1
	TextLabel_1.BorderColor3 = Color3.new(0,0,0)
	TextLabel_1.BorderSizePixel = 0
	TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel_1.Interactable = false
	TextLabel_1.Position = UDim2.new(0,40,0,0)
	TextLabel_1.Size = UDim2.new(1,-40,1,0)
	TextLabel_1.TextColor3 = Color3.new(1,1,1)
	TextLabel_1.TextSize = 20
	TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_1.ZIndex = 4
	TextLabel_1.Parent = SampleTarget
end
local ClickBox_1 = Instance.new("TextButton") do
	ClickBox_1.BackgroundColor3 = Color3.new(1,1,1)
	ClickBox_1.BackgroundTransparency = 1
	ClickBox_1.BorderColor3 = Color3.new(0,0,0)
	ClickBox_1.BorderSizePixel = 0
	ClickBox_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	ClickBox_1.Name = "ClickBox"
	ClickBox_1.Size = UDim2_one
	ClickBox_1.Text = ""
	ClickBox_1.TextColor3 = Color3.new(0,0,0)
	ClickBox_1.TextSize = 14
	ClickBox_1.TextTransparency = 1
	ClickBox_1.ZIndex = 5
	ClickBox_1.Parent = SampleTarget
end
--}
--}
local WeldOptionsButton_Frame = Instance.new("Frame") do
	WeldOptionsButton_Frame.Active = true
	WeldOptionsButton_Frame.AnchorPoint = Vector2_Half_One
	WeldOptionsButton_Frame.BackgroundColor3 = Color3.new(0.282,0.282,0.282)
	WeldOptionsButton_Frame.BorderColor3 = Color3.new(0,0,0)
	WeldOptionsButton_Frame.BorderSizePixel = 0
	WeldOptionsButton_Frame.Name = "WeldOptionsButton_Frame"
	WeldOptionsButton_Frame.Position = UDim2.new(0.5,0,0.795,0)
	WeldOptionsButton_Frame.Selectable = true
	WeldOptionsButton_Frame.Size = UDim2.new(0.2,0,0.083,0)
	WeldOptionsButton_Frame.ZIndex = 2
	WeldOptionsButton_Frame.Parent = Main
end
--[Children] {
local UICorner_5 = Instance.new("UICorner") do
	UICorner_5.CornerRadius = UDim.new(0,5)
	UICorner_5.Parent = WeldOptionsButton_Frame
end
local CancelCorneringEffect = Instance.new("Frame") do
	CancelCorneringEffect.Active = true
	CancelCorneringEffect.BackgroundColor3 = Color3.new(0.282,0.282,0.282)
	CancelCorneringEffect.BorderColor3 = Color3.new(0,0,0)
	CancelCorneringEffect.BorderSizePixel = 0
	CancelCorneringEffect.Name = "CancelCorneringEffect"
	CancelCorneringEffect.Selectable = true
	CancelCorneringEffect.Size = UDim2.new(1,0,0,5)
	CancelCorneringEffect.ZIndex = 3
	CancelCorneringEffect.Parent = WeldOptionsButton_Frame
end
local WeldOptionsButton = Instance.new("TextButton") do
	WeldOptionsButton.BackgroundColor3 = Color3.new(0.282,0.282,0.282)
	WeldOptionsButton.BorderColor3 = Color3.new(0,0,0)
	WeldOptionsButton.BorderSizePixel = 0
	WeldOptionsButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	WeldOptionsButton.Name = "WeldOptionsButton"
	WeldOptionsButton.Size = UDim2_one
	WeldOptionsButton.Text = "Motor6D"
	WeldOptionsButton.TextColor3 = Color3.new(0,0,0)
	WeldOptionsButton.TextScaled = true
	WeldOptionsButton.TextSize = 14
	WeldOptionsButton.TextWrapped = true
	WeldOptionsButton.ZIndex = 4
	WeldOptionsButton.Parent = WeldOptionsButton_Frame
end
--[Children] {
local UICorner_6 = Instance.new("UICorner") do
	UICorner_6.CornerRadius = UDim.new(0,5)
	UICorner_6.Parent = WeldOptionsButton
end
--}
local UIStroke_1 = Instance.new("UIStroke") do
	UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_1.Parent = WeldOptionsButton_Frame
end
--}
local WeldOptions_Frame = Instance.new("Frame") do
	WeldOptions_Frame.Active = true
	WeldOptions_Frame.AnchorPoint = Vector2_Half_One
	WeldOptions_Frame.BackgroundColor3 = Color3.new(0.282,0.282,0.282)
	WeldOptions_Frame.BorderColor3 = Color3.new(0,0,0)
	WeldOptions_Frame.BorderSizePixel = 0
	WeldOptions_Frame.Name = "WeldOptions_Frame"
	WeldOptions_Frame.Position = UDim2.new(0.5,0,0.713,0)
	WeldOptions_Frame.Selectable = true
	WeldOptions_Frame.SelectionGroup = true
	WeldOptions_Frame.Size = UDim2.new(0.2,0,0.613,0)
	WeldOptions_Frame.ZIndex = 2
	WeldOptions_Frame.Parent = Main
end
--[Children] {
local UICorner_7 = Instance.new("UICorner") do
	UICorner_7.CornerRadius = UDim.new(0,5)
	UICorner_7.Parent = WeldOptions_Frame
end
local CancelCorneringEffect_1 = Instance.new("Frame") do
	CancelCorneringEffect_1.AnchorPoint = Vector2.yAxis
	CancelCorneringEffect_1.BackgroundColor3 = Color3.new(0.282,0.282,0.282)
	CancelCorneringEffect_1.BorderColor3 = Color3.new(0,0,0)
	CancelCorneringEffect_1.BorderSizePixel = 0
	CancelCorneringEffect_1.Name = "CancelCorneringEffect"
	CancelCorneringEffect_1.Position = UDim2.new(0,0,1,0)
	CancelCorneringEffect_1.Size = UDim2.new(1,0,0,5)
	CancelCorneringEffect_1.ZIndex = 3
	CancelCorneringEffect_1.Parent = WeldOptions_Frame
end
local WeldOptions = Instance.new("ScrollingFrame") do
	WeldOptions.Active = true
	WeldOptions.BackgroundColor3 = Color3.new(0.282,0.282,0.282)
	WeldOptions.BorderColor3 = Color3.new(0,0,0)
	WeldOptions.BorderSizePixel = 0
	WeldOptions.ClipsDescendants = false
	WeldOptions.Name = "WeldOptions"
	WeldOptions.Size = UDim2_one
	WeldOptions.ZIndex = 4
	WeldOptions.Parent = WeldOptions_Frame
end
--[Children] {
local UICorner_8 = Instance.new("UICorner") do
	UICorner_8.CornerRadius = UDim.new(0,5)
	UICorner_8.Parent = WeldOptions
end
local UIListLayout_2 = Instance.new("UIListLayout") do
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Parent = WeldOptions
end
--}
local UIStroke_2 = Instance.new("UIStroke") do
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Parent = WeldOptions_Frame
end
--}
local L_PivotToOffset = Instance.new("Frame") do
	L_PivotToOffset.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	L_PivotToOffset.BorderColor3 = Color3.new(0,0,0)
	L_PivotToOffset.BorderSizePixel = 0
	L_PivotToOffset.Name = "L_PivotToOffset"
	L_PivotToOffset.Position = UDim2.new(0.1,5,0.6,5)
	L_PivotToOffset.Size = UDim2.new(0.3,-10,0.1,0)
	L_PivotToOffset.ZIndex = 2
	L_PivotToOffset.Parent = Main
end
--[Children] {
local TextLabel_2 = Instance.new("TextLabel") do
	TextLabel_2.BackgroundColor3 = Color3.new(1,1,1)
	TextLabel_2.BackgroundTransparency = 1
	TextLabel_2.BorderColor3 = Color3.new(0,0,0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel_2.LayoutOrder = 1
	TextLabel_2.Size = UDim2_one
	TextLabel_2.Text = "Pivot To Offset"
	TextLabel_2.TextColor3 = Color3.new(0,0,0)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14
	TextLabel_2.TextWrapped = true
	TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_2.ZIndex = 3
	TextLabel_2.Parent = L_PivotToOffset
end
--[Children] {
local UIFlexItem = Instance.new("UIFlexItem") do
	UIFlexItem.FlexMode = Enum.UIFlexMode.Fill
	UIFlexItem.Parent = TextLabel_2
end
--}
local ButtonSplit = Instance.new("Frame") do
	ButtonSplit.AnchorPoint = Vector2.xAxis
	ButtonSplit.BackgroundColor3 = Color3.new(1,1,1)
	ButtonSplit.BackgroundTransparency = 1
	ButtonSplit.BorderColor3 = Color3.new(0,0,0)
	ButtonSplit.BorderSizePixel = 0
	ButtonSplit.LayoutOrder = 2
	ButtonSplit.Name = "ButtonSplit"
	ButtonSplit.Position = UDim2.new(1,0,0,0)
	ButtonSplit.Size = UDim2_one
	ButtonSplit.ZIndex = 3
	ButtonSplit.Parent = L_PivotToOffset
end
--[Children] {
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint") do
	UIAspectRatioConstraint.AspectRatio = 1.2
	UIAspectRatioConstraint.Parent = ButtonSplit
end
local UIStroke_3 = Instance.new("UIStroke") do
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Parent = ButtonSplit
end
local ImageButton_2 = Instance.new("ImageButton") do
	ImageButton_2.AnchorPoint = Vector2_Half
	ImageButton_2.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	ImageButton_2.BorderColor3 = Color3.new(0,0,0)
	ImageButton_2.BorderSizePixel = 0
	ImageButton_2.Image = "rbxassetid://131950065573162"
	ImageButton_2.ImageColor3 = Color3.new(0.867,0.867,0.867)
	ImageButton_2.Position = UDim2_half
	ImageButton_2.Size = UDim2.new(0.9,0,0.9,0)
	ImageButton_2.ZIndex = 4
	ImageButton_2.Parent = ButtonSplit
end
--[Children] {
local UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint",ImageButton_2)
--}
--}
local UIListLayout_3 = Instance.new("UIListLayout") do
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Parent = L_PivotToOffset
end
local Frame = Instance.new("Frame") do
	Frame.BackgroundColor3 = Color3.new(1,1,1)
	Frame.BackgroundTransparency = 1
	Frame.BorderColor3 = Color3.new(0,0,0)
	Frame.BorderSizePixel = 0
	Frame.Size = UDim2.new(0,5,1,0)
	Frame.ZIndex = 3
	Frame.Parent = L_PivotToOffset
end
local UIStroke_4 = Instance.new("UIStroke") do
	UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_4.Parent = L_PivotToOffset
end
--}
local L_ParentToBase = Instance.new("Frame") do
	L_ParentToBase.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	L_ParentToBase.BorderColor3 = Color3.new(0,0,0)
	L_ParentToBase.BorderSizePixel = 0
	L_ParentToBase.Name = "L_ParentToBase"
	L_ParentToBase.Position = UDim2.new(0.1,5,0.7,10)
	L_ParentToBase.Size = UDim2.new(0.3,-10,0.1,0)
	L_ParentToBase.ZIndex = 2
	L_ParentToBase.Parent = Main
end
--[Children] {
local UIListLayout_4 = Instance.new("UIListLayout") do
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.Parent = L_ParentToBase
end
local UIStroke_5 = Instance.new("UIStroke") do
	UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_5.Parent = L_ParentToBase
end
local ButtonSplit_1 = Instance.new("Frame") do
	ButtonSplit_1.AnchorPoint = Vector2.xAxis
	ButtonSplit_1.BackgroundColor3 = Color3.new(1,1,1)
	ButtonSplit_1.BackgroundTransparency = 1
	ButtonSplit_1.BorderColor3 = Color3.new(0,0,0)
	ButtonSplit_1.BorderSizePixel = 0
	ButtonSplit_1.LayoutOrder = 2
	ButtonSplit_1.Name = "ButtonSplit"
	ButtonSplit_1.Position = UDim2.new(1,0,0,0)
	ButtonSplit_1.Size = UDim2_one
	ButtonSplit_1.ZIndex = 3
	ButtonSplit_1.Parent = L_ParentToBase
end
--[Children] {
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint") do
	UIAspectRatioConstraint_2.AspectRatio = 1.2
	UIAspectRatioConstraint_2.Parent = ButtonSplit_1
end
local UIStroke_6 = Instance.new("UIStroke") do
	UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_6.Parent = ButtonSplit_1
end
local ImageButton_3 = Instance.new("ImageButton") do
	ImageButton_3.AnchorPoint = Vector2_Half
	ImageButton_3.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	ImageButton_3.BorderColor3 = Color3.new(0,0,0)
	ImageButton_3.BorderSizePixel = 0
	ImageButton_3.Image = "rbxassetid://131950065573162"
	ImageButton_3.ImageColor3 = Color3.new(0.867,0.867,0.867)
	ImageButton_3.Position = UDim2_half
	ImageButton_3.Size = UDim2.new(0.9,0,0.9,0)
	ImageButton_3.ZIndex = 4
	ImageButton_3.Parent = ButtonSplit_1
end
--[Children] {
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint",ImageButton_3)
--}
--}
local Frame_1 = Instance.new("Frame") do
	Frame_1.BackgroundColor3 = Color3.new(1,1,1)
	Frame_1.BackgroundTransparency = 1
	Frame_1.BorderColor3 = Color3.new(0,0,0)
	Frame_1.BorderSizePixel = 0
	Frame_1.Size = UDim2.new(0,5,1,0)
	Frame_1.ZIndex = 3
	Frame_1.Parent = L_ParentToBase
end
local TextLabel_3 = Instance.new("TextLabel") do
	TextLabel_3.BackgroundColor3 = Color3.new(1,1,1)
	TextLabel_3.BackgroundTransparency = 1
	TextLabel_3.BorderColor3 = Color3.new(0,0,0)
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel_3.LayoutOrder = 1
	TextLabel_3.Size = UDim2_one
	TextLabel_3.Text = "Parent Weld To Base"
	TextLabel_3.TextColor3 = Color3.new(0,0,0)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14
	TextLabel_3.TextWrapped = true
	TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_3.ZIndex = 3
	TextLabel_3.Parent = L_ParentToBase
end
--[Children] {
local UIFlexItem_1 = Instance.new("UIFlexItem") do
	UIFlexItem_1.FlexMode = Enum.UIFlexMode.Fill
	UIFlexItem_1.Parent = TextLabel_3
end
--}
--}
local R_NameAsTarget = Instance.new("Frame") do
	R_NameAsTarget.AnchorPoint = Vector2.xAxis
	R_NameAsTarget.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	R_NameAsTarget.BorderColor3 = Color3.new(0,0,0)
	R_NameAsTarget.BorderSizePixel = 0
	R_NameAsTarget.Name = "R_NameAsTarget"
	R_NameAsTarget.Position = UDim2.new(0.9,-5,0.6,5)
	R_NameAsTarget.Size = UDim2.new(0.3,-10,0.1,0)
	R_NameAsTarget.ZIndex = 2
	R_NameAsTarget.Parent = Main
end
--[Children] {
local UIListLayout_5 = Instance.new("UIListLayout") do
	UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.Parent = R_NameAsTarget
end
local UIStroke_7 = Instance.new("UIStroke") do
	UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_7.Parent = R_NameAsTarget
end
local ButtonSplit_2 = Instance.new("Frame") do
	ButtonSplit_2.AnchorPoint = Vector2.xAxis
	ButtonSplit_2.BackgroundColor3 = Color3.new(1,1,1)
	ButtonSplit_2.BackgroundTransparency = 1
	ButtonSplit_2.BorderColor3 = Color3.new(0,0,0)
	ButtonSplit_2.BorderSizePixel = 0
	ButtonSplit_2.LayoutOrder = 2
	ButtonSplit_2.Name = "ButtonSplit"
	ButtonSplit_2.Position = UDim2.new(1,0,0,0)
	ButtonSplit_2.Size = UDim2_one
	ButtonSplit_2.ZIndex = 3
	ButtonSplit_2.Parent = R_NameAsTarget
end
--[Children] {
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint") do
	UIAspectRatioConstraint_4.AspectRatio = 1.2
	UIAspectRatioConstraint_4.Parent = ButtonSplit_2
end
local UIStroke_8 = Instance.new("UIStroke") do
	UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_8.Parent = ButtonSplit_2
end
local ImageButton_4 = Instance.new("ImageButton") do
	ImageButton_4.AnchorPoint = Vector2_Half
	ImageButton_4.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	ImageButton_4.BorderColor3 = Color3.new(0,0,0)
	ImageButton_4.BorderSizePixel = 0
	ImageButton_4.Image = "rbxassetid://131950065573162"
	ImageButton_4.ImageColor3 = Color3.new(0.867,0.867,0.867)
	ImageButton_4.Position = UDim2_half
	ImageButton_4.Size = UDim2.new(0.9,0,0.9,0)
	ImageButton_4.ZIndex = 4
	ImageButton_4.Parent = ButtonSplit_2
end
--[Children] {
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint",ImageButton_4)
--}
--}
local Frame_2 = Instance.new("Frame") do
	Frame_2.BackgroundColor3 = Color3.new(1,1,1)
	Frame_2.BackgroundTransparency = 1
	Frame_2.BorderColor3 = Color3.new(0,0,0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Size = UDim2.new(0,5,1,0)
	Frame_2.ZIndex = 3
	Frame_2.Parent = R_NameAsTarget
end
local TextLabel_4 = Instance.new("TextLabel") do
	TextLabel_4.BackgroundColor3 = Color3.new(1,1,1)
	TextLabel_4.BackgroundTransparency = 1
	TextLabel_4.BorderColor3 = Color3.new(0,0,0)
	TextLabel_4.BorderSizePixel = 0
	TextLabel_4.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel_4.LayoutOrder = 1
	TextLabel_4.Size = UDim2_one
	TextLabel_4.Text = "Name Weld As Target"
	TextLabel_4.TextColor3 = Color3.new(0,0,0)
	TextLabel_4.TextScaled = true
	TextLabel_4.TextSize = 14
	TextLabel_4.TextWrapped = true
	TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_4.ZIndex = 3
	TextLabel_4.Parent = R_NameAsTarget
end
--[Children] {
local UIFlexItem_2 = Instance.new("UIFlexItem") do
	UIFlexItem_2.FlexMode = Enum.UIFlexMode.Fill
	UIFlexItem_2.Parent = TextLabel_4
end
--}
--}
local R_ChainLink = Instance.new("Frame") do
	R_ChainLink.AnchorPoint = Vector2.xAxis
	R_ChainLink.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	R_ChainLink.BorderColor3 = Color3.new(0,0,0)
	R_ChainLink.BorderSizePixel = 0
	R_ChainLink.Name = "R_ChainLink"
	R_ChainLink.Position = UDim2.new(0.9,-5,0.7,10)
	R_ChainLink.Size = UDim2.new(0.3,-10,0.1,0)
	R_ChainLink.ZIndex = 2
	R_ChainLink.Parent = Main
end
--[Children] {
local UIListLayout_6 = Instance.new("UIListLayout") do
	UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_6.Parent = R_ChainLink
end
local UIStroke_9 = Instance.new("UIStroke") do
	UIStroke_9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_9.Parent = R_ChainLink
end
local ButtonSplit_3 = Instance.new("Frame") do
	ButtonSplit_3.AnchorPoint = Vector2.xAxis
	ButtonSplit_3.BackgroundColor3 = Color3.new(1,1,1)
	ButtonSplit_3.BackgroundTransparency = 1
	ButtonSplit_3.BorderColor3 = Color3.new(0,0,0)
	ButtonSplit_3.BorderSizePixel = 0
	ButtonSplit_3.LayoutOrder = 2
	ButtonSplit_3.Name = "ButtonSplit"
	ButtonSplit_3.Position = UDim2.new(1,0,0,0)
	ButtonSplit_3.Size = UDim2_one
	ButtonSplit_3.ZIndex = 3
	ButtonSplit_3.Parent = R_ChainLink
end
--[Children] {
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint") do
	UIAspectRatioConstraint_6.AspectRatio = 1.2
	UIAspectRatioConstraint_6.Parent = ButtonSplit_3
end
local UIStroke_10 = Instance.new("UIStroke") do
	UIStroke_10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_10.Parent = ButtonSplit_3
end
local ImageButton_5 = Instance.new("ImageButton") do
	ImageButton_5.AnchorPoint = Vector2_Half
	ImageButton_5.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	ImageButton_5.BorderColor3 = Color3.new(0,0,0)
	ImageButton_5.BorderSizePixel = 0
	ImageButton_5.Image = "rbxassetid://78966475852487"
	ImageButton_5.ImageColor3 = Color3.new(0.867,0.867,0.867)
	ImageButton_5.Position = UDim2_half
	ImageButton_5.Size = UDim2.new(0.9,0,0.9,0)
	ImageButton_5.ZIndex = 4
	ImageButton_5.Parent = ButtonSplit_3
end
--[Children] {
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint",ImageButton_5)
--}
--}
local Frame_3 = Instance.new("Frame") do
	Frame_3.BackgroundColor3 = Color3.new(1,1,1)
	Frame_3.BackgroundTransparency = 1
	Frame_3.BorderColor3 = Color3.new(0,0,0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Size = UDim2.new(0,5,1,0)
	Frame_3.ZIndex = 3
	Frame_3.Parent = R_ChainLink
end
local TextLabel_5 = Instance.new("TextLabel") do
	TextLabel_5.BackgroundColor3 = Color3.new(1,1,1)
	TextLabel_5.BackgroundTransparency = 1
	TextLabel_5.BorderColor3 = Color3.new(0,0,0)
	TextLabel_5.BorderSizePixel = 0
	TextLabel_5.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel_5.LayoutOrder = 1
	TextLabel_5.Size = UDim2_one
	TextLabel_5.Text = "Decentralize Weld"
	TextLabel_5.TextColor3 = Color3.new(0,0,0)
	TextLabel_5.TextScaled = true
	TextLabel_5.TextSize = 14
	TextLabel_5.TextWrapped = true
	TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_5.ZIndex = 3
	TextLabel_5.Parent = R_ChainLink
end
--[Children] {
local UIFlexItem_3 = Instance.new("UIFlexItem") do
	UIFlexItem_3.FlexMode = Enum.UIFlexMode.Fill
	UIFlexItem_3.Parent = TextLabel_5
end
--}
--}
local TextLabel_Base = Instance.new("TextLabel") do
	TextLabel_Base.AnchorPoint = Vector2_Half_Zero
	TextLabel_Base.BackgroundColor3 = Color3.new(1,1,1)
	TextLabel_Base.BackgroundTransparency = 1
	TextLabel_Base.BorderColor3 = Color3.new(0,0,0)
	TextLabel_Base.BorderSizePixel = 0
	TextLabel_Base.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel_Base.Name = "TextLabel_Base"
	TextLabel_Base.Position = UDim2.new(0.25,0,0.017,0)
	TextLabel_Base.Size = UDim2.new(0.3,0,0.083,0)
	TextLabel_Base.Text = "Base"
	TextLabel_Base.TextColor3 = Color3.new(1,1,1)
	TextLabel_Base.TextScaled = true
	TextLabel_Base.TextSize = 14
	TextLabel_Base.TextWrapped = true
	TextLabel_Base.Parent = Main
end
local TextLabel_Target = Instance.new("TextLabel") do
	TextLabel_Target.AnchorPoint = Vector2_Half_Zero
	TextLabel_Target.BackgroundColor3 = Color3.new(1,1,1)
	TextLabel_Target.BackgroundTransparency = 1
	TextLabel_Target.BorderColor3 = Color3.new(0,0,0)
	TextLabel_Target.BorderSizePixel = 0
	TextLabel_Target.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
	TextLabel_Target.Name = "TextLabel_Target"
	TextLabel_Target.Position = UDim2.new(0.75,0,0.017,0)
	TextLabel_Target.Size = UDim2.new(0.3,0,0.083,0)
	TextLabel_Target.Text = "Target"
	TextLabel_Target.TextColor3 = Color3.new(1,1,1)
	TextLabel_Target.TextScaled = true
	TextLabel_Target.TextSize = 14
	TextLabel_Target.TextWrapped = true
	TextLabel_Target.Parent = Main
end
local SelectWelds_Button = Instance.new("ImageButton") do
	SelectWelds_Button.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	SelectWelds_Button.BorderColor3 = Color3.new(0,0,0)
	SelectWelds_Button.BorderSizePixel = 0
	SelectWelds_Button.Image = "rbxassetid://131950065573162"
	SelectWelds_Button.ImageColor3 = Color3.new(0.867,0.867,0.867)
	SelectWelds_Button.Name = "SelectWelds_Button"
	SelectWelds_Button.Position = UDim2.new(0.6,0,0.905,0)
	SelectWelds_Button.Size = UDim2.new(0,20,0,20)
	SelectWelds_Button.ZIndex = 2
	SelectWelds_Button.Parent = Main
end
local SelectWelds = Instance.new("TextLabel") do
	SelectWelds.AnchorPoint = Vector2.xAxis
	SelectWelds.BackgroundColor3 = Color3.new(0.369,0.369,0.369)
	SelectWelds.BackgroundTransparency = 1
	SelectWelds.BorderColor3 = Color3.new(0,0,0)
	SelectWelds.BorderSizePixel = 0
	SelectWelds.Interactable = false
	SelectWelds.Name = "SelectWelds"
	SelectWelds.Position = UDim2.new(0.6,-5,0.905,0)
	SelectWelds.Selectable = true
	SelectWelds.Size = UDim2.new(0.2,0,0,20)
	SelectWelds.Text = "Select Welds"
	SelectWelds.TextColor3 = Color3.new(1,1,1)
	SelectWelds.TextXAlignment = Enum.TextXAlignment.Right
	SelectWelds.ZIndex = 2
	SelectWelds.Parent = Main
end
--}

Main.Parent=Widget
Open_UI_Button.Click:Connect(function():()
	Widget.Enabled = not Widget.Enabled
end)
