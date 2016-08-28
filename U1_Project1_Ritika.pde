/*
  

*/
boolean fullGame = true;
int Score = 0;
String s = "Try Again!";

float rectX1 = random (620);
float rectY1 = random (600);
float rectX2 = random (620);
float rectY2 = random (600);
float rectX3 = random (620);
float rectY3 = random (600);

float rectX1POS = random (620);
float rectY1NEG = random (600);
float rectX2POS = random (620);
float rectY2NEG = random (600);


float rectXX1 = random (620);
float rectYY1 = random (600);
float rectXX2 = random (620);
float rectYY2 = random (600);
float rectXX3 = random (620);
float rectYY3 = random (600);

float rectX1NEG = random (620);
float rectY1POS = random (600);
float rectX2NEG = random (620);
float rectY2POS = random (600);


void setup()
{
  size (700,650);  
}

void draw ()
{
  if (fullGame ==true)
  {
    background (255);
  
    fill(0,196,247);
    ellipse(mouseX,mouseY,50,50);
  
    Positive();
    Negative();
    Score();    
  }
  
  if(millis() > 15000)
  {
    fullGame = false;
  }
  
  if (fullGame == false)
  {
    fill(0);
    rect(0,0,700,650);
    fill(255);
    textSize(100);
    text("Try Again!",75,335);
  }
  
}

void Positive()
{
  fill(160,35,175);
  rect(rectX1,rectY1,30,100);
  rect(rectX2,rectY2,30,100);
  rect(rectX3,rectY3,30,100);
  rect(rectX1POS,rectY1NEG,30,100);
  rect(rectX2POS,rectY2NEG,30,100);

  rectX1 = rectX1 + random(10);
  rectY1 = rectY1 + random(20);

  if (rectX1 > 700)
  {
    rectX1 = random (620);
  }
  
  if (rectY1 > 650)
  {
    rectY1 = random (600);
  }
  
  rectX2 = rectX2 + random(5);
  rectY2 = rectY2 + random(10);

  if (rectX2 > 700)
  {
    rectX2 = random (620);
  }
  
  if (rectY2 > 650)
  {
    rectY2 = random (600);
  }

  rectX3 = rectX3 + random(10);
  rectY3 = rectY3 + random(10);

  if (rectX3 > 700)
  {
    rectX3 = random (620);
  }
  
  if (rectY3 > 650)
  {
    rectY3 = random (600);
  }

  rectX1POS = rectX1POS + random(20);
  rectY1NEG = rectY1NEG - random(10);

  if (rectX1POS > 700)
  {
    rectX1POS = random (620);
  }
  
  if (rectY1NEG < 0)
  {
    rectY1NEG = random (600);
  }
  
  rectX2POS = rectX2POS + random(10);
  rectY2NEG = rectY2NEG - random(5);

  if (rectX2POS > 700)
  {
    rectX2POS = random (620);
  }
  
  if (rectY2NEG < 0)
  {
    rectY2NEG = random (600);
  }
  
}

void Negative()
{
  fill(160,35,175);
  rect(rectXX1,rectYY1,30,100);
  rect(rectXX2,rectYY2,30,100);
  rect(rectXX3,rectYY3,30,100);
  rect(rectX1NEG,rectY1POS,30,100);
  rect(rectX2NEG,rectY2POS,30,100);

  rectXX1 = rectXX1 - random(10);
  rectYY1 = rectYY1 - random(20);

  if (rectXX1 < 0)
  {
    rectXX1 = random (620);
  }
  
  if (rectYY1 < 0)
  {
    rectYY1 = random (600);
  }
  
  rectXX2 = rectXX2 - random(5);
  rectYY2 = rectYY2 - random(10);

  if (rectXX2 < 0)
  {
    rectXX2 = random (620);
  }
  
  if (rectYY2 < 0)
  {
    rectYY2 = random (600);
  }

  rectXX3 = rectXX3 - random(20);
  rectYY3 = rectYY3 - random(10);

  if (rectXX3 < 0)
  {
    rectXX3 = random (620);
  }
  
  if (rectYY3 < 0)
  {
    rectYY3 = random (600);
  }

  rectX1NEG = rectX1NEG - random(10);
  rectY1POS = rectY1POS + random(10);

  if (rectX1NEG < 0)
  {
    rectX1NEG = random (620);
  }
  
  if (rectY1POS > 750)
  {
    rectY1POS = random (600);
  }

  rectX2NEG = rectX2NEG - random(10);
  rectY2POS = rectY2POS + random(5);

  if (rectX2NEG < 0)
  {
    rectX2NEG = random (620);
  }
  
  if (rectY2POS > 750)
  {
    rectY2POS = random (600);
  }
}

void Score()
{
  fill(0);
  rect(15,15,100,35);
  fill(225);
  textSize(32);
  text(Score,20,45);
  
  if(dist (mouseX,mouseY,rectX1,rectY1) < 40)
  {
    Score = Score + 5;
  }
  
    if(dist (mouseX,mouseY,rectX2,rectY2) < 40)
  {
    Score = Score + 5;
  }

  if(dist (mouseX,mouseY,rectX3,rectY3) < 40)
  {
    Score = Score + 5;
  }
  
  if(dist (mouseX,mouseY,rectX1POS,rectY1NEG) < 40)
  {
    Score = Score + 5;
  }
  
  if(dist (mouseX,mouseY,rectX2POS,rectY2NEG) < 40)
  {
    Score = Score + 5;
  }
  
  if(dist (mouseX,mouseY,rectXX1,rectYY1) < 40)
  {
    Score = Score + 5;
  }
  
    if(dist (mouseX,mouseY,rectXX2,rectYY2) < 40)
  {
    Score = Score + 5;
  }

  if(dist (mouseX,mouseY,rectXX3,rectYY3) < 40)
  {
    Score = Score + 5;
  }
  
  if(dist (mouseX,mouseY,rectX1NEG,rectY1POS) < 40)
  {
    Score = Score + 5;
  }
  
  if(dist (mouseX,mouseY,rectX2NEG,rectY2POS) < 40)
  {
    Score = Score + 5;
  }

}