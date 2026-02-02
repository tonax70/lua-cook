let isHit = 0;
let x = 0;
const viewWidth = 10;

const interval = setInterval(() => {
/*
if x <= vw and isHit==0, increment x by 1 and check if x >= vw then set isHit=1;
else if isHit==1 then decrement by 1 and check if x <= 0 then set isHit=0;
*/
  if (x <= viewWidth && isHit==0) {
    x++;
    if (x >= viewWidth) isHit=1;

  } else if (isHit==1) {
    x--;
    if (x <= 0) isHit=0;
  }
  

  console.log(x);
}, 300);
