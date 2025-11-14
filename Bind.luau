--!strict
--!optimize 2

--Constants
local UDim2_one = UDim2.new(1,0,1,0)
local UDim2_half = UDim2.new(0.5,0,0.5,0)
local UDim2_point_one = UDim2.new(0.1,0,0.1,0)
local UDim2_0_5px = UDim.new(0,5)
local Vector2_Half = Vector2.new(0.5,0.5)
local Vector2_One_Half = Vector2.new(1,0.5)
local Vector2_Zero_Half = Vector2.new(0,0.5)
local Vector2_Half_One = Vector2.new(0.5,1)
local Vector2_Half_Zero = Vector2.new(0.5,0)
--temp cache
local UDim2_new0_2__0__0_083__0 = UDim2.new(0.2,0,0.083,0)
local UDim_1_0 = UDim.new(1,0)
--Instance metamethods
local SetProperty:(ins:Instance,prop:string,val:any)->()
local GetProperty:(ins:Instance|RBXScriptSignal,prop:string)->any
local Connect:<A>(signal:RBXScriptSignal,func:A)->RBXScriptConnection
xpcall(function():()
	(game::any)[nil]=nil
end,function():()
	SetProperty = debug.info(2,"f")
end)
xpcall(function():()
	return (game::any)[nil]
end,function():()
	GetProperty = debug.info(2,"f")
end)
Connect = (GetProperty(plugin,"Unloading")::any).Connect

local ScrollbarSize = 12
--initialize

local WeldOption_State:number = 1
--[[
1 = Motor6D
2 = WeldConstraint
3 = Weld
4 = ManualWeld
5 = Snap
6 = Glue
7 = RotateV
8 = Rotate
]]


local Toolbar = plugin:CreateToolbar("Bind")
local Open_UI_Button = Toolbar:CreateButton("Bind_Weld_Plugin_YS","Open Weld UI","rbxassetid://99241917663573","Open UI")
SetProperty(Open_UI_Button,"ClickableWhenViewportHidden",true)
local Widget = plugin:CreateDockWidgetPluginGui("Bind_Weld_Plugin_Widget_YS",DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float,false,false,200,200,50,50))
SetProperty(Widget,"Title","Bind (Welding Menu)")
SetProperty(Widget,"Name","Bind (Welding Menu)")
--setup
--14.11.2025 - 08:03 : 30

local Main = Instance.new("Frame") do
	SetProperty(Main,"AnchorPoint",Vector2_Half)
	SetProperty(Main,"BackgroundColor3",Color3.new(0.196,0.196,0.196))
	SetProperty(Main,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Main,"BorderSizePixel",0)
	SetProperty(Main,"Name","Main")
	SetProperty(Main,"Position",UDim2_half)
	SetProperty(Main,"Size",UDim2_one)
