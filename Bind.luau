--!strict
--!optimize 2

--Constants
local UDim2_one_zero = UDim2.fromScale(1,0)
local UDim2_zero = UDim2.fromScale(0,0)
local UDim2_one = UDim2.fromScale(1,1)
local UDim2_half = UDim2.fromScale(0.5,0.5)
local UDim2_point_one = UDim2.fromScale(0.1,0.1)
local UDim2_0_5px = UDim.new(0,5)
local Vector2_Half = Vector2.new(0.5,0.5)
local Vector2_One_Half = Vector2.new(1,0.5)
local Vector2_Zero_Half = Vector2.new(0,0.5)
local Vector2_Half_One = Vector2.new(0.5,1)
local Vector2_Half_Zero = Vector2.new(0.5,0)
local SourceSansPro = Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
--temp cache
local UDim2_1__u40__1__0 = UDim2.new(1,-40,1,0)
local UDim2_new0_2__0__0_083__0 = UDim2.fromScale(0.2,0.083)
local UDim2_0_3__0_5 = UDim2.fromScale(0.3,0.5)
local UDim2_1__u12__0__20 = UDim2.new(1,-12,0,20)
local UDim_1_0 = UDim.new(1,0)
local UDim20__20__0__20 = UDim2.fromOffset(20,20)
local UDim2_1__0__0__5 = UDim2.new(1,0,0,5)
local UDim20__200 = UDim2.fromOffset(0,200)
local UDim20__25__1__0 = UDim2.new(0,25,1,0)
local UDim20_3__u10__0_1__0 = UDim2.new(0.3,-10,0.1,0)
local UDim2_1__u30__1__0 = UDim2.new(1,-30,1,0)
local UDim2_5__0 = UDim2.fromOffset(5,0)
local UDim2_0_9 = UDim2.fromScale(0.9,0.9)
--Instance metamethods
local SetProperty:(ins:Instance,prop:string,val:any)->()
local GetProperty:(ins:Instance|RBXScriptSignal,prop:string)->any
local GetVector2:(vec:Vector2,val:"X"|"Y")->number
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
xpcall(function():()
	return (Vector2.zero::any)[nil]
end,function():()
	GetVector2 = debug.info(2,"f")
end)

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
	SetProperty(Weld,"FontFace",SourceSansPro)
	SetProperty(Weld,"Name","Weld")
	SetProperty(Weld,"Position",UDim2.fromScale(0.5,0.85))
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
	SetProperty(Base,"Size",UDim2_0_3__0_5)
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
	SetProperty(SampleBase,"Size",UDim2_1__u12__0__20)
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
	SetProperty(ColorSample,"Position",UDim2.fromScale(1,0.5))
	SetProperty(ColorSample,"Size",UDim2.fromOffset(15,15))
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
	SetProperty(ImageButton,"Size",UDim2.fromOffset(20,20))
	SetProperty(ImageButton,"ZIndex",4)
	SetProperty(ImageButton,"Parent",SampleBase)
end
local TextLabel = Instance.new("TextLabel") do
	SetProperty(TextLabel,"BackgroundColor3",Color3.new(0.459,0.459,0.459))
	SetProperty(TextLabel,"BackgroundTransparency",1)
	SetProperty(TextLabel,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel,"BorderSizePixel",0)
	SetProperty(TextLabel,"FontFace",SourceSansPro)
	SetProperty(TextLabel,"Interactable",false)
	SetProperty(TextLabel,"Position",UDim2.fromOffset(25,0))
	SetProperty(TextLabel,"Size",UDim2_1__u40__1__0)
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
	SetProperty(ClickBox,"FontFace",SourceSansPro)
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
	SetProperty(Targets,"Position",UDim2.fromScale(0.9,0.1))
	SetProperty(Targets,"Selectable",false)
	SetProperty(Targets,"Size",UDim2_0_3__0_5)
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
	SetProperty(SampleTarget,"Size",UDim2_1__u12__0__20)
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
	SetProperty(ColorSample_1,"Position",UDim2.fromScale(0,0.5))
	SetProperty(ColorSample_1,"Size",UDim2.fromOffset(15,15))
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
	SetProperty(ImageButton_1,"Position",UDim2.fromOffset(15,0))
	SetProperty(ImageButton_1,"Selectable",false)
	SetProperty(ImageButton_1,"Size",UDim20__20__0__20)
	SetProperty(ImageButton_1,"ZIndex",4)
	SetProperty(ImageButton_1,"Parent",SampleTarget)
