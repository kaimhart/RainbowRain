class Drop {
  float x; 
  float y;
  float yspeed;
  float xspeed;
  float thickness;
  color hue;
  float z;
  
  Drop() {
    z = random(100);
    x = random(width+500);
    y = random(-200, 0);
    yspeed = map(z, 0, 100, 5, 10);
    xspeed = map(z, 0, 100, 0, 5);
    thickness = map(z, 0, 100, 1, 4);
    hue = rainbow[int(random(6))];
  }
  
  void show() {
    strokeWeight(thickness);
    stroke(hue);
    line(x, y, x-5, y+20);
    y += yspeed;
    x -= xspeed;
    
    if (y > height) {
      y = random(-200, 0);
      hue = rainbow[int(random(6))];
      x = random(width+500);
    }
  }
}