PImage[] p;
int scene;

void setup(){
  size(960,540);
  p = new PImage[5];
  p[0] = loadImage("1.png");
  p[1] = loadImage("2.png");
  p[2] = loadImage("3.png"); 
  p[3] = loadImage("4.png");
  p[4] = loadImage("5.png");
  scene = 0;
}

void draw(){
  background(250);
  rect(10,10,50,39); 
  fill(20);
  
  textSize(15);
  text("CLICK!",12,35);
  fill(250);
  
  image(p[scene],0,0);
}

void mouseClicked(){
  if (mouseButton == LEFT){
    if( mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 49 ){
      scene = scene + 1;
    if( scene > 4 ){
    scene = 0; }
  }
}
}