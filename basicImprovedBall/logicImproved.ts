/*
Game / simulation mental model (physics)
“Everything has state and rates of change.”
So instead of:
position only
you track:
- position
- velocity
- (later) acceleration
- And the loop is always:
- state += rate * dt
Collisions don’t change behavior, they change parameters.
*/

let x2 = 0, vx = 1;


const interval2 = setInterval(()=> {
    x2+=vx;
    if (x2 <= 0 || x2 >= 10) vx=-vx;
    console.log(x2);
}, 300)