// By Kieran Dix 14015652


ArrayList<Particle> listOfParticles;
PImage image; // this will create a variable with the name image
void setup() {

  size(1024, 626); 

  listOfParticles = new ArrayList<Particle>();

  for (int i = listOfParticles.size(); i < 5000; i++) {

    listOfParticles.add(new Particle(new PVector(random(0, width), random(0, height)), //  by making both width and height random this will make the position that the particles appear in randomised.
      8, 
      color(random(0, 100), 100, 100), 
      new PVector(random(-4, 4), 
      random(-4, 4))));
  }
  frameRate(120);
  colorMode(HSB, 100);
  image = loadImage("redcar.jpg"); // this will load an image with the name redcar.jpg and then store it as the image variable
  background(0); // by placing this in setup it will only call the background once and set it as black
}


void draw() {

  background(1024, 626);

  for (Particle thisParticle : listOfParticles) {                                                                  


    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
  }

  for (int i = listOfParticles.size() - 1; i>= 0; i--) {  // this for loop will check when particles leave the screen and if they do then they will be removed
    Particle thisParticle = listOfParticles.get(i);
    if (thisParticle.coords.x > (width -4) || thisParticle.coords.x < 5)
    {
      thisParticle.speed.x = thisParticle.speed.x * -1;
    }
  }
  for (int i = listOfParticles.size() - 1; i>= 0; i--) {  // this for loop will check when particles leave the screen and if they do then they will be removed
    Particle thisParticle = listOfParticles.get(i);
    if (thisParticle.coords.y > (height -4) || thisParticle.coords.y < 5)
    {
      thisParticle.speed.y = thisParticle.speed.y * -1;
    }
  }
  // int total = listOfParticles.size();
  // println (total);
}