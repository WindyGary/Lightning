int startX = 50;
int startY = 0;
int endX = 0; 
int endY = 600;
int boltColor1 = 0;
int boltColor2 = 0;
int boltCount = 8;
int gameTick = 0;
PImage moon;

void setup(){
  size(600,600);
  background(0,0,0);
  moon = loadImage("https://www.astronomy.com/wp-content/uploads/sites/2/2023/03/ASYSM0123_07.png?fit=600%2C338");
  
  strokeWeight(5);
}
void draw(){
  gameTick+= 2;
  
  if (boltCount % 10 == 0 && gameTick < 25){
    fill(255,255,0,30);
    noStroke();
    rect(0,0,600,600);
  } else {
     fill(0,0,0,45);
  noStroke();
  rect(0,0,600,600);
  }
  
  image(moon,400,0,170,100);
  
    
  fill(128, 128, 128);
  noStroke();
  ellipse(55,10,50,50);
  ellipse(100,40,100,100);
  ellipse(150,30,120,120);
  ellipse(200,30,90,90);
  ellipse(240,5,60,60);

  while (endY < 600 && boltCount % 10 != 0){ 
  cloud();
  bolt();
  }
  
  while (endY < 600 && boltCount % 10 == 0){
    cloud();
    specialBolt1();
  }
}
void cloud(){
  noStroke();
  ellipse(100,40,100,100);
  ellipse(150,30,120,120);
  ellipse(200,30,90,90);
}
void bolt(){
  stroke(boltColor1, boltColor2, 35, 205);
      strokeWeight(5);
      
  if (Math.random() < 0.5){
  endX = startX -((int)(Math.random()*20));
  } else {
  endX = startX + (int)(Math.random()*30);  
  }
  
  endY = startY + (int)(Math.random()*25);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}


void specialBolt1(){
  stroke(255, 41, 238,255);
  strokeWeight(10);
    if (Math.random() < 0.5){
  endX = startX -((int)(Math.random()*20));
  } else {
  endX = startX + (int)(Math.random()*30);  
  }
  
  endY = startY + (int)(Math.random()*25);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}
void mousePressed(){
  startX = 100 + (int)(Math.random()*100);
  startY = 75;
  endX = 0;
  endY = 0;
  boltColor1 = (int)(Math.random()*100)+150;
  boltColor2 = (int)(Math.random()*100)+100;
  boltCount++;
  gameTick = 0;
}
