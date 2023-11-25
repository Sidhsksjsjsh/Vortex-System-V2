local guiService = game:GetService("GuiService")

function alert(message)
    print(message)
end

function prompt()
    return io.read()
end

function consoleLog(message)
    print(message)
end

function confirm(message)
    print("Konfirmasi: " .. message)
    return io.read() == "y"
end

function setTimeout(callback,delay)
    wait(delay)
    callback()
end

function setInterval(callback,interval)
task.spawn(function()
    while true do
        wait(interval)
        callback()
    end
    end)
end

function parseInt(stringNumber)
    return tonumber(stringNumber) or 0
end

function parseFloat(stringNumber)
    return tonumber(stringNumber) or 0.0
end

function getElementById(id)
    return workspace:WaitForChild(id)
end

function addEventListener(element,event,callback)
    element[event]:Connect(callback)
end

function changeColor(element,newColor)
    element.BrickColor = BrickColor.new(newColor)
end

function hideElement(element)
    element.Transparency = 1
end

function showElement(element)
    element.Transparency = 0
end

function moveElement(element,newPosition)
    element.Position = newPosition
end

function resizeElement(element,newSize)
    element.Size = newSize
end

function updateText(element,newText)
    if element:IsA("TextLabel") or element:IsA("TextBox") or element:IsA("TextButton") then
        element.Text = newText
    end
end

function createElement(elementType,parent,properties)
    local newElement = Instance.new(elementType)
    
    for property, value in pairs(properties) do
        newElement[property] = value
    end
    
    newElement.Parent = parent
    return newElement
end

function rotateElement(element,newRotation)
    element.Orientation = newRotation
end

function getCurrentTime()
    return os.date("%H:%M:%S")
end

function changeModel(element,newModel)
    element.Model = newModel
end

function getPiValue()
    return math.pi
end

function setTransparency(element,newTransparency)
    element.Transparency = newTransparency
end

function getMousePosition()
    return Vector2.new(guiService:GetMouseLocation().X, guiService:GetMouseLocation().Y)
end

function getStringLength(inputString)
    return string.len(inputString)
end

function rotateElementContinuously(element,rotationSpeed)
task.spawn(function()
    while true do
        wait(1 / rotationSpeed)
        element.Orientation = element.Orientation * CFrame.Angles(0, math.rad(rotationSpeed), 0)
    end
    end)
end

--[[
alert("Hello, Roblox!")

local input = prompt()
consoleLog("Input pengguna: " .. input)

if confirm("Apakah kamu yakin?") then
    consoleLog("Pengguna yakin!")
else
    consoleLog("Pengguna tidak yakin.")
end

setTimeout(function()
    consoleLog("Waktu telah berlalu!")
end, 2)

setInterval(function()
    consoleLog("Ini akan terus berlanjut...")
end, 5)

local angkaString = "42"
consoleLog("Angka setelah diubah: " .. (parseInt(angkaString) + 1))

local elemen = getElementById("Part1")
addEventListener(elemen, "Touched", function()
    consoleLog("Part1 disentuh!")
end)

changeColor(elemen, "Bright red")
hideElement(elemen)

local gui = game.Players.LocalPlayer.PlayerGui
local frame = createElement("Frame", gui, {
    Size = UDim2.new(0, 200, 0, 100),
    Position = UDim2.new(0.5, -100, 0.5, -50),
    BackgroundColor3 = Color3.new(0.5, 0.5, 0.5),
})
resizeElement(frame, UDim2.new(0, 300, 0, 150))

local textLabel = createElement("TextLabel", frame, {
    Size = UDim2.new(1, 0, 1, 0),
    Text = "Hello, Roblox!",
    TextColor3 = Color3.new(1, 1, 1),
})
updateText(textLabel, "Welcome to Roblox!")

setTimeout(function()
    showElement(frame)
end, 2)

setInterval(function()
    moveElement(frame, UDim2.new(math.random(), 0, math.random(), 0))
end, 5)

rotateElement(elemen, Vector3.new(0, 45, 0))
consoleLog("Waktu sekarang: " .. getCurrentTime())

local newModel = Instance.new("Model")
changeModel(elemen, newModel)

consoleLog("Nilai PI: " .. getPiValue())
setTransparency(elemen, 0.5)

local mousePosition = getMousePosition()
consoleLog("Posisi mouse: " .. mousePosition.X .. ", " .. mousePosition.Y)

local testString = "Hello, Roblox!"
consoleLog("Panjang string: " .. getStringLength(testString))

rotateElementContinuously(elemen, 10)
]]
