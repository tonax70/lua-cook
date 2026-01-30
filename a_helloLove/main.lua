local message = "I cook lua\n"; -- string
local number = 67; -- number
local currentDateTime = os.date();
local response = "";

-- conditions

if (number == 67) then 
    response="uh uh whish i wish i knew knew knew knew";
elseif (number == 87) then
    response="is that the bite of 87?";
else
    response="L number";
end

-- loops

while (number > 0) do
    response= response.." loop";
    number = number - 1;
end

function love.draw()
    love.graphics.setFont(love.graphics.newFont(30));
    -- love.graphics.print(text, x, y)
    love.graphics.print("Hello", 10, 10) ;
    love.graphics.setFont(love.graphics.newFont(20));
    love.graphics.print("lua variables:", 10, 70) ;
    love.graphics.print("string: " .. message .. "\n" .. "number: " .. number, 10, 120);
    love.graphics.print("date: " ..currentDateTime, 10, 143);
    love.graphics.print("date: " ..response, 10, 190);
end
