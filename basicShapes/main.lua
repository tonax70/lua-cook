local love = require("love");


function love.load()
    local red = {};
    local green = {};
    local blue= {};
end

function love.update(dt)
red = {1,0,0};
green = {0,1,0};
blue= {0,0,1};
end


function love.draw()
    --add colors
    -- color can be created by some precent of red, green and blue, that's why we have rgb colors
    --rgb (pretty much like css) 0= none of that color, 1= as much as possible
    love.graphics.setColor(red);

    --basic shapes
    --rectangle (type, cord-x, cord-y, width, height)
    love.graphics.rectangle("fill", 0,0, 200,100); -- a white filled rectangle at x=0, y=0
    love.graphics.rectangle("line", 0, 110, 200, 100); -- an ouline rectangle at x=0, y= 110

    -- for more functions , goto https://love2d.org/wiki/Main_Page

    -- the same with circle

    love.graphics.circle("fill", 260,50, 50); -- a white filled circle at x=260, y=50, r=50
    love.graphics.circle("line", 260, 160, 50); -- an ouline rectangle at x=260, y= 160, r=50

end