end
--[Children] {
local Weld = Instance.new("TextButton") do
	SetProperty(Weld,"AnchorPoint",Vector2_Half)
	SetProperty(Weld,"BackgroundColor3",Color3.new(1,0,0))
	SetProperty(Weld,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Weld,"BorderSizePixel",0)
	SetProperty(Weld,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(Weld,"Name","Weld")
	SetProperty(Weld,"Position",UDim2.new(0.5,0,0.85,0))
	SetProperty(Weld,"Size",UDim2_new0_2__0__0_083__0)
	SetProperty(Weld,"Text","Weld")
	SetProperty(Weld,"TextColor3",Color3.new(0,0,0))
	SetProperty(Weld,"TextScaled",true)
	SetProperty(Weld,"TextSize",14)
	SetProperty(Weld,"TextWrapped",true)
	SetProperty(Weld,"ZIndex",2)
	SetProperty(Weld,"Parent",Main)
end
--[Children] {
SetProperty(Instance.new("UICorner",Weld),"CornerRadius",UDim2_0_5px)
local UIStroke = Instance.new("UIStroke") do
	SetProperty(UIStroke,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke,"Color",Color3.new(0.275,0,0))
	SetProperty(UIStroke,"Parent",Weld)
end
--}
local Base = Instance.new("ScrollingFrame") do
	SetProperty(Base,"BackgroundColor3",Color3.new(0.451,0.451,0.451))
	SetProperty(Base,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Base,"BorderSizePixel",0)
	SetProperty(Base,"Name","Base")
	SetProperty(Base,"Position",UDim2_point_one)
	SetProperty(Base,"Selectable",false)
	SetProperty(Base,"Size",UDim2.new(0.3,0,0.5,0))
	SetProperty(Base,"ZIndex",2)
	SetProperty(Base,"Parent",Main)
end
--[Children] {
SetProperty(Instance.new("UICorner",Base),"CornerRadius",UDim2_0_5px)
SetProperty(Instance.new("UIListLayout",Base),"SortOrder",Enum.SortOrder.LayoutOrder)
local SampleBase = Instance.new("Frame") do
	SetProperty(SampleBase,"Active",true)
	SetProperty(SampleBase,"BackgroundColor3",Color3.new(0.294,0.294,0.294))
	SetProperty(SampleBase,"BorderColor3",Color3.new(0,0,0))
	SetProperty(SampleBase,"BorderSizePixel",0)
	SetProperty(SampleBase,"Name","SampleBase")
	SetProperty(SampleBase,"Size",UDim2.new(1,-12,0,20))
	SetProperty(SampleBase,"ZIndex",3)
	SetProperty(SampleBase,"Parent",Base)
end
--[Children] {
local ColorSample = Instance.new("Frame") do
	SetProperty(ColorSample,"AnchorPoint",Vector2_One_Half)
	SetProperty(ColorSample,"BackgroundColor3",Color3.new(0.729,0.208,0))
	SetProperty(ColorSample,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ColorSample,"BorderSizePixel",0)
	SetProperty(ColorSample,"Interactable",false)
	SetProperty(ColorSample,"Name","ColorSample")
	SetProperty(ColorSample,"Position",UDim2.new(1,0,0.5,0))
	SetProperty(ColorSample,"Size",UDim2.new(0,15,0,15))
	SetProperty(ColorSample,"ZIndex",4)
	SetProperty(ColorSample,"Parent",SampleBase)
end
--[Children] {
SetProperty(Instance.new("UICorner",ColorSample),"CornerRadius",UDim_1_0)
--}
local ImageButton = Instance.new("ImageButton") do
	SetProperty(ImageButton,"Active",false)
	SetProperty(ImageButton,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ImageButton,"BackgroundTransparency",1)
	SetProperty(ImageButton,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton,"BorderSizePixel",0)
	SetProperty(ImageButton,"Image","rbxasset://textures/ui/GuiImagePlaceholder.png")
	SetProperty(ImageButton,"ImageColor3",Color3.new(0,0,0))
	SetProperty(ImageButton,"Interactable",false)
	SetProperty(ImageButton,"Selectable",false)
	SetProperty(ImageButton,"Size",UDim2.new(0,20,0,20))
	SetProperty(ImageButton,"ZIndex",4)
	SetProperty(ImageButton,"Parent",SampleBase)
end
local TextLabel = Instance.new("TextLabel") do
	SetProperty(TextLabel,"BackgroundColor3",Color3.new(0.459,0.459,0.459))
	SetProperty(TextLabel,"BackgroundTransparency",1)
	SetProperty(TextLabel,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel,"BorderSizePixel",0)
	SetProperty(TextLabel,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel,"Interactable",false)
	SetProperty(TextLabel,"Position",UDim2.new(0,25,0,0))
	SetProperty(TextLabel,"Size",UDim2.new(1,-40,1,0))
	SetProperty(TextLabel,"TextColor3",Color3.new(1,1,1))
	SetProperty(TextLabel,"TextSize",20)
	SetProperty(TextLabel,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel,"ZIndex",4)
	SetProperty(TextLabel,"Parent",SampleBase)
end
local ClickBox = Instance.new("TextButton") do
	SetProperty(ClickBox,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ClickBox,"BackgroundTransparency",1)
	SetProperty(ClickBox,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ClickBox,"BorderSizePixel",0)
	SetProperty(ClickBox,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(ClickBox,"Name","ClickBox")
	SetProperty(ClickBox,"Size",UDim2_one)
	SetProperty(ClickBox,"Text","")
	SetProperty(ClickBox,"TextColor3",Color3.new(0,0,0))
	SetProperty(ClickBox,"TextSize",14)
	SetProperty(ClickBox,"TextTransparency",1)
	SetProperty(ClickBox,"ZIndex",5)
	SetProperty(ClickBox,"Parent",SampleBase)
end
--}
--}
local Targets = Instance.new("ScrollingFrame") do
	SetProperty(Targets,"AnchorPoint",Vector2.xAxis)
	SetProperty(Targets,"BackgroundColor3",Color3.new(0.451,0.451,0.451))
	SetProperty(Targets,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Targets,"BorderSizePixel",0)
	SetProperty(Targets,"Name","Targets")
	SetProperty(Targets,"Position",UDim2.new(0.9,0,0.1,0))
	SetProperty(Targets,"Selectable",false)
	SetProperty(Targets,"Size",UDim2.new(0.3,0,0.5,0))
	SetProperty(Targets,"ZIndex",2)
	SetProperty(Targets,"Parent",Main)
end
--[Children] {
SetProperty(Instance.new("UICorner",Targets),"CornerRadius",UDim2_0_5px)
SetProperty(Instance.new("UIListLayout",Targets),"SortOrder",Enum.SortOrder.LayoutOrder)
local SampleTarget = Instance.new("Frame") do
	SetProperty(SampleTarget,"Active",true)
	SetProperty(SampleTarget,"BackgroundColor3",Color3.new(0.294,0.294,0.294))
	SetProperty(SampleTarget,"BorderColor3",Color3.new(0,0,0))
	SetProperty(SampleTarget,"BorderSizePixel",0)
	SetProperty(SampleTarget,"Name","SampleTarget")
	SetProperty(SampleTarget,"Size",UDim2.new(1,-12,0,20))
	SetProperty(SampleTarget,"ZIndex",3)
	SetProperty(SampleTarget,"Parent",Targets)
end
--[Children] {
local ColorSample_1 = Instance.new("Frame") do
	SetProperty(ColorSample_1,"AnchorPoint",Vector2_Zero_Half)
	SetProperty(ColorSample_1,"BackgroundColor3",Color3.new(0.729,0.208,0))
	SetProperty(ColorSample_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ColorSample_1,"BorderSizePixel",0)
	SetProperty(ColorSample_1,"Interactable",false)
	SetProperty(ColorSample_1,"Name","ColorSample")
	SetProperty(ColorSample_1,"Position",UDim2.new(0,0,0.5,0))
	SetProperty(ColorSample_1,"Size",UDim2.new(0,15,0,15))
	SetProperty(ColorSample_1,"ZIndex",4)
	SetProperty(ColorSample_1,"Parent",SampleTarget)
end
--[Children] {
SetProperty(Instance.new("UICorner",ColorSample_1),"CornerRadius",UDim_1_0)
--}
local ImageButton_1 = Instance.new("ImageButton") do
	SetProperty(ImageButton_1,"Active",false)
	SetProperty(ImageButton_1,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ImageButton_1,"BackgroundTransparency",1)
	SetProperty(ImageButton_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_1,"BorderSizePixel",0)
	SetProperty(ImageButton_1,"Image","rbxasset://textures/ui/GuiImagePlaceholder.png")
	SetProperty(ImageButton_1,"ImageColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_1,"Interactable",false)
	SetProperty(ImageButton_1,"Position",UDim2.new(0,15,0,0))
	SetProperty(ImageButton_1,"Selectable",false)
	SetProperty(ImageButton_1,"Size",UDim2.new(0,20,0,20))
	SetProperty(ImageButton_1,"ZIndex",4)
	SetProperty(ImageButton_1,"Parent",SampleTarget)
end
local TextLabel_1 = Instance.new("TextLabel") do
	SetProperty(TextLabel_1,"BackgroundColor3",Color3.new(0.459,0.459,0.459))
	SetProperty(TextLabel_1,"BackgroundTransparency",1)
	SetProperty(TextLabel_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_1,"BorderSizePixel",0)
	SetProperty(TextLabel_1,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_1,"Interactable",false)
	SetProperty(TextLabel_1,"Position",UDim2.new(0,40,0,0))
	SetProperty(TextLabel_1,"Size",UDim2.new(1,-40,1,0))
	SetProperty(TextLabel_1,"TextColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_1,"TextSize",20)
	SetProperty(TextLabel_1,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_1,"ZIndex",4)
	SetProperty(TextLabel_1,"Parent",SampleTarget)
end
local ClickBox_1 = Instance.new("TextButton") do
	SetProperty(ClickBox_1,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ClickBox_1,"BackgroundTransparency",1)
	SetProperty(ClickBox_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ClickBox_1,"BorderSizePixel",0)
	SetProperty(ClickBox_1,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(ClickBox_1,"Name","ClickBox")
	SetProperty(ClickBox_1,"Size",UDim2_one)
	SetProperty(ClickBox_1,"Text","")
	SetProperty(ClickBox_1,"TextColor3",Color3.new(0,0,0))
	SetProperty(ClickBox_1,"TextSize",14)
	SetProperty(ClickBox_1,"TextTransparency",1)
	SetProperty(ClickBox_1,"ZIndex",5)
	SetProperty(ClickBox_1,"Parent",SampleTarget)
end
--}
--}
local WeldOptionsButton_Frame = Instance.new("Frame") do
	SetProperty(WeldOptionsButton_Frame,"Active",true)
	SetProperty(WeldOptionsButton_Frame,"AnchorPoint",Vector2_Half_One)
	SetProperty(WeldOptionsButton_Frame,"BackgroundColor3",Color3.new(0.282,0.282,0.282))
	SetProperty(WeldOptionsButton_Frame,"BorderColor3",Color3.new(0,0,0))
	SetProperty(WeldOptionsButton_Frame,"BorderSizePixel",0)
	SetProperty(WeldOptionsButton_Frame,"Name","WeldOptionsButton_Frame")
	SetProperty(WeldOptionsButton_Frame,"Position",UDim2.new(0.5,0,0.795,0))
	SetProperty(WeldOptionsButton_Frame,"Selectable",true)
	SetProperty(WeldOptionsButton_Frame,"Size",UDim2_new0_2__0__0_083__0)
	SetProperty(WeldOptionsButton_Frame,"ZIndex",6)
	SetProperty(WeldOptionsButton_Frame,"Parent",Main)
end
--[Children] {
SetProperty(Instance.new("UICorner",WeldOptionsButton_Frame),"CornerRadius",UDim2_0_5px)
local CancelCorneringEffect = Instance.new("Frame") do
	SetProperty(CancelCorneringEffect,"Active",true)
	SetProperty(CancelCorneringEffect,"BackgroundColor3",Color3.new(0.282,0.282,0.282))
	SetProperty(CancelCorneringEffect,"BorderColor3",Color3.new(0,0,0))
	SetProperty(CancelCorneringEffect,"BorderSizePixel",0)
	SetProperty(CancelCorneringEffect,"Name","CancelCorneringEffect")
	SetProperty(CancelCorneringEffect,"Selectable",true)
	SetProperty(CancelCorneringEffect,"Size",UDim2.new(1,0,0,5))
	SetProperty(CancelCorneringEffect,"ZIndex",7)
	SetProperty(CancelCorneringEffect,"Parent",WeldOptionsButton_Frame)
end
local WeldOptionsButton = Instance.new("TextButton") do
	SetProperty(WeldOptionsButton,"BackgroundColor3",Color3.new(0.282,0.282,0.282))
	SetProperty(WeldOptionsButton,"BorderColor3",Color3.new(0,0,0))
	SetProperty(WeldOptionsButton,"BorderSizePixel",0)
	SetProperty(WeldOptionsButton,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(WeldOptionsButton,"Name","WeldOptionsButton")
	SetProperty(WeldOptionsButton,"Size",UDim2_one)
	SetProperty(WeldOptionsButton,"Text","Motor6D")
	SetProperty(WeldOptionsButton,"TextColor3",Color3.new(0,0,0))
	SetProperty(WeldOptionsButton,"TextScaled",true)
	SetProperty(WeldOptionsButton,"TextSize",14)
	SetProperty(WeldOptionsButton,"TextWrapped",true)
	SetProperty(WeldOptionsButton,"ZIndex",7)
	SetProperty(WeldOptionsButton,"Parent",WeldOptionsButton_Frame)
end
--[Children] {
SetProperty(Instance.new("UICorner",WeldOptionsButton),"CornerRadius",UDim2_0_5px)
--}
local UIStroke_1 = Instance.new("UIStroke") do
	SetProperty(UIStroke_1,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_1,"Parent",WeldOptionsButton_Frame)
end
--}
local WeldOptions_Frame = Instance.new("Frame") do
	SetProperty(WeldOptions_Frame,"Active",true)
	SetProperty(WeldOptions_Frame,"AnchorPoint",Vector2_Half_One)
	SetProperty(WeldOptions_Frame,"BackgroundColor3",Color3.new(0.282,0.282,0.282))
	SetProperty(WeldOptions_Frame,"BorderColor3",Color3.new(0,0,0))
	SetProperty(WeldOptions_Frame,"BorderSizePixel",0)
	SetProperty(WeldOptions_Frame,"Name","WeldOptions_Frame")
	SetProperty(WeldOptions_Frame,"Position",UDim2.new(0.5,0,0.713,0))
	SetProperty(WeldOptions_Frame,"Selectable",true)
	SetProperty(WeldOptions_Frame,"SelectionGroup",true)
	SetProperty(WeldOptions_Frame,"Size",UDim2.new(0.2,0,0.613,0))
	SetProperty(WeldOptions_Frame,"ZIndex",2)
	SetProperty(WeldOptions_Frame,"Parent",Main)
end
--[Children] {
SetProperty(Instance.new("UICorner",WeldOptions_Frame),"CornerRadius",UDim2_0_5px)
local CancelCorneringEffect_1 = Instance.new("Frame") do
	SetProperty(CancelCorneringEffect_1,"AnchorPoint",Vector2.yAxis)
	SetProperty(CancelCorneringEffect_1,"BackgroundColor3",Color3.new(0.282,0.282,0.282))
	SetProperty(CancelCorneringEffect_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(CancelCorneringEffect_1,"BorderSizePixel",0)
	SetProperty(CancelCorneringEffect_1,"Name","CancelCorneringEffect")
	SetProperty(CancelCorneringEffect_1,"Position",UDim2.new(0,0,1,0))
	SetProperty(CancelCorneringEffect_1,"Size",UDim2.new(1,0,0,5))
	SetProperty(CancelCorneringEffect_1,"ZIndex",3)
	SetProperty(CancelCorneringEffect_1,"Parent",WeldOptions_Frame)
end
local WeldOptions = Instance.new("ScrollingFrame") do
	SetProperty(WeldOptions,"Active",true)
	SetProperty(WeldOptions,"BackgroundColor3",Color3.new(0.282,0.282,0.282))
	SetProperty(WeldOptions,"BorderColor3",Color3.new(0,0,0))
	SetProperty(WeldOptions,"BorderSizePixel",0)
	SetProperty(WeldOptions,"ClipsDescendants",true)
	SetProperty(WeldOptions,"Name","WeldOptions")
	SetProperty(WeldOptions,"Size",UDim2_one)
	SetProperty(WeldOptions,"ZIndex",4)
	SetProperty(WeldOptions,"Parent",WeldOptions_Frame)
end
--[Children] {
SetProperty(Instance.new("UICorner",WeldOptions),"CornerRadius",UDim2_0_5px)

local UIListLayout_WeldOptions = Instance.new("UIListLayout",WeldOptions)
SetProperty(UIListLayout_WeldOptions,"SortOrder",Enum.SortOrder.LayoutOrder)

	local Example = Instance.new("TextButton") do
		SetProperty(Example,"BackgroundColor3",Color3.new(0.635,0.635,0.635))
		SetProperty(Example,"BorderColor3",Color3.new(0,0,0))
		SetProperty(Example,"BorderSizePixel",0)
		SetProperty(Example,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
		SetProperty(Example,"Name","Example")
		SetProperty(Example,"Size",UDim2.new(1,-12,0,25))
		SetProperty(Example,"Text","WeldConstraint")
		SetProperty(Example,"TextColor3",Color3.new(0,0,0))
		SetProperty(Example,"TextScaled",true)
		SetProperty(Example,"TextSize",14)
		SetProperty(Example,"TextWrapped",true)
		SetProperty(Example,"ZIndex",5)
		SetProperty(Example,"Parent",WeldOptions)
		SetProperty(Instance.new("UICorner",Example),"CornerRadius",UDim2_0_5px)
		
	end




--}
local UIStroke_2 = Instance.new("UIStroke") do
	SetProperty(UIStroke_2,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_2,"Parent",WeldOptions_Frame)
end
--}
local L_PivotToOffset = Instance.new("Frame") do
	SetProperty(L_PivotToOffset,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(L_PivotToOffset,"BorderColor3",Color3.new(0,0,0))
	SetProperty(L_PivotToOffset,"BorderSizePixel",0)
	SetProperty(L_PivotToOffset,"Name","L_PivotToOffset")
	SetProperty(L_PivotToOffset,"Position",UDim2.new(0.1,5,0.6,5))
	SetProperty(L_PivotToOffset,"Size",UDim2.new(0.3,-10,0.1,0))
	SetProperty(L_PivotToOffset,"ZIndex",2)
	SetProperty(L_PivotToOffset,"Parent",Main)
end
--[Children] {
local TextLabel_2 = Instance.new("TextLabel") do
	SetProperty(TextLabel_2,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_2,"BackgroundTransparency",1)
	SetProperty(TextLabel_2,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_2,"BorderSizePixel",0)
	SetProperty(TextLabel_2,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_2,"LayoutOrder",1)
	SetProperty(TextLabel_2,"Size",UDim2_one)
	SetProperty(TextLabel_2,"Text","Pivot To Offset")
	SetProperty(TextLabel_2,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_2,"TextScaled",true)
	SetProperty(TextLabel_2,"TextSize",14)
	SetProperty(TextLabel_2,"TextWrapped",true)
	SetProperty(TextLabel_2,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_2,"ZIndex",3)
	SetProperty(TextLabel_2,"Parent",L_PivotToOffset)
end
--[Children] {
local UIFlexItem = Instance.new("UIFlexItem") do
	SetProperty(UIFlexItem,"FlexMode",Enum.UIFlexMode.Fill)
	SetProperty(UIFlexItem,"Parent",TextLabel_2)
end
--}
local ButtonSplit = Instance.new("Frame") do
	SetProperty(ButtonSplit,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit,"BackgroundTransparency",1)
	SetProperty(ButtonSplit,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit,"BorderSizePixel",0)
	SetProperty(ButtonSplit,"LayoutOrder",2)
	SetProperty(ButtonSplit,"Name","ButtonSplit")
	SetProperty(ButtonSplit,"Position",UDim2.new(1,0,0,0))
	SetProperty(ButtonSplit,"Size",UDim2_one)
	SetProperty(ButtonSplit,"ZIndex",3)
	SetProperty(ButtonSplit,"Parent",L_PivotToOffset)
end
--[Children] {
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint") do
	SetProperty(UIAspectRatioConstraint,"AspectRatio",1.2)
	SetProperty(UIAspectRatioConstraint,"Parent",ButtonSplit)
end
local UIStroke_3 = Instance.new("UIStroke") do
	SetProperty(UIStroke_3,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_3,"Parent",ButtonSplit)
end
local ImageButton_2 = Instance.new("ImageButton") do
	SetProperty(ImageButton_2,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_2,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_2,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_2,"BorderSizePixel",0)
	SetProperty(ImageButton_2,"Image","rbxassetid://131950065573162")
	SetProperty(ImageButton_2,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_2,"Position",UDim2_half)
	SetProperty(ImageButton_2,"Size",UDim2.new(0.9,0,0.9,0))
	SetProperty(ImageButton_2,"ZIndex",4)
	SetProperty(ImageButton_2,"Parent",ButtonSplit)
end
--[Children] {
local UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint",ImageButton_2)
--}
--}
local UIListLayout_3 = Instance.new("UIListLayout") do
	SetProperty(UIListLayout_3,"FillDirection",Enum.FillDirection.Horizontal)
	SetProperty(UIListLayout_3,"SortOrder",Enum.SortOrder.LayoutOrder)
	SetProperty(UIListLayout_3,"Parent",L_PivotToOffset)
end
local Frame = Instance.new("Frame") do
	SetProperty(Frame,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(Frame,"BackgroundTransparency",1)
	SetProperty(Frame,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Frame,"BorderSizePixel",0)
	SetProperty(Frame,"Size",UDim2.new(0,5,1,0))
	SetProperty(Frame,"ZIndex",3)
	SetProperty(Frame,"Parent",L_PivotToOffset)
end
local UIStroke_4 = Instance.new("UIStroke") do
	SetProperty(UIStroke_4,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_4,"Parent",L_PivotToOffset)
end
--}
local L_ParentToBase = Instance.new("Frame") do
	SetProperty(L_ParentToBase,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(L_ParentToBase,"BorderColor3",Color3.new(0,0,0))
	SetProperty(L_ParentToBase,"BorderSizePixel",0)
	SetProperty(L_ParentToBase,"Name","L_ParentToBase")
	SetProperty(L_ParentToBase,"Position",UDim2.new(0.1,5,0.7,10))
	SetProperty(L_ParentToBase,"Size",UDim2.new(0.3,-10,0.1,0))
	SetProperty(L_ParentToBase,"ZIndex",2)
	SetProperty(L_ParentToBase,"Parent",Main)
end
--[Children] {
local UIListLayout_4 = Instance.new("UIListLayout") do
	SetProperty(UIListLayout_4,"FillDirection",Enum.FillDirection.Horizontal)
	SetProperty(UIListLayout_4,"SortOrder",Enum.SortOrder.LayoutOrder)
	SetProperty(UIListLayout_4,"Parent",L_ParentToBase)
end
local UIStroke_5 = Instance.new("UIStroke") do
	SetProperty(UIStroke_5,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_5,"Parent",L_ParentToBase)
end
local ButtonSplit_1 = Instance.new("Frame") do
	SetProperty(ButtonSplit_1,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit_1,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit_1,"BackgroundTransparency",1)
	SetProperty(ButtonSplit_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit_1,"BorderSizePixel",0)
	SetProperty(ButtonSplit_1,"LayoutOrder",2)
	SetProperty(ButtonSplit_1,"Name","ButtonSplit")
	SetProperty(ButtonSplit_1,"Position",UDim2.new(1,0,0,0))
	SetProperty(ButtonSplit_1,"Size",UDim2_one)
	SetProperty(ButtonSplit_1,"ZIndex",3)
	SetProperty(ButtonSplit_1,"Parent",L_ParentToBase)
end
--[Children] {
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint") do
	SetProperty(UIAspectRatioConstraint_2,"AspectRatio",1.2)
	SetProperty(UIAspectRatioConstraint_2,"Parent",ButtonSplit_1)
end
local UIStroke_6 = Instance.new("UIStroke") do
	SetProperty(UIStroke_6,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_6,"Parent",ButtonSplit_1)
end
local ImageButton_3 = Instance.new("ImageButton") do
	SetProperty(ImageButton_3,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_3,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_3,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_3,"BorderSizePixel",0)
	SetProperty(ImageButton_3,"Image","rbxassetid://131950065573162")
	SetProperty(ImageButton_3,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_3,"Position",UDim2_half)
	SetProperty(ImageButton_3,"Size",UDim2.new(0.9,0,0.9,0))
	SetProperty(ImageButton_3,"ZIndex",4)
	SetProperty(ImageButton_3,"Parent",ButtonSplit_1)
end
--[Children] {
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint",ImageButton_3)
--}
--}
local Frame_1 = Instance.new("Frame") do
	SetProperty(Frame_1,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(Frame_1,"BackgroundTransparency",1)
	SetProperty(Frame_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Frame_1,"BorderSizePixel",0)
	SetProperty(Frame_1,"Size",UDim2.new(0,5,1,0))
	SetProperty(Frame_1,"ZIndex",3)
	SetProperty(Frame_1,"Parent",L_ParentToBase)
end
local TextLabel_3 = Instance.new("TextLabel") do
	SetProperty(TextLabel_3,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_3,"BackgroundTransparency",1)
	SetProperty(TextLabel_3,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_3,"BorderSizePixel",0)
	SetProperty(TextLabel_3,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_3,"LayoutOrder",1)
	SetProperty(TextLabel_3,"Size",UDim2_one)
	SetProperty(TextLabel_3,"Text","Parent Weld To Base")
	SetProperty(TextLabel_3,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_3,"TextScaled",true)
	SetProperty(TextLabel_3,"TextSize",14)
	SetProperty(TextLabel_3,"TextWrapped",true)
	SetProperty(TextLabel_3,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_3,"ZIndex",3)
	SetProperty(TextLabel_3,"Parent",L_ParentToBase)
end
--[Children] {
local UIFlexItem_1 = Instance.new("UIFlexItem") do
	SetProperty(UIFlexItem_1,"FlexMode",Enum.UIFlexMode.Fill)
	SetProperty(UIFlexItem_1,"Parent",TextLabel_3)
end
--}
--}
local R_NameAsTarget = Instance.new("Frame") do
	SetProperty(R_NameAsTarget,"AnchorPoint",Vector2.xAxis)
	SetProperty(R_NameAsTarget,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(R_NameAsTarget,"BorderColor3",Color3.new(0,0,0))
	SetProperty(R_NameAsTarget,"BorderSizePixel",0)
	SetProperty(R_NameAsTarget,"Name","R_NameAsTarget")
	SetProperty(R_NameAsTarget,"Position",UDim2.new(0.9,-5,0.6,5))
	SetProperty(R_NameAsTarget,"Size",UDim2.new(0.3,-10,0.1,0))
	SetProperty(R_NameAsTarget,"ZIndex",2)
	SetProperty(R_NameAsTarget,"Parent",Main)
end
--[Children] {
local UIListLayout_5 = Instance.new("UIListLayout") do
	SetProperty(UIListLayout_5,"FillDirection",Enum.FillDirection.Horizontal)
	SetProperty(UIListLayout_5,"SortOrder",Enum.SortOrder.LayoutOrder)
	SetProperty(UIListLayout_5,"Parent",R_NameAsTarget)
end
local UIStroke_7 = Instance.new("UIStroke") do
	SetProperty(UIStroke_7,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_7,"Parent",R_NameAsTarget)
end
local ButtonSplit_2 = Instance.new("Frame") do
	SetProperty(ButtonSplit_2,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit_2,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit_2,"BackgroundTransparency",1)
	SetProperty(ButtonSplit_2,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit_2,"BorderSizePixel",0)
	SetProperty(ButtonSplit_2,"LayoutOrder",2)
	SetProperty(ButtonSplit_2,"Name","ButtonSplit")
	SetProperty(ButtonSplit_2,"Position",UDim2.new(1,0,0,0))
	SetProperty(ButtonSplit_2,"Size",UDim2_one)
	SetProperty(ButtonSplit_2,"ZIndex",3)
	SetProperty(ButtonSplit_2,"Parent",R_NameAsTarget)
end
--[Children] {
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint") do
	SetProperty(UIAspectRatioConstraint_4,"AspectRatio",1.2)
	SetProperty(UIAspectRatioConstraint_4,"Parent",ButtonSplit_2)
end
local UIStroke_8 = Instance.new("UIStroke") do
	SetProperty(UIStroke_8,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_8,"Parent",ButtonSplit_2)
end
local ImageButton_4 = Instance.new("ImageButton") do
	SetProperty(ImageButton_4,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_4,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_4,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_4,"BorderSizePixel",0)
	SetProperty(ImageButton_4,"Image","rbxassetid://131950065573162")
	SetProperty(ImageButton_4,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_4,"Position",UDim2_half)
	SetProperty(ImageButton_4,"Size",UDim2.new(0.9,0,0.9,0))
	SetProperty(ImageButton_4,"ZIndex",4)
	SetProperty(ImageButton_4,"Parent",ButtonSplit_2)
end
--[Children] {
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint",ImageButton_4)
--}
--}
local Frame_2 = Instance.new("Frame") do
	SetProperty(Frame_2,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(Frame_2,"BackgroundTransparency",1)
	SetProperty(Frame_2,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Frame_2,"BorderSizePixel",0)
	SetProperty(Frame_2,"Size",UDim2.new(0,5,1,0))
	SetProperty(Frame_2,"ZIndex",3)
	SetProperty(Frame_2,"Parent",R_NameAsTarget)
end
local TextLabel_4 = Instance.new("TextLabel") do
	SetProperty(TextLabel_4,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_4,"BackgroundTransparency",1)
	SetProperty(TextLabel_4,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_4,"BorderSizePixel",0)
	SetProperty(TextLabel_4,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_4,"LayoutOrder",1)
	SetProperty(TextLabel_4,"Size",UDim2_one)
	SetProperty(TextLabel_4,"Text","Name Weld As Target")
	SetProperty(TextLabel_4,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_4,"TextScaled",true)
	SetProperty(TextLabel_4,"TextSize",14)
	SetProperty(TextLabel_4,"TextWrapped",true)
	SetProperty(TextLabel_4,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_4,"ZIndex",3)
	SetProperty(TextLabel_4,"Parent",R_NameAsTarget)
end
--[Children] {
local UIFlexItem_2 = Instance.new("UIFlexItem") do
	SetProperty(UIFlexItem_2,"FlexMode",Enum.UIFlexMode.Fill)
	SetProperty(UIFlexItem_2,"Parent",TextLabel_4)
end
--}
--}
local R_ChainLink = Instance.new("Frame") do
	SetProperty(R_ChainLink,"AnchorPoint",Vector2.xAxis)
	SetProperty(R_ChainLink,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(R_ChainLink,"BorderColor3",Color3.new(0,0,0))
	SetProperty(R_ChainLink,"BorderSizePixel",0)
	SetProperty(R_ChainLink,"Name","R_ChainLink")
	SetProperty(R_ChainLink,"Position",UDim2.new(0.9,-5,0.7,10))
	SetProperty(R_ChainLink,"Size",UDim2.new(0.3,-10,0.1,0))
	SetProperty(R_ChainLink,"ZIndex",2)
	SetProperty(R_ChainLink,"Parent",Main)
end
--[Children] {
local UIListLayout_6 = Instance.new("UIListLayout") do
	SetProperty(UIListLayout_6,"FillDirection",Enum.FillDirection.Horizontal)
	SetProperty(UIListLayout_6,"SortOrder",Enum.SortOrder.LayoutOrder)
	SetProperty(UIListLayout_6,"Parent",R_ChainLink)
end
local UIStroke_9 = Instance.new("UIStroke") do
	SetProperty(UIStroke_9,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_9,"Parent",R_ChainLink)
end
local ButtonSplit_3 = Instance.new("Frame") do
	SetProperty(ButtonSplit_3,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit_3,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit_3,"BackgroundTransparency",1)
	SetProperty(ButtonSplit_3,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit_3,"BorderSizePixel",0)
	SetProperty(ButtonSplit_3,"LayoutOrder",2)
	SetProperty(ButtonSplit_3,"Name","ButtonSplit")
	SetProperty(ButtonSplit_3,"Position",UDim2.new(1,0,0,0))
	SetProperty(ButtonSplit_3,"Size",UDim2_one)
	SetProperty(ButtonSplit_3,"ZIndex",3)
	SetProperty(ButtonSplit_3,"Parent",R_ChainLink)
end
--[Children] {
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint") do
	SetProperty(UIAspectRatioConstraint_6,"AspectRatio",1.2)
	SetProperty(UIAspectRatioConstraint_6,"Parent",ButtonSplit_3)
end
local UIStroke_10 = Instance.new("UIStroke") do
	SetProperty(UIStroke_10,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
	SetProperty(UIStroke_10,"Parent",ButtonSplit_3)
end
local ImageButton_5 = Instance.new("ImageButton") do
	SetProperty(ImageButton_5,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_5,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_5,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_5,"BorderSizePixel",0)
	SetProperty(ImageButton_5,"Image","rbxassetid://78966475852487")
	SetProperty(ImageButton_5,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_5,"Position",UDim2_half)
	SetProperty(ImageButton_5,"Size",UDim2.new(0.9,0,0.9,0))
	SetProperty(ImageButton_5,"ZIndex",4)
	SetProperty(ImageButton_5,"Parent",ButtonSplit_3)
end
--[Children] {
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint",ImageButton_5)
--}
--}
local Frame_3 = Instance.new("Frame") do
	SetProperty(Frame_3,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(Frame_3,"BackgroundTransparency",1)
	SetProperty(Frame_3,"BorderColor3",Color3.new(0,0,0))
	SetProperty(Frame_3,"BorderSizePixel",0)
	SetProperty(Frame_3,"Size",UDim2.new(0,5,1,0))
	SetProperty(Frame_3,"ZIndex",3)
	SetProperty(Frame_3,"Parent",R_ChainLink)
end
local TextLabel_5 = Instance.new("TextLabel") do
	SetProperty(TextLabel_5,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_5,"BackgroundTransparency",1)
	SetProperty(TextLabel_5,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_5,"BorderSizePixel",0)
	SetProperty(TextLabel_5,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_5,"LayoutOrder",1)
	SetProperty(TextLabel_5,"Size",UDim2_one)
	SetProperty(TextLabel_5,"Text","Decentralize Weld")
	SetProperty(TextLabel_5,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_5,"TextScaled",true)
	SetProperty(TextLabel_5,"TextSize",14)
	SetProperty(TextLabel_5,"TextWrapped",true)
	SetProperty(TextLabel_5,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_5,"ZIndex",3)
	SetProperty(TextLabel_5,"Parent",R_ChainLink)
end
--[Children] {
local UIFlexItem_3 = Instance.new("UIFlexItem") do
	SetProperty(UIFlexItem_3,"FlexMode",Enum.UIFlexMode.Fill)
	SetProperty(UIFlexItem_3,"Parent",TextLabel_5)
end
--}
--}
local TextLabel_Base = Instance.new("TextLabel") do
	SetProperty(TextLabel_Base,"AnchorPoint",Vector2_Half_Zero)
	SetProperty(TextLabel_Base,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_Base,"BackgroundTransparency",1)
	SetProperty(TextLabel_Base,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_Base,"BorderSizePixel",0)
	SetProperty(TextLabel_Base,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_Base,"Name","TextLabel_Base")
	SetProperty(TextLabel_Base,"Position",UDim2.new(0.25,0,0.017,0))
	SetProperty(TextLabel_Base,"Size",UDim2.new(0.3,0,0.083,0))
	SetProperty(TextLabel_Base,"Text","Base")
	SetProperty(TextLabel_Base,"TextColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_Base,"TextScaled",true)
	SetProperty(TextLabel_Base,"TextSize",14)
	SetProperty(TextLabel_Base,"TextWrapped",true)
	SetProperty(TextLabel_Base,"Parent",Main)
end
local TextLabel_Target = Instance.new("TextLabel") do
	SetProperty(TextLabel_Target,"AnchorPoint",Vector2_Half_Zero)
	SetProperty(TextLabel_Target,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_Target,"BackgroundTransparency",1)
	SetProperty(TextLabel_Target,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_Target,"BorderSizePixel",0)
	SetProperty(TextLabel_Target,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_Target,"Name","TextLabel_Target")
	SetProperty(TextLabel_Target,"Position",UDim2.new(0.75,0,0.017,0))
	SetProperty(TextLabel_Target,"Size",UDim2.new(0.3,0,0.083,0))
	SetProperty(TextLabel_Target,"Text","Target")
	SetProperty(TextLabel_Target,"TextColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_Target,"TextScaled",true)
	SetProperty(TextLabel_Target,"TextSize",14)
	SetProperty(TextLabel_Target,"TextWrapped",true)
	SetProperty(TextLabel_Target,"Parent",Main)
end
local SelectWelds_Button = Instance.new("ImageButton") do
	SetProperty(SelectWelds_Button,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(SelectWelds_Button,"BorderColor3",Color3.new(0,0,0))
	SetProperty(SelectWelds_Button,"BorderSizePixel",0)
	SetProperty(SelectWelds_Button,"Image","rbxassetid://131950065573162")
	SetProperty(SelectWelds_Button,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(SelectWelds_Button,"Name","SelectWelds_Button")
	SetProperty(SelectWelds_Button,"Position",UDim2.new(0.6,0,0.905,0))
	SetProperty(SelectWelds_Button,"Size",UDim2.new(0,20,0,20))
	SetProperty(SelectWelds_Button,"ZIndex",2)
	SetProperty(SelectWelds_Button,"Parent",Main)
end
local SelectWelds = Instance.new("TextLabel") do
	SetProperty(SelectWelds,"AnchorPoint",Vector2.xAxis)
	SetProperty(SelectWelds,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(SelectWelds,"BackgroundTransparency",1)
	SetProperty(SelectWelds,"BorderColor3",Color3.new(0,0,0))
	SetProperty(SelectWelds,"BorderSizePixel",0)
	SetProperty(SelectWelds,"Interactable",false)
	SetProperty(SelectWelds,"Name","SelectWelds")
	SetProperty(SelectWelds,"Position",UDim2.new(0.6,-5,0.905,0))
	SetProperty(SelectWelds,"Selectable",true)
	SetProperty(SelectWelds,"Size",UDim2.new(0.2,0,0,20))
	SetProperty(SelectWelds,"Text","Select Welds")
	SetProperty(SelectWelds,"TextColor3",Color3.new(1,1,1))
	SetProperty(SelectWelds,"TextXAlignment",Enum.TextXAlignment.Right)
	SetProperty(SelectWelds,"ZIndex",2)
	SetProperty(SelectWelds,"Parent",Main)
end
--}
local Studio = GetProperty((settings::any)(),"Studio")::Studio
local Theme:StudioTheme = Studio.Theme::StudioTheme
local GetColor = GetProperty(Theme,"GetColor")::(Theme:StudioTheme,styleguideitem: Enum.StudioStyleGuideColor,modifier: Enum.StudioStyleGuideModifier?)->Color3
local gc = Studio.ThemeChanged:Connect(function():()
	Theme = Studio.Theme::StudioTheme
end)
plugin.Unloading:Once(function():()
	gc:Disconnect()
end)
local Dark = GetColor(Theme,Enum.StudioStyleGuideColor.Dark)

SetProperty(Main,"Parent",Widget)
Connect(GetProperty(Open_UI_Button,"Click")::RBXScriptSignal,function():()
	SetProperty(Widget,"Enabled",not GetProperty(Widget,"Enabled")::boolean)
end)
