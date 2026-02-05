local love = require("love");

function love.load()
target = {};
target.x = 300;
target.y = 300;
target.radius = 50;
score = 0;
timer = 0;
gameFont = love.graphics.newFont(30);
end


function love.update(dt) 

end


function love.draw() -- {
love.graphics.circle("fill", target.x, target.y, target.radius);
love.graphics.setFont(gameFont);
love.graphics.print("Score: "..score, 0,0);
--}
end

-- 1 is primary mouse button > left click
-- 2 is secondary mouse button > right click
-- 3 is the middle button > middle scroll button

-- istouch true if using a touch screen touch press
function love.mousepressed(x,y,button,istouch,pressed)
if (button == 1 and (x < target.x + target.radius and x > target.x - target.radius) and (y < target.y + target.radius and y > target.y - target.radius)) then
score = score + 1
end
end