end
local TextLabel_1 = Instance.new("TextLabel") do
	SetProperty(TextLabel_1,"BackgroundColor3",Color3.new(0.459,0.459,0.459))
	SetProperty(TextLabel_1,"BackgroundTransparency",1)
	SetProperty(TextLabel_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_1,"BorderSizePixel",0)
	SetProperty(TextLabel_1,"FontFace",SourceSansPro)
	SetProperty(TextLabel_1,"Interactable",false)
	SetProperty(TextLabel_1,"Position",UDim2.fromOffset(40,0))
	SetProperty(TextLabel_1,"Size",UDim2_1__u40__1__0)
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
	SetProperty(ClickBox_1,"FontFace",SourceSansPro)
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
	SetProperty(WeldOptionsButton_Frame,"Position",UDim2.fromScale(0.5,0.795))
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
	SetProperty(CancelCorneringEffect,"Size",UDim2_1__0__0__5)
	SetProperty(CancelCorneringEffect,"ZIndex",7)
	SetProperty(CancelCorneringEffect,"Visible",false)
	SetProperty(CancelCorneringEffect,"Parent",WeldOptionsButton_Frame)
end
local WeldOptionsButton = Instance.new("TextButton") do
	SetProperty(WeldOptionsButton,"BackgroundColor3",Color3.new(0.282,0.282,0.282))
	SetProperty(WeldOptionsButton,"BorderColor3",Color3.new(0,0,0))
	SetProperty(WeldOptionsButton,"BorderSizePixel",0)
	SetProperty(WeldOptionsButton,"FontFace",SourceSansPro)
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
	SetProperty(WeldOptions_Frame,"Position",UDim2.fromScale(0.5,0.713))
	SetProperty(WeldOptions_Frame,"Selectable",true)
	SetProperty(WeldOptions_Frame,"SelectionGroup",true)
	SetProperty(WeldOptions_Frame,"Size",UDim2.fromScale(0.2,0.613))
	SetProperty(WeldOptions_Frame,"ZIndex",2)
	SetProperty(WeldOptions_Frame,"Visible",false)
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
	SetProperty(CancelCorneringEffect_1,"Position",UDim2.fromScale(0,1))
	SetProperty(CancelCorneringEffect_1,"Size",UDim2_1__0__0__5)
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

--local UIListLayout_WeldOptions = Instance.new("UIListLayout",WeldOptions)
--SetProperty(UIListLayout_WeldOptions,"SortOrder",Enum.SortOrder.LayoutOrder)
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
local wo_sz_cache_scrollbar = UDim2.new(1,-12,0,25)
local wo_sz_cache_free = UDim2.new(1,0,0,25)
--Quick cache^
local WO_Motor6D = Instance.new("TextButton") do
	SetProperty(WO_Motor6D,"BorderSizePixel",0)
	SetProperty(WO_Motor6D,"FontFace",SourceSansPro)
	SetProperty(WO_Motor6D,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_Motor6D,"Text","Motor6D")
	SetProperty(WO_Motor6D,"TextScaled",true)
	SetProperty(WO_Motor6D,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_Motor6D),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_Motor6D,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 1
		SetProperty(WeldOptionsButton,"Text","Motor6D")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_Motor6D,"Parent",WeldOptions)
end
local WO_WeldConstraint = Instance.new("TextButton") do
	SetProperty(WO_WeldConstraint,"BorderSizePixel",0)
	SetProperty(WO_WeldConstraint,"FontFace",SourceSansPro)
	SetProperty(WO_WeldConstraint,"Position",UDim2.fromOffset(0,25))
	SetProperty(WO_WeldConstraint,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_WeldConstraint,"Text","WeldConstraint")
	SetProperty(WO_WeldConstraint,"TextScaled",true)
	SetProperty(WO_WeldConstraint,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_WeldConstraint),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_WeldConstraint,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 2
		SetProperty(WeldOptionsButton,"Text","WeldConstraint")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_WeldConstraint,"Parent",WeldOptions)
