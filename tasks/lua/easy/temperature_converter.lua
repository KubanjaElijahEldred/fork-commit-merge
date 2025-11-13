-- Lua - Easy

local function celsiusToFahrenheit(celsius)
    return celsius * 9/5 + 32
end

local function fahrenheitToCelsius(fahrenheit)
    return (fahrenheit - 32) * 5/9
end

-- Implement rest of the Temperature Converter
print("Temperature Converter")
print("1. Celsius to Fahrenheit")
print("2. Fahrenheit to Celsius")
print("Choose conversion (1 or 2): ")

local choice = io.read()
local temperature

if choice == "1" then
    print("Enter temperature in Celsius: ")
    temperature = tonumber(io.read())
    if temperature then
        local result = celsiusToFahrenheit(temperature)
        print(string.format("%.2f°C = %.2f°F", temperature, result))
    else
        print("Invalid temperature input!")
    end
elseif choice == "2" then
    print("Enter temperature in Fahrenheit: ")
    temperature = tonumber(io.read())
    if temperature then
        local result = fahrenheitToCelsius(temperature)
        print(string.format("%.2f°F = %.2f°C", temperature, result))
    else
        print("Invalid temperature input!")
    end
else
    print("Invalid choice! Please enter 1 or 2.")
end
