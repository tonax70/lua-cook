local love = require("love")
-- you must thing in physics insetead of pure math

function love.load()
    ball = {
        x = 100,
        y = 100,
        radius = 20,
        vx = 500,
        vy = 500
    }
end

function love.update(dt)
    -- move
    ball.x = ball.x + ball.vx * dt
    ball.y = ball.y + ball.vy * dt

    local w = love.graphics.getWidth()
    local h = love.graphics.getHeight()

    -- bounce X
    if ball.x - ball.radius <= 0 then
        ball.x = ball.radius
        ball.vx = -ball.vx
    elseif ball.x + ball.radius >= w then
        ball.x = w - ball.radius
        ball.vx = -ball.vx
    end

    -- bounce Y
    if ball.y - ball.radius <= 0 then
        ball.y = ball.radius
        ball.vy = -ball.vy
    elseif ball.y + ball.radius >= h then
        ball.y = h - ball.radius
        ball.vy = -ball.vy
    end
end

function love.draw()
    love.graphics.setColor(0, 1, 0)
    love.graphics.circle("fill", ball.x, ball.y, ball.radius)
end