end
local WO_Weld = Instance.new("TextButton") do
	SetProperty(WO_Weld,"BorderSizePixel",0)
	SetProperty(WO_Weld,"FontFace",SourceSansPro)
	SetProperty(WO_Weld,"Position",UDim2.fromOffset(0,50))
	SetProperty(WO_Weld,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_Weld,"Text","Weld")
	SetProperty(WO_Weld,"TextScaled",true)
	SetProperty(WO_Weld,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_Weld),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_Weld,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 3
		SetProperty(WeldOptionsButton,"Text","Weld")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_Weld,"Parent",WeldOptions)
end
local WO_ManualWeld = Instance.new("TextButton") do
	SetProperty(WO_ManualWeld,"BorderSizePixel",0)
	SetProperty(WO_ManualWeld,"FontFace",SourceSansPro)
	SetProperty(WO_ManualWeld,"Position",UDim2.fromOffset(0,75))
	SetProperty(WO_ManualWeld,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_ManualWeld,"Text","<s>ManualWeld</s>")
	SetProperty(WO_ManualWeld,"TextScaled",true)
	SetProperty(WO_ManualWeld,"RichText",true)
	SetProperty(WO_ManualWeld,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_ManualWeld),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_ManualWeld,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 4
		SetProperty(WeldOptionsButton,"Text","ManualWeld")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_ManualWeld,"Parent",WeldOptions)
end
local WO_Snap = Instance.new("TextButton") do
	SetProperty(WO_Snap,"BorderSizePixel",0)
	SetProperty(WO_Snap,"FontFace",SourceSansPro)
	SetProperty(WO_Snap,"Position",UDim2.fromOffset(0,100))
	SetProperty(WO_Snap,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_Snap,"Text","<s>Snap</s>")
	SetProperty(WO_Snap,"TextScaled",true)
	SetProperty(WO_Snap,"RichText",true)
	SetProperty(WO_Snap,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_Snap),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_Snap,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 5
		SetProperty(WeldOptionsButton,"Text","Snap")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_Snap,"Parent",WeldOptions)
end
local WO_Glue = Instance.new("TextButton") do
	SetProperty(WO_Glue,"BorderSizePixel",0)
	SetProperty(WO_Glue,"FontFace",SourceSansPro)
	SetProperty(WO_Glue,"Position",UDim2.fromOffset(0,125))
	SetProperty(WO_Glue,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_Glue,"Text","<s>Glue</s>")
	SetProperty(WO_Glue,"TextScaled",true)
	SetProperty(WO_Glue,"RichText",true)
	SetProperty(WO_Glue,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_Glue),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_Glue,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 6
		SetProperty(WeldOptionsButton,"Text","Glue")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_Glue,"Parent",WeldOptions)
end
local WO_RotateV = Instance.new("TextButton") do
	SetProperty(WO_RotateV,"BorderSizePixel",0)
	SetProperty(WO_RotateV,"FontFace",SourceSansPro)
	SetProperty(WO_RotateV,"Position",UDim2.fromOffset(0,150))
	SetProperty(WO_RotateV,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_RotateV,"Text","<s>RotateV</s>")
	SetProperty(WO_RotateV,"TextScaled",true)
	SetProperty(WO_RotateV,"RichText",true)
	SetProperty(WO_RotateV,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_RotateV),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_RotateV,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 7
		SetProperty(WeldOptionsButton,"Text","RotateV")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_RotateV,"Parent",WeldOptions)
