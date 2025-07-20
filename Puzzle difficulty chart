local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- Create black screen GUI
local gui = Instance.new("ScreenGui")
gui.Name = "BlackScreenFade"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local black = Instance.new("Frame")
black.Size = UDim2.new(1, 0, 1, 0)
black.BackgroundColor3 = Color3.new(0, 0, 0)
black.BackgroundTransparency = 0 -- Fully black to start
black.Parent = gui

-- Gather all parts named "1" to "84" from anywhere
local targets = {}
for _, obj in ipairs(game:GetDescendants()) do
	local num = tonumber(obj.Name)
	if num and num >= 1 and num <= 84 and obj:IsA("BasePart") then
		targets[num] = obj
	end
end

-- Teleport player through all valid parts in order
for i = 1, 84 do
	local part = targets[i]
	if part and char:FindFirstChild("HumanoidRootPart") then
		char:PivotTo(part.CFrame + Vector3.new(0, 5, 0))
		task.wait(0.1)
	end
end

-- Fade out black screen
TweenService:Create(black, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
task.wait(0.5)
gui:Destroy()
