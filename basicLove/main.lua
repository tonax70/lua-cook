local love = require("love");

 --[[
 load function, uses to load resource
 Run the moment the game start
 - usually uses to init global variables
 ]]
function love.load()
    number = 0;
end

--[[
love update
dt stands for delta time
- the game loop
call every frames the game running
love will run 60fps 
so it will load 60 times per seconds
]]
function love.update(dt)
    number = number + 1;
end

--[[
draw: draw object on the screen
- anything on the screen is the result of draw
- run 60fpsas well
- sholntn't put any global variables here
]]
function love.draw()
    love.graphics.print(number);
end