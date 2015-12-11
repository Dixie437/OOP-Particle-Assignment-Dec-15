ArrayList<Particle> listOfParticles;

void setup(){
  
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
  
  colorMode(HSB, 100);
  
}
 

void draw(){
  
  background(0, 0, 100);
  
    
    listOfParticles.add(new Particle(new PVector(width/2, height/2),  // this will make the particles appear in the exact centre of the screen
                                     10,
                                     color(random(0, 100), 100, 100),
                                     new PVector(random(-4, 4), 
                                     random(-4, 4))));

  
  for(Particle thisParticle: listOfParticles){            
                                                          
                                                          
                                                          
                                                          
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
  }
  for (int i = listOfParticles.size() - 1; i>= 0; i--) {  // this for loop will check when particles leave the screen and if they do then they will be removed
   Particle thisParticle = listOfParticles.get(i);
     if (thisParticle.coords.x > width || thisParticle.coords.y > height || thisParticle.coords.y < 0)
     {
       listOfParticles.remove(i);
     }
    
  }
  int total = listOfParticles.size();   
  println (total);
}