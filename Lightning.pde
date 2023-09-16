int startX = 50;
int startY = 0;
int endX = 0; 
int endY = 600;
PImage moon;

void setup(){
  size(600,600);
  background(0,0,0);
  moon = loadImage("https://www.astronomy.com/wp-content/uploads/sites/2/2023/03/ASYSM0123_07.png?fit=600%2C338");
  
  strokeWeight(5);
}
void draw(){
  fill(0,0,0,10);
  noStroke();
  rect(0,0,600,600);
  
  image(moon,400,0,170,100);
  
  fill(128, 128, 128);
  noStroke();
  ellipse(55,10,50,50);
  ellipse(100,40,100,100);
  ellipse(150,30,120,120);
  ellipse(200,30,90,90);
  ellipse(240,5,60,60);
  
  while (endY < 600){
  noStroke();
  ellipse(100,40,100,100);
  ellipse(150,30,120,120);
  ellipse(200,30,90,90);
  
  stroke((int)(Math.random()*100)+150, (int)(Math.random()*100)+100, 35, 155);
  endX = startX + (int)(Math.random()*30) - (int)(Math.random()*30);
  endY = startY + (int)(Math.random()*20);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  }
}
void mousePressed(){
  startX = 100 + (int)(Math.random()*100);
  startY = 75;
  endX = 0;
  endY = 0;
}
