float x = 20, y= 20;
float s = 1;
float t = 10 * sin(y);

void setup() { // kører 1 gang ved start
  size(400, 400);

}
void draw(){ // kører default 30 gange per sek
background(0,0,300);
  if (x < width) {
    x = x + 0.5; 
    
  if (y < height) {
    y = y + 0.5;
  }

  
}
   fill(0,200,0);
   ellipse(x, y + 8 * sin(y), s+55, s+55);
   fill(250);
   ellipse(x-25, y-25 + 8 * sin(y), s+20, s+20);
   fill(250);
   ellipse(x+25, y-25 + 8 * sin(y), s+20, s+20);
   fill(0);
   ellipse(x+22, y-25 + 8 * sin(y), s+5, s+5);
   fill(0);
   ellipse(x-22, y-25 + 8 * sin(y), s+5, s+5);
   fill(0);
   ellipse(x, y-10 + 8 * sin(y), s+10, s+7);
   fill(0);
   rect(x-35, y-40 + 8 * sin(y), s+20, s+7);
   fill(0);
   rect(x+15, y-40 + 8 * sin(y), s+20, s+7);
}