end
local WO_Rotate = Instance.new("TextButton") do
	SetProperty(WO_Rotate,"BorderSizePixel",0)
	SetProperty(WO_Rotate,"FontFace",SourceSansPro)
	SetProperty(WO_Rotate,"Position",UDim2.fromOffset(0,175))
	SetProperty(WO_Rotate,"Size",wo_sz_cache_scrollbar)
	SetProperty(WO_Rotate,"Text","<s>Rotate</s>")
	SetProperty(WO_Rotate,"TextScaled",true)
	SetProperty(WO_Rotate,"RichText",true)
	SetProperty(WO_Rotate,"ZIndex",5)
	SetProperty(Instance.new("UICorner",WO_Rotate),"CornerRadius",UDim2_0_5px)
	Connect(GetProperty(WO_Rotate,"MouseButton1Click")::RBXScriptSignal,function():()
		WeldOption_State = 8
		SetProperty(WeldOptionsButton,"Text","Rotate")
		SetProperty(CancelCorneringEffect,"Visible",false)
		SetProperty(WeldOptions_Frame,"Visible",false)
	end)
	SetProperty(WO_Rotate,"Parent",WeldOptions)
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
	SetProperty(L_PivotToOffset,"Size",UDim20_3__u10__0_1__0)
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
	SetProperty(TextLabel_2,"Position",UDim2_5__0)
	SetProperty(TextLabel_2,"Size",UDim2_1__u30__1__0)
	SetProperty(TextLabel_2,"Text","Pivot To Offset")
	SetProperty(TextLabel_2,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_2,"TextScaled",true)
	SetProperty(TextLabel_2,"TextSize",14)
	SetProperty(TextLabel_2,"TextWrapped",true)
	SetProperty(TextLabel_2,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_2,"ZIndex",3)
	SetProperty(TextLabel_2,"Parent",L_PivotToOffset)
end
local ButtonSplit = Instance.new("Frame") do
	SetProperty(ButtonSplit,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit,"BackgroundTransparency",1)
	SetProperty(ButtonSplit,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit,"BorderSizePixel",0)
	SetProperty(ButtonSplit,"LayoutOrder",2)
	SetProperty(ButtonSplit,"Name","ButtonSplit")
	SetProperty(ButtonSplit,"Position",UDim2_one_zero)
	SetProperty(ButtonSplit,"Size",UDim20__25__1__0)
	SetProperty(ButtonSplit,"ZIndex",3)
	SetProperty(ButtonSplit,"Parent",L_PivotToOffset)
