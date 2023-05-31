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
    "Correct Key!"  -- Message when user inputs correct key
)

-- // Check the key
repeat task.wait() until getgenv().Key == ("Test") -- Put your key here
getgenv().Correct = true
task.wait(2)

-- // Example code
print("ExampleHub loaded!")

```

## Credits
UI - Rayfield libraly
