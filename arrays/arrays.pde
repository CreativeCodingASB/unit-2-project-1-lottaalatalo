int w = 20;
//float posX,posY;
int speedX= 2;
int speedY= 2;
int directionX  =  1;
int directionY = 1;

int[] num = {30, 90, 100, 50, 40};
int[] numbers = new int [8];
int i = 0;


void setup()
{
  size (1000, 1000);
  frameRate(100);
  smooth();
  ellipseMode(RADIUS);
  numbers[i] = width/2;
  numbers[i]= width/2;

  for (int i = 0; i < 8; i++) {
    numbers[i] = (int) random (8, width);
  }
}

void draw()
{
  if ( mousePressed ==true) {
    background(0);
    stroke (255);
    ellipse (i * 100, 100, numbers [i], numbers[i]);
    { 
      numbers[i] = numbers[i] + (speedX * directionX );
      numbers[i] = numbers[i] + (speedY  * directionY);

      if (numbers[i] > width-w || numbers[i] < w) {
        directionX *= -1;
      }

      if (numbers[i] > height- w || numbers[i] < w ) {
        directionY *= -1;
      }
      ellipse(numbers[i], numbers[i], w, w);
      fill (20, 0, 250, 40);
    }
  } else {
  }
  background (255);
  stroke(255);
  for (int i = 0; i < numbers.length; i++) {
    ellipse (i*100*100, 200, numbers[i], numbers[i]);
  }
}