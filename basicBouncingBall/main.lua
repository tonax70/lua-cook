local love = require("love");


-- this uses flags instad of the velocity itself
-- will be harder to add more simulation metric like gravity erc.
-- for more effecient way that including velocity, refer to basicImprovedBall

function love.load()
    radius = 20;
    ball = {};
    ball.x = radius
    ball.y = radius;
    ball.radius=radius;
    speed=500;
    isHitx=0;
    isHity=0;
end

function love.update(dt) 

    -- check logic.ts
    if (ball.x <= love.graphics.getWidth() - ball.radius and isHitx == 0) then
        ball.x = ball.x + speed * dt;
        if (ball.x >= love.graphics.getWidth() - ball.radius ) then 
            ball.x = love.graphics.getWidth() - ball.radius;
            isHitx = 1;
        end
    elseif (isHitx==1) then
        ball.x = ball.x - speed * dt;
        if (ball.x <= 0) then
            ball.x = ball.radius;
            isHitx=0;
        end 
    end
 
    if (ball.y <= love.graphics.getHeight() - ball.radius  and isHity == 0) then
        ball.y = ball.y + speed * dt;
        if (ball.y >= love.graphics.getHeight() - ball.radius ) then 
            ball.y = love.graphics.getHeight() - ball.radius;
            isHity = 1;
        end  
    elseif (isHity==1) then
        ball.y = ball.y - speed * dt;
        if (ball.y <= 0) then
            ball.y = ball.radius;
            isHity=0;
        end
    end 
    
end

function love.draw()
    love.graphics.setColor(0,1,0);
    love.graphics.circle("fill", ball.x, ball.y, ball.radius);
end