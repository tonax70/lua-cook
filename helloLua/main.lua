local love = require("love");
local message = "I cook lua\n"; -- string
local number = 67; -- number
local currentDateTime = os.date();
local response = "";

-- conditions

if (number == 67) then
    response="ooh ooh whish i wish i knew knew knew knew";
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

local sum = 0;

-- loop from 1 to 67, each time increment by 1 unit
for i=1, 67, 1 do
    sum = sum + i;
end

-- functions
local function lp (message, x, y)
    love.graphics.print(message, x, y);
end


-- array/object ~ TABLE

local arr = {};

-- add value to a key method 1
arr[1]  = "SKS";
arr[2] = "NKN";
arr[3] = "SRO";

-- insert method 2
table.insert(arr, "KJI"); -- it will assign with a number
table.insert(arr, "SRA");

-- can understand table as a key - value
arr["SKSST"] = "goated";
arr[arr[1]] = 800; -- wut da is real

function love.draw()
    love.graphics.setFont(love.graphics.newFont(30));
    -- love.graphics.print(text, x, y)
    love.graphics.print("Hello", 10, 10) ;
    love.graphics.setFont(love.graphics.newFont(20));
    love.graphics.print("lua variables:", 10, 70) ;
    love.graphics.print("string: " .. message .. "\n" .. "number: " .. number, 10, 120);
    love.graphics.print("date: " ..currentDateTime, 10, 143);
    lp("date: " ..response, 10, 190);
    lp("the sum from 1 to 67 is: "..sum, 10, 220);
    lp("array test: ".. arr[4], 10, 250);
    lp("array test: ".. arr["SKS"], 10, 280);
    lp("array test: ".. arr["SKSST"], 10, 300);
end
