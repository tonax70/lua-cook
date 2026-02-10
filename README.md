# I cook lua to see if it helps anything
## > [if using vscodium: modifying vscodium extension repo](./VSCODIUM_SETUP.md)

1. jump start - try love2d for fun - jan 30 2026
    - love is code focused paradigm, you should build everything from ground up with code
    - install love
    - install vscode extensions: love support
    - alt + l to run project
2. first physics - bouncing ball thing
    - strt basic
    - basic love funcs load update draw
    - set color based on the scale from 0 to 1
    -  basic loop : bouncing ball prac
    - improved bouncing ball
3. first lua game - shootingGal
    - mouse listener love.mousepressed
    - compare distance with radius is more effective in case the object is a circle
    - legacy code : compare mouse within range or not
    - randomize target - math.random
    - render sprites love.graphics.newImage() and love.graphics.draw()