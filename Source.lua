local args = {...}

local name = args[1] or "KeySystem"
local invalidMessage = args[2] or "Invalid Key!"
local correctMessage = args[3] or "Correct Key!"

getgenv().SecureMode = true
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

local KeyWindow = Lib:CreateWindow({
	Name = name,
	LoadingTitle = name,
	LoadingSubtitle = "",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = ""
	},
	Discord = {
		Enabled = false,
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Untitled",
		Subtitle = "Key System",
		Note = "No method of obtaining the key is provided",
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})

getgenv().Key = ""
getgenv().Correct = false

KeyWindow:CreateTab("Main", 4483362458):CreateInput({
	Name = "Key",
	PlaceholderText = "",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		getgenv().Key = Text
		task.spawn(function()
			task.wait(0.5)
			if getgenv().Correct then
				Lib:Notify({
					Title = name,
					Content = correctMessage,
					Image = 483345998,
					Duration = 2,
					Actions = {}
				})
				task.wait(2.5)
				Lib:Destroy()
			else
				Lib:Notify({
					Title = name,
					Content = invalidMessage,
					Image = 483345998,
					Duration = 2,
					Actions = {}
				})
			end
		end)
	end,
})
