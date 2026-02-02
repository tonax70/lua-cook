local love = require("love");

function love.load()
    ball = {};
    ball.x = 1;
    ball.y = 0;
    ball.radius=0;
    speed=500;
    isHit=0;
end

function love.update(dt)
    ball.radius=20;

    -- check logic.ts
    if (ball.x <= love.graphics.getWidth() and isHit == 0) then
        ball.x = ball.x + speed * dt;
        if (ball.x >= love.graphics.getWidth()) then 
            isHit = 1;
        end
    elseif (isHit==1) then
        ball.x = ball.x - speed * dt;
        if (ball.x <= 0) then
            isHit=0;
        end
    end
    
end

function love.draw()
    love.graphics.setColor(0,1,0);
    love.graphics.circle("fill", ball.x, ball.y, ball.radius);
end