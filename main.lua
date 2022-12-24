function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
LocalScript2 = Instance.new("LocalScript")
Frame3 = Instance.new("Frame")
TextButton4 = Instance.new("TextButton")
LocalScript5 = Instance.new("LocalScript")
TextButton6 = Instance.new("TextButton")
LocalScript7 = Instance.new("LocalScript")
ImageLabel8 = Instance.new("ImageLabel")
LocalScript9 = Instance.new("LocalScript")
TextLabel10 = Instance.new("TextLabel")
TextButton11 = Instance.new("TextButton")
LocalScript12 = Instance.new("LocalScript")
Folder13 = Instance.new("Folder")
TextLabel14 = Instance.new("TextLabel")
TextLabel15 = Instance.new("TextLabel")
Folder16 = Instance.new("Folder")
TextLabel17 = Instance.new("TextLabel")
ImageButton18 = Instance.new("ImageButton")
LocalScript19 = Instance.new("LocalScript")
ImageButton20 = Instance.new("ImageButton")
LocalScript21 = Instance.new("LocalScript")
ImageButton22 = Instance.new("ImageButton")
LocalScript23 = Instance.new("LocalScript")
ScreenGui0.Name = "GameHUBScript"
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui0.DisplayOrder = 3
Frame1.Name = "Main"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.335520923, 0, 0.29411763, 0)
Frame1.Size = UDim2.new(0, 400, 0, 350)
Frame1.BackgroundColor = BrickColor.new("Institutional white")
Frame1.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1.Style = Enum.FrameStyle.DropShadow
LocalScript2.Name = "Dragify"
LocalScript2.Parent = Frame1
table.insert(cors,sandbox(LocalScript2,function()
local UIS = game:GetService("UserInputService")
function dragify(Frame)
    dragToggle = nil
    local dragSpeed = 0.50
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.05), {Position = Position}):Play()
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
end))
Frame3.Name = "Tab"
Frame3.Parent = Frame1
Frame3.Position = UDim2.new(-0.021699829, 0, -0.022495117, 0)
Frame3.Size = UDim2.new(0, 107, 0, 350)
Frame3.BackgroundColor = BrickColor.new("Institutional white")
Frame3.BackgroundColor3 = Color3.new(1, 1, 1)
Frame3.ZIndex = 2
Frame3.Style = Enum.FrameStyle.DropShadow
TextButton4.Name = "Games"
TextButton4.Parent = Frame3
TextButton4.Position = UDim2.new(-0.035699293, 0, 0.378896654, 0)
TextButton4.Size = UDim2.new(0, 99, 0, 36)
TextButton4.BackgroundColor = BrickColor.new("Institutional white")
TextButton4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton4.BackgroundTransparency = 0.800000011920929
TextButton4.BorderSizePixel = 0
TextButton4.ZIndex = 3
TextButton4.Font = Enum.Font.Jura
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.Text = "Games"
TextButton4.TextColor = BrickColor.new("Institutional white")
TextButton4.TextColor3 = Color3.new(1, 1, 1)
TextButton4.TextScaled = true
TextButton4.TextSize = 14
TextButton4.TextWrap = true
TextButton4.TextWrapped = true
LocalScript5.Name = "Games"
LocalScript5.Parent = TextButton4
table.insert(cors,sandbox(LocalScript5,function()
local player = game.Players.LocalPlayer


function onclick()
	player.PlayerGui.GameHUBScript.Main.GamesFolder.Header.Visible = true
	player.PlayerGui.GameHUBScript.Main.GamesFolder.LuckyBlock.Visible = false
	player.PlayerGui.GameHUBScript.Main.GamesFolder.BreakIn.Visible = true
	player.PlayerGui.GameHUBScript.Main.GamesFolder.LoS.Visible = true
	player.PlayerGui.GameHUBScript.Main.InfoFolder.Header.Visible = false
	player.PlayerGui.GameHUBScript.Main.InfoFolder.Content.Visible = false
	
end

script.Parent.MouseButton1Click:connect(onclick)
end))
TextButton6.Name = "Quit"
TextButton6.Parent = Frame3
TextButton6.Position = UDim2.new(-0.0450450853, 0, 0.896039546, 0)
TextButton6.Size = UDim2.new(0, 99, 0, 36)
TextButton6.BackgroundColor = BrickColor.new("Institutional white")
TextButton6.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton6.BackgroundTransparency = 0.800000011920929
TextButton6.BorderSizePixel = 0
TextButton6.ZIndex = 3
TextButton6.Font = Enum.Font.Jura
TextButton6.FontSize = Enum.FontSize.Size14
TextButton6.Text = "Quit"
TextButton6.TextColor = BrickColor.new("Institutional white")
TextButton6.TextColor3 = Color3.new(1, 1, 1)
TextButton6.TextScaled = true
TextButton6.TextSize = 14
TextButton6.TextWrap = true
TextButton6.TextWrapped = true
LocalScript7.Name = "Quit"
LocalScript7.Parent = TextButton6
table.insert(cors,sandbox(LocalScript7,function()
local player = game.Players.LocalPlayer

local TweenService = game:GetService("TweenService")

local targetFrame = player.PlayerGui.GameHUBScript.Main
local targetFrame2 = player.PlayerGui.GameHUBScript.Main.Tab
local startingSize = targetFrame.Size 
local endingSize = UDim2.new(0,2 ,0, 350)

local tweenInfo = TweenInfo.new(0.5, -- Tween duration in seconds
	Enum.EasingStyle.Back, -- Tween easing style
	Enum.EasingDirection.InOut) -- Tween easing direction

local sizeTween = TweenService:Create(targetFrame, -- Target frame
	tweenInfo, -- Tween info
	{Size = endingSize}) -- Property to tween

local tweenInfo2 = TweenInfo.new(0.5, -- Tween duration in seconds
	Enum.EasingStyle.Back, -- Tween easing style
	Enum.EasingDirection.InOut) -- Tween easing direction

local sizeTween2 = TweenService:Create(targetFrame, -- Target frame
	tweenInfo, -- Tween info
	{Size = endingSize}) -- Property to tween


function onclick()

	sizeTween:Play()
	sizeTween2:Play()
	wait(sizeTween.TweenInfo.Time)
	player.PlayerGui.GameHUBScript:Destroy()
end

script.Parent.MouseButton1Click:connect(onclick)
end))
ImageLabel8.Name = "Icon"
ImageLabel8.Parent = Frame3
ImageLabel8.Position = UDim2.new(-0.00896360911, 0, 0.0129855797, 0)
ImageLabel8.Size = UDim2.new(0, 94, 0, 100)
ImageLabel8.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel8.BackgroundTransparency = 1
ImageLabel8.BorderSizePixel = 0
ImageLabel8.LayoutOrder = 50
ImageLabel8.ZIndex = 5
ImageLabel8.Image = "rbxassetid://11909672388"
ImageLabel8.ScaleType = Enum.ScaleType.Fit
LocalScript9.Name = "RotateCat"
LocalScript9.Parent = ImageLabel8
table.insert(cors,sandbox(LocalScript9,function()
local player = game.Players.LocalPlayer
local me = player.PlayerGui.GameHUBScript.Main.Tab.Icon

while true do
	
	me.Rotation += 1
	
	wait(0.01)
end

end))
TextLabel10.Name = "Title"
TextLabel10.Parent = Frame3
TextLabel10.Position = UDim2.new(-0.0186918732, 0, 0.288048953, 0)
TextLabel10.Size = UDim2.new(0, 93, 0, 30)
TextLabel10.BackgroundColor = BrickColor.new("Institutional white")
TextLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel10.BackgroundTransparency = 1
TextLabel10.ZIndex = 6
TextLabel10.Font = Enum.Font.SourceSans
TextLabel10.FontSize = Enum.FontSize.Size14
TextLabel10.Text = "Game HUB "
TextLabel10.TextColor = BrickColor.new("Institutional white")
TextLabel10.TextColor3 = Color3.new(1, 1, 1)
TextLabel10.TextScaled = true
TextLabel10.TextSize = 14
TextLabel10.TextStrokeColor3 = Color3.new(1, 1, 1)
TextLabel10.TextWrap = true
TextLabel10.TextWrapped = true
TextButton11.Name = "Info"
TextButton11.Parent = Frame3
TextButton11.Position = UDim2.new(-0.0450450853, 0, 0.513182342, 0)
TextButton11.Size = UDim2.new(0, 99, 0, 36)
TextButton11.BackgroundColor = BrickColor.new("Institutional white")
TextButton11.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton11.BackgroundTransparency = 0.800000011920929
TextButton11.BorderSizePixel = 0
TextButton11.ZIndex = 3
TextButton11.Font = Enum.Font.Jura
TextButton11.FontSize = Enum.FontSize.Size14
TextButton11.Text = "Info"
TextButton11.TextColor = BrickColor.new("Institutional white")
TextButton11.TextColor3 = Color3.new(1, 1, 1)
TextButton11.TextScaled = true
TextButton11.TextSize = 14
TextButton11.TextWrap = true
TextButton11.TextWrapped = true
LocalScript12.Name = "Info"
LocalScript12.Parent = TextButton11
table.insert(cors,sandbox(LocalScript12,function()
local player = game.Players.LocalPlayer


function onclick()
	
	player.PlayerGui.GameHUBScript.Main.GamesFolder.Header.Visible = false
	player.PlayerGui.GameHUBScript.Main.GamesFolder.LuckyBlock.Visible = false
	player.PlayerGui.GameHUBScript.Main.GamesFolder.BreakIn.Visible = false
	player.PlayerGui.GameHUBScript.Main.GamesFolder.LoS.Visible = false
	player.PlayerGui.GameHUBScript.Main.InfoFolder.Header.Visible = true
	player.PlayerGui.GameHUBScript.Main.InfoFolder.Content.Visible = true
	
end

script.Parent.MouseButton1Click:connect(onclick)
end))
Folder13.Name = "InfoFolder"
Folder13.Parent = Frame1
TextLabel14.Name = "Header"
TextLabel14.Parent = Folder13
TextLabel14.Position = UDim2.new(0.248546585, 0, 0.0136326384, 0)
TextLabel14.Visible = false
TextLabel14.Size = UDim2.new(0, 289, 0, 50)
TextLabel14.BackgroundColor = BrickColor.new("Institutional white")
TextLabel14.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Font = Enum.Font.Ubuntu
TextLabel14.FontSize = Enum.FontSize.Size14
TextLabel14.Text = "Info"
TextLabel14.TextColor = BrickColor.new("Institutional white")
TextLabel14.TextColor3 = Color3.new(1, 1, 1)
TextLabel14.TextScaled = true
TextLabel14.TextSize = 14
TextLabel14.TextWrap = true
TextLabel14.TextWrapped = true
TextLabel15.Name = "Content"
TextLabel15.Parent = Folder13
TextLabel15.Position = UDim2.new(0.257530063, 0, 0.163825512, 0)
TextLabel15.Visible = false
TextLabel15.Size = UDim2.new(0, 281, 0, 270)
TextLabel15.BackgroundColor = BrickColor.new("Institutional white")
TextLabel15.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel15.BackgroundTransparency = 1
TextLabel15.Font = Enum.Font.Ubuntu
TextLabel15.FontSize = Enum.FontSize.Size14
TextLabel15.Text = "This hub is made by playlegitbroski AKA z01tz to show the games I made scripts for! This hub will help you take the scripts and get you to the exact game so you don't have to search for it."
TextLabel15.TextColor = BrickColor.new("Institutional white")
TextLabel15.TextColor3 = Color3.new(1, 1, 1)
TextLabel15.TextScaled = true
TextLabel15.TextSize = 14
TextLabel15.TextWrap = true
TextLabel15.TextWrapped = true
Folder16.Name = "GamesFolder"
Folder16.Parent = Frame1
TextLabel17.Name = "Header"
TextLabel17.Parent = Folder16
TextLabel17.Position = UDim2.new(0.248546585, 0, 0.0136326384, 0)
TextLabel17.Size = UDim2.new(0, 289, 0, 50)
TextLabel17.BackgroundColor = BrickColor.new("Institutional white")
TextLabel17.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel17.BackgroundTransparency = 1
TextLabel17.Font = Enum.Font.Ubuntu
TextLabel17.FontSize = Enum.FontSize.Size14
TextLabel17.Text = "Games"
TextLabel17.TextColor = BrickColor.new("Institutional white")
TextLabel17.TextColor3 = Color3.new(1, 1, 1)
TextLabel17.TextScaled = true
TextLabel17.TextSize = 14
TextLabel17.TextWrap = true
TextLabel17.TextWrapped = true
ImageButton18.Name = "LuckyBlock"
ImageButton18.Parent = Folder16
ImageButton18.Position = UDim2.new(0.274999976, 0, 0.162857145, 0)
ImageButton18.Size = UDim2.new(0, 100, 0, 100)
ImageButton18.BackgroundColor = BrickColor.new("Institutional white")
ImageButton18.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton18.BorderSizePixel = 5
ImageButton18.ZIndex = 123
ImageButton18.Image = "rbxassetid://11910093736"
LocalScript19.Name = "TeleporToLuckyblock"
LocalScript19.Parent = ImageButton18
table.insert(cors,sandbox(LocalScript19,function()
function onclick()
	
	game.StarterGui:SetCore("SendNotification",{
		Title = "Loadstring copied to clipboard!";
		Text = "Paste the loadstring in your executor, teleporting in 5 seconds!";
		Icon = "";
		Duration = 3;
	})
	
	
	setclipboard("loadstring(game:HttpGet(('https://raw.githubusercontent.com/ValkopDev/lankyboxguiH/main/main.lua'),true))()")
	wait(5)
	local tpService = game:GetService("TeleportService"):Teleport(662417684,game.Players.LocalPlayer)
	
end
script.Parent.MouseButton1Click:connect(onclick)
end))
ImageButton20.Name = "BreakIn"
ImageButton20.Parent = Folder16
ImageButton20.Position = UDim2.new(0.587499976, 0, 0.162857145, 0)
ImageButton20.Size = UDim2.new(0, 100, 0, 100)
ImageButton20.BackgroundColor = BrickColor.new("Institutional white")
ImageButton20.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton20.BorderSizePixel = 5
ImageButton20.ZIndex = 123
ImageButton20.Image = "rbxassetid://11910903394"
LocalScript21.Name = "TeleporToLuckyblock"
LocalScript21.Parent = ImageButton20
table.insert(cors,sandbox(LocalScript21,function()
function onclick()
	
	game.StarterGui:SetCore("SendNotification",{
		Title = "Loadstring copied to clipboard!";
		Text = "Paste the loadstring in your executor, teleporting in 5 seconds!";
		Icon = "";
		Duration = 3;
	})
	
	
	setclipboard("loadstring(game:HttpGet(('https://raw.githubusercontent.com/ValkopDev/break-in-gui-pls-send-help/main/main.lua'),true))()")
	wait(5)
	local tpService = game:GetService("TeleportService"):Teleport(3851622790,game.Players.LocalPlayer)
	
end
script.Parent.MouseButton1Click:connect(onclick)
end))
ImageButton22.Name = "LoS"
ImageButton22.Parent = Folder16
ImageButton22.Position = UDim2.new(0.279999971, 0, 0.514285684, 0)
ImageButton22.Size = UDim2.new(0, 100, 0, 100)
ImageButton22.BackgroundColor = BrickColor.new("Institutional white")
ImageButton22.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton22.BorderSizePixel = 5
ImageButton22.ZIndex = 123
ImageButton22.Image = "rbxassetid://11910920583"
LocalScript23.Name = "TeleporToLuckyblock"
LocalScript23.Parent = ImageButton22
table.insert(cors,sandbox(LocalScript23,function()
function onclick()
	
	game.StarterGui:SetCore("SendNotification",{
		Title = "Loadstring copied to clipboard!";
		Text = "Paste the loadstring in your executor, teleporting in 5 seconds!";
		Icon = "";
		Duration = 3;
	})
	
	
	setclipboard("loadstring(game:HttpGet(('https://raw.githubusercontent.com/ValkopDev/LeghendOfSpeed/main/main.lua'),true))()")
	wait(5)
	local tpService = game:GetService("TeleportService"):Teleport(3101667897,game.Players.LocalPlayer)
	
end
script.Parent.MouseButton1Click:connect(onclick)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
