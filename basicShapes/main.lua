local love = require("love");


function love.load()

end

function love.update(dt)

end


function love.draw()

    --basic shapes
    --rectangle (type, cord-x, cord-y, width, height)
    love.graphics.rectangle("fill", 0,0, 200,100); -- a white filled rectangle at x=0, y=0
    love.graphics.rectangle("line", 0, 110, 200, 100); -- an ouline rectangle at x=0, y= 110

    -- for more functions , goto https://love2d.org/wiki/Main_Page

    -- the same with circle

    love.graphics.circle("fill", 260,50, 50); -- a white filled circle at x=260, y=50, r=50
    love.graphics.circle("line", 260, 160, 50); -- an ouline rectangle at x=260, y= 160, r=50

end