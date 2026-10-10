-- Tạo ScreenGui chính
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local SubTitle = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local UIStrokeBox = Instance.new("UIStroke")
local UICornerBox = Instance.new("UICorner")
local ConfirmBtn = Instance.new("TextButton")
local UIStrokeBtn = Instance.new("UIStroke")
local UICornerBtn = Instance.new("UICorner")
local Credit = Instance.new("TextLabel")

-- Xóa GUI cũ nếu đang bật
if game.CoreGui:FindFirstChild("NightHub4DKeySystem") then
    game.CoreGui.NightHub4DKeySystem:Destroy()
end

ScreenGui.Name = "NightHub4DKeySystem"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Khung chính 4D siêu nét
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -120)
MainFrame.Size = UDim2.new(0, 360, 0, 235)

UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = MainFrame

-- Viền Neon 4D phát sáng siêu nét
UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(0, 220, 255)
UIStroke.Thickness = 2.5
UIStroke.Transparency = 0.2

-- Tiêu đề night hub v2
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 15)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBlack
Title.Text = "✨ night hub v2 ✨"
Title.TextColor3 = Color3.fromRGB(0, 245, 255)
Title.TextSize = 24

-- Tên phần get key
SubTitle.Name = "SubTitle"
SubTitle.Parent = MainFrame
SubTitle.BackgroundTransparency = 1
SubTitle.Position = UDim2.new(0, 0, 0, 48)
SubTitle.Size = UDim2.new(1, 0, 0, 20)
SubTitle.Font = Enum.Font.GothamBold
SubTitle.Text = "night hub - keyless"
SubTitle.TextColor3 = Color3.fromRGB(200, 200, 220)
SubTitle.TextSize = 13

-- Ô nhập Key 4D
KeyBox.Name = "KeyBox"
KeyBox.Parent = MainFrame
KeyBox.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
KeyBox.Position = UDim2.new(0.1, 0, 0, 85)
KeyBox.Size = UDim2.new(0.8, 0, 0, 42)
KeyBox.Font = Enum.Font.GothamSemibold
KeyBox.PlaceholderText = "🔑 Nhập Key tại đây..."
KeyBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 140)
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextSize = 14
KeyBox.ClearTextOnFocus = false

UICornerBox.CornerRadius = UDim.new(0, 10)
UICornerBox.Parent = KeyBox

UIStrokeBox.Parent = KeyBox
UIStrokeBox.Color = Color3.fromRGB(80, 80, 120)
UIStrokeBox.Thickness = 1.5

-- Nút xác nhận key 4D
ConfirmBtn.Name = "ConfirmBtn"
ConfirmBtn.Parent = MainFrame
ConfirmBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 255)
ConfirmBtn.Position = UDim2.new(0.1, 0, 0, 142)
ConfirmBtn.Size = UDim2.new(0.8, 0, 0, 40)
ConfirmBtn.Font = Enum.Font.GothamBold
ConfirmBtn.Text = "XÁC NHẬN KEY"
ConfirmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmBtn.TextSize = 15

UICornerBtn.CornerRadius = UDim.new(0, 10)
UICornerBtn.Parent = ConfirmBtn

UIStrokeBtn.Parent = ConfirmBtn
UIStrokeBtn.Color = Color3.fromRGB(255, 255, 255)
UIStrokeBtn.Transparency = 0.5
UIStrokeBtn.Thickness = 1

-- Dòng chữ credit ở dưới
Credit.Name = "Credit"
Credit.Parent = MainFrame
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0, 0, 0, 198)
Credit.Size = UDim2.new(1, 0, 0, 20)
Credit.Font = Enum.Font.GothamBold
Credit.Text = "By : Night & NICE PRIME"
Credit.TextColor3 = Color3.fromRGB(150, 150, 170)
Credit.TextSize = 11

-- Xử lý sự kiện bấm nút xác nhận
ConfirmBtn.MouseButton1Click:Connect(function()
    local enteredKey = KeyBox.Text
    local correctKey = "niceprime_7777"
    
    if enteredKey == correctKey then
        ConfirmBtn.Text = "✔ THÀNH CÔNG!"
        ConfirmBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
        UIStrokeBtn.Color = Color3.fromRGB(0, 255, 127)
        task.wait(0.8)
        
        -- Xóa bảng UI Get Key
        ScreenGui:Destroy()
        
        -- Load script chính
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/StealEggOnly.luau"))()
    else
        ConfirmBtn.Text = "❌ SAI KEY RỒI!"
        ConfirmBtn.BackgroundColor3 = Color3.fromRGB(255, 69, 58)
        UIStrokeBtn.Color = Color3.fromRGB(255, 69, 58)
        task.wait(1)
        ConfirmBtn.Text = "XÁC NHẬN KEY"
        ConfirmBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 255)
        UIStrokeBtn.Color = Color3.fromRGB(255, 255, 255)
    end
end)
