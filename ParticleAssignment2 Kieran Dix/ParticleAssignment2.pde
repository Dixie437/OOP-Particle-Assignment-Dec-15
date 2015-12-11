
ArrayList<Particle> listOfParticles;

void setup(){
  
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
  
  colorMode(HSB, 100);
  
}
 

void draw(){
  
  background(0, 0, 100);
  
    
    listOfParticles.add(new Particle(new PVector(mouseX, mouseY ), // by changing this to mouseX and mouseY it will make the particles appear at the location of the mouse
                                     10,
                                     color(random(0, 100), 100, 100),
                                     new PVector(random(-4, 4), 
                                     random(-4, 4))));

  
  for(Particle thisParticle: listOfParticles){            
                                                          
                                                          
                                                                                                                    
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
  }
  for (int i = listOfParticles.size() - 1; i>= 0; i--) {   // this for loop checks whether the particles are outside the borders of the screen and if they are, it will then delete them
   Particle thisParticle = listOfParticles.get(i);
     if (thisParticle.coords.x > width || thisParticle.coords.y > height || thisParticle.coords.y < 0)
     {
       listOfParticles.remove(i);
     }
    
  }
  int total = listOfParticles.size();
  println (total);
}