class Particle {

  PVector coords;
  float diameter;
  float radius;
  PVector speed;


  Particle(PVector initialCoords, float initialDiameter, 
    color initialFill, PVector initialSpeed) {

    coords = initialCoords;
    diameter = initialDiameter;
    radius = diameter * 0.5;
    speed = initialSpeed;
  }

  void drawParticle() {

    noStroke();
    color pixelcolour = image.get(int(coords.x), int(coords.y)); // this will create a variable named pixel that will store the colour of each pixel
    fill(pixelcolour); // this line will then fill each particle with the colour that was obtained in the previous line
    ellipse(coords.x, coords.y, diameter, diameter);
  }

  void updateParticlePosition() {

    coords.x = (coords.x) + speed.x;
    coords.y = (coords.y) + speed.y;
  }
}