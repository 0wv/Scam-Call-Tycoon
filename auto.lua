local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "I fucking hate everything",
	LoadingTitle = "hoimicide's cock",
	LoadingSubtitle = "by homicide",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Rayfield Interface Suite",
		FileName = "Big Hub"
	},
	KeySystem = false, -- Set this to true to use their key system
	KeySettings = {
		Title = "HELP",
		Subtitle = "Key System",
		Note = "fuck you",
		SaveKey = true,
		Key = "ABCDEF"
	}
})

local isUnloaded = false

Rayfield:Notify("seek help", "Content/Description Example", 4483362458) -- Notfication -- Title, Content, Image

local Tab = Window:CreateTab("REEEEEE", 4483362458) -- Title, Image

local Section = Tab:CreateSection("AAAAAAAA")

local isEnabled = Value

local Toggle = Tab:CreateToggle({
	Name = "Toggle Farm",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        isEnabled = Value
		-- The function that takes place when the toggle is pressed
    		-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

local Button = Tab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
        isUnloaded = true
		Rayfield:Destroy()
	end,
})


task.spawn(function () 
    while true do 
        if isUnloaded then break end
        if isEnabled then 
            game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()
            
            task.wait(3.5)
            local cc = game:GetService("Players").LocalPlayer.GeneratedNumber.Value
            print('swiping this cunts card rn')
        
            game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(cc)
        end
        task.wait(2)
    end
end) 




-- Extras

-- getgenv().SecureMode = true -- Only Set To True If Games Are Detecting/Crashing The UI

-- Rayfield:Destroy() -- Destroys UI

-- Rayfield:LoadConfiguration() -- Enables Configuration Saving

-- Section:Set("Section Example") -- Use To Update Section Text

-- Button:Set("Button Example") -- Use To Update Button Text

-- Toggle:Set(false) -- Use To Update Toggle

-- Slider:Set(10) -- Use To Update Slider Value

-- Label:Set("Label Example") -- Use To Update Label Text

-- Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"}) -- Use To Update Paragraph Text

-- Keybind:Set("RightCtrl") -- Keybind (string) -- Use To Update Keybind

-- Dropdown:Set("Option 2") -- The new option value -- Use To Update/Set New Dropdowns