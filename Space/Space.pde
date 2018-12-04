//Declare your variables here
Normal[] particle1 = new Normal[100];
Normal[] particle2 = new Normal[100];
Oddball[] specialParticle = new Oddball[1];
Jumbo[] largeParticle = new Jumbo[10];
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
  
void setup() {
  size(800,800);
  for (int i = 0; i < particle1.length; i++) {
   particle1[i] = new Normal(400, 400, (int)((Math.random()*360) + 1), 20);
   particle2[i] = new Normal(400, 400, (int)((Math.random()*360) + 1), 10);
  }
  for (int i = 0; i < specialParticle.length; i++) {
   specialParticle[i] = new Oddball(400, 400, (int)((Math.random()*360) + 1), 5);
  }
  for (int i = 0; i < largeParticle.length; i++) {
    largeParticle[i] = new Jumbo(400,400, (int)((Math.random()*360) + 5), 7);    
  }
	//your code here
} //end of setup
 

void draw() {
	//your code here
    background(5,0,15);
    for (int i = 0; i < specialParticle.length; i++) {
      specialParticle[i].show();
      //specialParticle[i].move();
    }
    for (int i = 0; i < particle1.length; i++) {
      particle1[i].show();
      particle2[i].show();
      particle1[i].move();
      particle2[i].move();
    }
    for (int i = 0; i < largeParticle.length; i++) {
      largeParticle[i].show();
      largeParticle[i].move();
    }
} //end of draw
