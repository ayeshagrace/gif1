PImage img;

void setup() {
  size(600, 900, P3D);
  img = loadImage("image.8.jpg");
  img.resize(600, 900);
}

void draw() {
  background(#CDD8E4);
  fill(#362827);
  noStroke();
  sphereDetail(4);
  float tiles = 100;
  float tileSize = width/tiles;
  push();
  translate(width/2,height/2);
  rotateY(radians(frameCount));
  
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float b = map(brightness(c),0,255,1,0);
      float z = map(b,0,1,-150,150);
      
      push();
      translate(x*tileSize - width/2, y*tileSize - height/2, z);
      sphere(tileSize*b*0.8);
      pop();
      
    }
  }
  pop();
}
