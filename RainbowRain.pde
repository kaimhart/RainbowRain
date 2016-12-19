Drop[] drops;
color[] rainbow;

void setup() {
  size(1280, 720);
  rainbow = new color[] {
              color(255, 0, 0),
              color(255, 127, 0),
              color(255, 255, 0),
              color(0, 255, 0),
              color(0, 0, 255),
              color(75, 0, 130),
              color(143, 0, 255)
            };
  drops = new Drop[800];
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
  
}

void draw() {
  background(240, 240, 255);
  for (int i = 0; i < drops.length; i++) {
    drops[i].show();
  }
}