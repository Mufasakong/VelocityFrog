float x = 20, y= 20;
float s = 1; // Ændrer dette til '2' og du vil finde ugler i mosen
float t = 8;
 


void setup() { // kører 1 gang ved start
  size(750, 750);
}



void draw(){ // kører default 30 gange per sek
background(0,150,175);

//Bevægelse af frø
Velocity();

// Vores frøer
VelocityFrog(x, y, t);
VelocityFrog(x+100, y+10, t+1);
VelocityFrog(x+200, y+20, t-1);
VelocityFrog(x-100, y+30, t-2);
VelocityFrog(x+40, y+40, t+3);
VelocityFrog(x-50, y+50, t+2);
VelocityFrog(x+120, y+60, t-1);
VelocityFrog(x+-40, y+70, t-1);
VelocityFrog(x+140, y+80, t-4);
VelocityFrog(x-60, y+90, t+3);


}

// Frøen
void VelocityFrog(float x, float y, float t) {
    fill(0,200,0);
    ellipseMode(CENTER);
    rectMode(CENTER);
   ellipse(x, y + t * sin(y), s*55, s*55);
   fill(250);
   ellipse(x-25, y-25 + t * sin(y), s*20, s*20);
   fill(250);
   ellipse(x+25, y-25 + t * sin(y), s*20, s*20);
   fill(0);
   ellipse(x+22, y-25 + t * sin(y), s*5, s*5);
   fill(0);
   ellipse(x-22, y-25 + t * sin(y), s*5, s*5);
   fill(0);
   ellipse(x, y-5 + t * sin(y), s*15, s*30);
   fill(200, 0, 0);
   ellipse(x, y+5 + t * sin(y), s*12, s*10);
   fill(0);
   rect(x-25, y-40 + t * sin(y), s*20, s*7);
   fill(0);
   rect(x+25, y-40 + t * sin(y), s*20, s*7);
}

// Bevægelse af frø + Loop
void Velocity(){
  if (x < width) {
    x = x + 0.7; 
  }
  else{
    x -= 900;
  }
 if (y < height) {
    y = y + 0.7;
  }
  else{
    y -= 900;
  }
}
