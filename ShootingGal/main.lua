local love = require("love");

function love.load()
    target = {};
    target.x = 300;
    target.y = 300;
    target.radius = 50;
    score = 0;
    timer = 0;
    gameFont = love.graphics.newFont('/fonts/Anonymous.ttf', 30);
    timer = 10;

    -- import sprites via file path
    sprites = {

        bg = love.graphics.newImage('/sprites/Aerial_Microsoft_West_Campus_August_2009.jpg');
        win7 = love.graphics.newImage('/sprites/win7.png');
        cursor = love.graphics.newImage('/sprites/mouse-cursor-symbol-on-transparent-background-free-png.png');
        blackgradient70 = love.graphics.newImage("/sprites/blackbg-70percent.png");

    };
    love.mouse.setVisible(false);

    gameState = 1;
end

function love.update(dt)
-- notice that love runs loop every frames (60fps) so it will loop 60fps
if (timer > 0) then timer = timer - dt end

-- prevent timer less than 0 issue
if (timer < 0) then timer = 0 end

end

function love.draw() 
    -- draw and adjust background
    love.graphics.draw(sprites.bg,0,0,0,0.17,0.18);

    -- draw black gradient to make scores and info appear better
    love.graphics.draw(sprites.blackgradient70,0,0,0,2,0.17);

    love.graphics.circle("fill", target.x, target.y, target.radius);
    love.graphics.setFont(gameFont);
    love.graphics.print("Score: " .. score, 3, 3);
    love.graphics.print("Timer: "..math.ceil(timer),500, 3); -- ceiling and floor works just like javascript
    
    -- use sprites 

    -- draw the windows95 target - should be on top of cursor draw for higher z index
    love.graphics.draw(sprites.win7, target.x-target.radius-8, target.y-target.radius-1.8, 0, 0.13, 0.13);

    -- draw cursor at mouse position
    -- set offset and scale
    love.graphics.draw(sprites.cursor, love.mouse.getX()-27, love.mouse.getY()-20, 0, 0.2, 0.2);
end

-- 1 is primary mouse button > left click
-- 2 is secondary mouse button > right click
-- 3 is the middle button > middle scroll button

-- istouch true if using a touch screen touch press
function love.mousepressed(x, y, button, istouch, pressed)
    -- legacy logic, check if it is within the rage of the square
    --    if (button == 1 and (x < target.x + target.radius and x > target.x - target.radius) and (y < target.y + target.radius and y > target.y - target.radius)) then
    -- better logic: check if the distance from the mouse to the center ot the circle is smaller than the radius or not
    if (button == 1 and distanceBetween(x, target.x, y, target.y) <= target.radius) then
        score = score + 1
        -- math random gen random number from 0 to less than 1 [0, 1)
        target.x = target.radius + math.floor(math.random() * love.graphics.getWidth()) + 1;
        target.x = target.radius + math.floor(math.random() * love.graphics.getHeight()) + 1;
    end
end

function distanceBetween(x1, x2, y1, y2)
    return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2);
end
