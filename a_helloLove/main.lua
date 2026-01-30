message = "I cook lua\n"; -- string
number = 67; -- number

function love.draw()
    love.graphics.setFont(love.graphics.newFont(30))
    -- love.graphics.print(text, x, y)
    love.graphics.print("Hello", 10, 10) 
    love.graphics.setFont(love.graphics.newFont(20))
    love.graphics.print("lua variables:", 10, 70) 
    love.graphics.print("string: " .. message .. "\n" .. "number: " .. number, 10, 120)
end
