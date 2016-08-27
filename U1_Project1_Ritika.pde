/*
  

*/

float rectX1 = random (620);
float rectY1 = random (600);
float rectX2 = random (620);
float rectY2 = random (600);
float rectX3 = random (620);
float rectY3 = random (600);
float rectX4 = random (620);
float rectY4 = random (600);
float rectX5 = random (620);
float rectY5 = random (600);
//float rectX6 = random (620);
//float rectY6 = random (600);

void setup()
{
  size (700,650);  
  
}

void draw ()
{
  background (255);

  fill(160,35,175);
  rect(rectX1,rectY1,30,100);
  rect(rectX2,rectY2,30,100);
  rect(rectX3,rectY3,30,100);
  rect(rectX4,rectY4,30,100);
  rect(rectX5,rectY5,30,100);
  //rect(rectX6,rectY6,30,100);

  rectX1 = rectX1 + random(20);
  rectY1 = rectY1 + random(40);

  if (rectX1 > 700)
  {
    rectX1 = random (620);
  }
  
  if (rectY1 > 650)
  {
    rectY1 = random (600);
  }
  
  rectX2 = rectX2 + random(10);
  rectY2 = rectY2 + random(20);

  if (rectX2 > 700)
  {
    rectX2 = random (620);
  }
  
  if (rectY2 > 650)
  {
    rectY2 = random (600);
  }
  
  rectX3 = rectX3 + random(40);
  rectY3 = rectY3 + random(20);

  if (rectX3 > 700)
  {
    rectX3 = random (620);
  }
  
  if (rectY3 > 650)
  {
    rectY3 = random (600);
  }

  rectX4 = rectX4 + random(20);
  rectY4 = rectY4 + random(20);

  if (rectX4 > 700)
  {
    rectX4 = random (620);
  }
  
  if (rectY4 > 650)
  {
    rectY4 = random (600);
  }
  
  rectX5 = rectX5 + random(20);
  rectY5 = rectY5 + random(10);

  if (rectX5 > 700)
  {
    rectX5 = random (620);
  }
  
  if (rectY5 > 650)
  {
    rectY5 = random (600);
  }

}