end
--[Children] {
local UIStroke_3 = Instance.new("UIStroke",ButtonSplit)
SetProperty(UIStroke_3,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
local ImageButton_2 = Instance.new("ImageButton") do
	SetProperty(ImageButton_2,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_2,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_2,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_2,"BorderSizePixel",0)
	SetProperty(ImageButton_2,"Image","rbxassetid://131950065573162")
	SetProperty(ImageButton_2,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_2,"Position",UDim2_half)
	SetProperty(ImageButton_2,"Size",UDim2_0_9)
	SetProperty(ImageButton_2,"ZIndex",4)
	SetProperty(ImageButton_2,"Parent",ButtonSplit)
end
--[Children] {
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint",ImageButton_2)
--}
--}
local UIStroke_4 = Instance.new("UIStroke",L_PivotToOffset)
SetProperty(UIStroke_4,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)

--}
local L_ParentToBase = Instance.new("Frame") do
	SetProperty(L_ParentToBase,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(L_ParentToBase,"BorderColor3",Color3.new(0,0,0))
	SetProperty(L_ParentToBase,"BorderSizePixel",0)
	SetProperty(L_ParentToBase,"Name","L_ParentToBase")
	SetProperty(L_ParentToBase,"Position",UDim2.new(0.1,5,0.7,10))
	SetProperty(L_ParentToBase,"Size",UDim20_3__u10__0_1__0)
	SetProperty(L_ParentToBase,"ZIndex",2)
	SetProperty(L_ParentToBase,"Parent",Main)
end
--[Children] {
local UIStroke_5 = Instance.new("UIStroke",L_ParentToBase)
SetProperty(UIStroke_5,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
local ButtonSplit_1 = Instance.new("Frame") do
	SetProperty(ButtonSplit_1,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit_1,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit_1,"BackgroundTransparency",1)
	SetProperty(ButtonSplit_1,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit_1,"BorderSizePixel",0)
	SetProperty(ButtonSplit_1,"LayoutOrder",2)
	SetProperty(ButtonSplit_1,"Name","ButtonSplit")
	SetProperty(ButtonSplit_1,"Position",UDim2_one_zero)
	SetProperty(ButtonSplit_1,"Size",UDim20__25__1__0)
	SetProperty(ButtonSplit_1,"ZIndex",3)
	SetProperty(ButtonSplit_1,"Parent",L_ParentToBase)
end
--[Children] {
local UIStroke_6 = Instance.new("UIStroke",ButtonSplit_1)
SetProperty(UIStroke_6,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
local ImageButton_3 = Instance.new("ImageButton") do
	SetProperty(ImageButton_3,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_3,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_3,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_3,"BorderSizePixel",0)
	SetProperty(ImageButton_3,"Image","rbxassetid://131950065573162")
	SetProperty(ImageButton_3,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_3,"Position",UDim2_half)
	SetProperty(ImageButton_3,"Size",UDim2_0_9)
	SetProperty(ImageButton_3,"ZIndex",4)
	SetProperty(ImageButton_3,"Parent",ButtonSplit_1)
end
--[Children] {
local UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint",ImageButton_3)
--}
--}
local TextLabel_3 = Instance.new("TextLabel") do
	SetProperty(TextLabel_3,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_3,"BackgroundTransparency",1)
	SetProperty(TextLabel_3,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_3,"BorderSizePixel",0)
	SetProperty(TextLabel_3,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_3,"LayoutOrder",1)
	SetProperty(TextLabel_3,"Position",UDim2_5__0)
	SetProperty(TextLabel_3,"Size",UDim2_1__u30__1__0)
	SetProperty(TextLabel_3,"Text","Parent Weld To Base")
	SetProperty(TextLabel_3,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_3,"TextScaled",true)
	SetProperty(TextLabel_3,"TextSize",14)
	SetProperty(TextLabel_3,"TextWrapped",true)
	SetProperty(TextLabel_3,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_3,"ZIndex",3)
	SetProperty(TextLabel_3,"Parent",L_ParentToBase)
end
--}
local R_NameAsTarget = Instance.new("Frame") do
	SetProperty(R_NameAsTarget,"AnchorPoint",Vector2.xAxis)
	SetProperty(R_NameAsTarget,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(R_NameAsTarget,"BorderColor3",Color3.new(0,0,0))
	SetProperty(R_NameAsTarget,"BorderSizePixel",0)
	SetProperty(R_NameAsTarget,"Name","R_NameAsTarget")
	SetProperty(R_NameAsTarget,"Position",UDim2.new(0.9,-5,0.6,5))
	SetProperty(R_NameAsTarget,"Size",UDim20_3__u10__0_1__0)
	SetProperty(R_NameAsTarget,"ZIndex",2)
	SetProperty(R_NameAsTarget,"Parent",Main)
end
--[Children] {
local UIStroke_7 = Instance.new("UIStroke",R_NameAsTarget)
SetProperty(UIStroke_7,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
local ButtonSplit_2 = Instance.new("Frame") do
	SetProperty(ButtonSplit_2,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit_2,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit_2,"BackgroundTransparency",1)
	SetProperty(ButtonSplit_2,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit_2,"BorderSizePixel",0)
	SetProperty(ButtonSplit_2,"LayoutOrder",2)
	SetProperty(ButtonSplit_2,"Name","ButtonSplit")
	SetProperty(ButtonSplit_2,"Position",UDim2_one_zero)
	SetProperty(ButtonSplit_2,"Size",UDim20__25__1__0)
	SetProperty(ButtonSplit_2,"ZIndex",3)
	SetProperty(ButtonSplit_2,"Parent",R_NameAsTarget)
end
--[Children] {
local UIStroke_8 = Instance.new("UIStroke",ButtonSplit_2)
SetProperty(UIStroke_8,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
local ImageButton_4 = Instance.new("ImageButton") do
	SetProperty(ImageButton_4,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_4,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_4,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_4,"BorderSizePixel",0)
	SetProperty(ImageButton_4,"Image","rbxassetid://131950065573162")
	SetProperty(ImageButton_4,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_4,"Position",UDim2_half)
	SetProperty(ImageButton_4,"Size",UDim2_0_9)
	SetProperty(ImageButton_4,"ZIndex",4)
	SetProperty(ImageButton_4,"Parent",ButtonSplit_2)
end
--[Children] {
Instance.new("UIAspectRatioConstraint",ImageButton_4)
--}
--}
local TextLabel_4 = Instance.new("TextLabel") do
	SetProperty(TextLabel_4,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_4,"BackgroundTransparency",1)
	SetProperty(TextLabel_4,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_4,"BorderSizePixel",0)
	SetProperty(TextLabel_4,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_4,"LayoutOrder",1)
	SetProperty(TextLabel_4,"Position",UDim2_5__0)
	SetProperty(TextLabel_4,"Size",UDim2_1__u30__1__0)
	SetProperty(TextLabel_4,"Text","Name Weld As Target")
	SetProperty(TextLabel_4,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_4,"TextScaled",true)
	SetProperty(TextLabel_4,"TextSize",14)
	SetProperty(TextLabel_4,"TextWrapped",true)
	SetProperty(TextLabel_4,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_4,"ZIndex",3)
	SetProperty(TextLabel_4,"Parent",R_NameAsTarget)
end
--}
local R_ChainLink = Instance.new("Frame") do
	SetProperty(R_ChainLink,"AnchorPoint",Vector2.xAxis)
	SetProperty(R_ChainLink,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(R_ChainLink,"BorderColor3",Color3.new(0,0,0))
	SetProperty(R_ChainLink,"BorderSizePixel",0)
	SetProperty(R_ChainLink,"Name","R_ChainLink")
	SetProperty(R_ChainLink,"Position",UDim2.new(0.9,-5,0.7,10))
	SetProperty(R_ChainLink,"Size",UDim20_3__u10__0_1__0)
	SetProperty(R_ChainLink,"ZIndex",2)
	SetProperty(R_ChainLink,"Parent",Main)
end
--[Children] {
local UIStroke_9 = Instance.new("UIStroke",R_ChainLink)
SetProperty(UIStroke_9,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)

local ButtonSplit_3 = Instance.new("Frame") do
	SetProperty(ButtonSplit_3,"AnchorPoint",Vector2.xAxis)
	SetProperty(ButtonSplit_3,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(ButtonSplit_3,"BackgroundTransparency",1)
	SetProperty(ButtonSplit_3,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ButtonSplit_3,"BorderSizePixel",0)
	SetProperty(ButtonSplit_3,"LayoutOrder",2)
	SetProperty(ButtonSplit_3,"Name","ButtonSplit")
	SetProperty(ButtonSplit_3,"Position",UDim2_one_zero)
	SetProperty(ButtonSplit_3,"Size",UDim20__25__1__0)
	SetProperty(ButtonSplit_3,"ZIndex",3)
	SetProperty(ButtonSplit_3,"Parent",R_ChainLink)
end
--[Children] {
local UIStroke_10 = Instance.new("UIStroke",ButtonSplit_3)
SetProperty(UIStroke_10,"ApplyStrokeMode",Enum.ApplyStrokeMode.Border)
local ImageButton_5 = Instance.new("ImageButton") do
	SetProperty(ImageButton_5,"AnchorPoint",Vector2_Half)
	SetProperty(ImageButton_5,"BackgroundColor3",Color3.new(0.369,0.369,0.369))
	SetProperty(ImageButton_5,"BorderColor3",Color3.new(0,0,0))
	SetProperty(ImageButton_5,"BorderSizePixel",0)
	SetProperty(ImageButton_5,"Image","rbxassetid://78966475852487")
	SetProperty(ImageButton_5,"ImageColor3",Color3.new(0.867,0.867,0.867))
	SetProperty(ImageButton_5,"Position",UDim2_half)
	SetProperty(ImageButton_5,"Size",UDim2_0_9)
	SetProperty(ImageButton_5,"ZIndex",4)
	SetProperty(ImageButton_5,"Parent",ButtonSplit_3)
end
--[Children] {
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint",ImageButton_5)
--}
--}
local TextLabel_5 = Instance.new("TextLabel") do
	SetProperty(TextLabel_5,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_5,"BackgroundTransparency",1)
	SetProperty(TextLabel_5,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_5,"BorderSizePixel",0)
	SetProperty(TextLabel_5,"FontFace",Font.new("rbxasset://fonts/families/SourceSansPro.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal))
	SetProperty(TextLabel_5,"LayoutOrder",1)
	SetProperty(TextLabel_5,"Position",UDim2_5__0)
	SetProperty(TextLabel_5,"Size",UDim2_1__u30__1__0)
	SetProperty(TextLabel_5,"Text","Decentralize Weld")
	SetProperty(TextLabel_5,"TextColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_5,"TextScaled",true)
	SetProperty(TextLabel_5,"TextSize",14)
	SetProperty(TextLabel_5,"TextWrapped",true)
	SetProperty(TextLabel_5,"TextXAlignment",Enum.TextXAlignment.Left)
	SetProperty(TextLabel_5,"ZIndex",3)
	SetProperty(TextLabel_5,"Parent",R_ChainLink)
end
--}
local TextLabel_Base = Instance.new("TextLabel") do
	SetProperty(TextLabel_Base,"AnchorPoint",Vector2_Half_Zero)
	SetProperty(TextLabel_Base,"BackgroundColor3",Color3.new(1,1,1))
	SetProperty(TextLabel_Base,"BackgroundTransparency",1)
	SetProperty(TextLabel_Base,"BorderColor3",Color3.new(0,0,0))
	SetProperty(TextLabel_Base,"BorderSizePixel",0)
	SetProperty(TextLabel_Base,"FontFace",SourceSansPro)
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
	SetProperty(TextLabel_Target,"FontFace",SourceSansPro)
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
	SetProperty(SelectWelds_Button,"Size",UDim20__20__0__20)
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

local function UpdateWeldOptions_List():()
	local AbsoluteSize = GetProperty(WeldOptions,"AbsoluteSize")::Vector2
	if GetVector2(AbsoluteSize,"Y")<200 then
		SetProperty(WO_Motor6D,"Size",wo_sz_cache_scrollbar)
		SetProperty(WO_WeldConstraint,"Size",wo_sz_cache_scrollbar)
		SetProperty(WO_Weld,"Size",wo_sz_cache_scrollbar)
		SetProperty(WO_ManualWeld,"Size",wo_sz_cache_scrollbar)
		SetProperty(WO_Snap,"Size",wo_sz_cache_scrollbar)
		SetProperty(WO_Glue,"Size",wo_sz_cache_scrollbar)
		SetProperty(WO_RotateV,"Size",wo_sz_cache_scrollbar)
		SetProperty(WO_Rotate,"Size",wo_sz_cache_scrollbar)
		SetProperty(WeldOptions,"CanvasSize",UDim20__200)
		return
	end
	SetProperty(WO_Motor6D,"Size",wo_sz_cache_free)
	SetProperty(WO_WeldConstraint,"Size",wo_sz_cache_free)
	SetProperty(WO_Weld,"Size",wo_sz_cache_free)
	SetProperty(WO_ManualWeld,"Size",wo_sz_cache_free)
	SetProperty(WO_Snap,"Size",wo_sz_cache_free)
	SetProperty(WO_Glue,"Size",wo_sz_cache_free)
	SetProperty(WO_RotateV,"Size",wo_sz_cache_free)
	SetProperty(WO_Rotate,"Size",wo_sz_cache_free)
	SetProperty(WeldOptions,"CanvasSize",UDim2_zero)
end
WeldOptions:GetPropertyChangedSignal("AbsoluteSize"):Connect(UpdateWeldOptions_List)
UpdateWeldOptions_List()

Connect(GetProperty(WeldOptionsButton,"MouseButton1Click")::RBXScriptSignal,function():()
	SetProperty(CancelCorneringEffect,"Visible",true)
	SetProperty(WeldOptions_Frame,"Visible",true)
end)


--theme
local Studio = GetProperty((settings::any)(),"Studio")::Studio
local Theme:StudioTheme = Studio.Theme::StudioTheme
local GetColor = GetProperty(Theme,"GetColor")::(Theme:StudioTheme,styleguideitem: Enum.StudioStyleGuideColor,modifier: Enum.StudioStyleGuideModifier?)->Color3
local Dark = GetColor(Theme,Enum.StudioStyleGuideColor.Dark)
local BrightText = GetColor(Theme,Enum.StudioStyleGuideColor.BrightText)
local ScrollBar_Color = GetColor(Theme,Enum.StudioStyleGuideColor.ScrollBar)
local ScrollBar_Color_BACKGROUND = GetColor(Theme,Enum.StudioStyleGuideColor.ScrollBarBackground)
local Border_Color = GetColor(Theme,Enum.StudioStyleGuideColor.Mid)
local Tab_Color = GetColor(Theme,Enum.StudioStyleGuideColor.Tab)
SetProperty(L_PivotToOffset,"BackgroundColor3",Tab_Color)
SetProperty(L_ParentToBase,"BackgroundColor3",Tab_Color)
SetProperty(R_NameAsTarget,"BackgroundColor3",Tab_Color)
SetProperty(R_ChainLink,"BackgroundColor3",Tab_Color)

SetProperty(TextLabel_2,"TextColor3",BrightText)
SetProperty(TextLabel_3,"TextColor3",BrightText)
SetProperty(TextLabel_4,"TextColor3",BrightText)
SetProperty(TextLabel_5,"TextColor3",BrightText)
SetProperty(WeldOptionsButton,"TextColor3",BrightText)


SetProperty(UIStroke,"Color",Border_Color)
SetProperty(UIStroke_1,"Color",Border_Color)
SetProperty(UIStroke_2,"Color",Border_Color)
SetProperty(UIStroke_3,"Color",Border_Color)
SetProperty(UIStroke_4,"Color",Border_Color)
SetProperty(UIStroke_5,"Color",Border_Color)
SetProperty(UIStroke_6,"Color",Border_Color)
SetProperty(UIStroke_7,"Color",Border_Color)
SetProperty(UIStroke_8,"Color",Border_Color)
SetProperty(UIStroke_9,"Color",Border_Color)
SetProperty(UIStroke_10,"Color",Border_Color)
SetProperty(Base,"BackgroundColor3",ScrollBar_Color_BACKGROUND)
SetProperty(WeldOptions,"BackgroundColor3",ScrollBar_Color_BACKGROUND)
SetProperty(Targets,"BackgroundColor3",ScrollBar_Color_BACKGROUND)
SetProperty(Base,"ScrollBarImageColor3",ScrollBar_Color)
SetProperty(Targets,"ScrollBarImageColor3",ScrollBar_Color)
SetProperty(WeldOptions,"ScrollBarImageColor3",ScrollBar_Color)
SetProperty(WO_Motor6D,"BackgroundColor3",Dark)
SetProperty(WO_Motor6D,"TextColor3",BrightText)
SetProperty(WO_WeldConstraint,"BackgroundColor3",Dark)
SetProperty(WO_WeldConstraint,"TextColor3",BrightText)
SetProperty(WO_Weld,"BackgroundColor3",Dark)
SetProperty(WO_Weld,"TextColor3",BrightText)
SetProperty(WO_ManualWeld,"BackgroundColor3",Dark)
SetProperty(WO_ManualWeld,"TextColor3",BrightText)
SetProperty(WO_Snap,"BackgroundColor3",Dark)
SetProperty(WO_Snap,"TextColor3",BrightText)
SetProperty(WO_Glue,"BackgroundColor3",Dark)
SetProperty(WO_Glue,"TextColor3",BrightText)
SetProperty(WO_RotateV,"BackgroundColor3",Dark)
SetProperty(WO_RotateV,"TextColor3",BrightText)
SetProperty(WO_Rotate,"BackgroundColor3",Dark)
SetProperty(WO_Rotate,"TextColor3",BrightText)
local gc = Connect(GetProperty(Studio,"ThemeChanged")::RBXScriptSignal,function():()
	Theme = Studio.Theme::StudioTheme
end)

;(GetProperty(plugin,"Unloading")::RBXScriptSignal):Once(function():()
	gc:Disconnect()
end)



SetProperty(Main,"Parent",Widget)
Connect(GetProperty(Open_UI_Button,"Click")::RBXScriptSignal,function():()
	SetProperty(Widget,"Enabled",not GetProperty(Widget,"Enabled")::boolean)
end)
