local Players = game:GetService("Players")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- Gather parts named 1 to 84 anywhere in the game
local targets = {}
for _, obj in ipairs(game:GetDescendants()) do
	local num = tonumber(obj.Name)
	if num and num >= 1 and num <= 84 and obj:IsA("BasePart") then
		targets[num] = obj
	end
end

-- Teleport through parts in order
for i = 1, 84 do
	local part = targets[i]
	if part and char:FindFirstChild("HumanoidRootPart") then
		char:PivotTo(part.CFrame + Vector3.new(0, 5, 0)) -- teleport slightly above
		task.wait(0.1)
	end
end
