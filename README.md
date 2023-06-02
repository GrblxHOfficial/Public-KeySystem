# Public-KeySystem
Documentation for Public-KeySystem

## Why Public-KeySystem?
This KeySystem doesnt contain any loophooles for calling the function to load hub/check key and also getting the key through the CallBack of input function.

## Usage
```lua
-- // Load the libraly
loadstring(game:HttpGet("https://raw.githubusercontent.com/GrblxHOfficial/Public-KeySystem/main/Source.lua"))(
    "ExampleHub",   -- Hub name
    "Invalid Key!", -- Message when user inputs invalid key
    "Correct Key!", -- Message when user inputs correct key
    {
        ["SaveKey"] = true,        -- Saving key enabled
        ["Folder"] = "ExampleHub", -- Folder for key (leave blank for no folder),
        ["File"] = "key.txt"       -- File for key
    },
    {
        ["Labels"] = { -- Custom Labels
            [1] = {
                ["Text"] = "Welcome to Public-KeySystem"
            }
        },
        ["Buttons"] = { -- Custom Buttons
            [1] = {
                ["Text"] = "Copy key link",
                ["Function"] = function()
                    setclipboard("https://example.com/")    
                end
            }
        }
    }
)

-- // Check the key
repeat task.wait() until getgenv().Key == ("Test") -- Put your key here
getgenv().Correct = true
task.wait(2.5)

-- // Example code
print("ExampleHub loaded!")

```

## Credits
UI - Rayfield libraly
