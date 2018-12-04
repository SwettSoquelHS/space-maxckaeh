class Jumbo extends Normal {
  Jumbo(double x, double y, double angle, double speed) {
    super(x,y,angle,speed);
    x_pos = x+Math.random();
    y_pos = y;   
    this.angle = angle;
    this.speed = speed;
    r = 100;
    g = 255;
    b = 123;
  }
  void move(){
    fill(0,0,255);
    x_pos = x_pos + Math.cos(angle) * speed;
    y_pos = y_pos + Math.sin(angle) * speed;
    if(x_pos >= 800 || x_pos <= 0){
      x_pos = 400;
      y_pos = 400;
      angle = angle + 1;
    }
    if(y_pos >= 800 || y_pos <= 0){
      y_pos = 400;
      x_pos = 400;
      angle = angle + 1;
    }
  }
  void show(){
    pushMatrix();
    fill(r,g,b);
    ellipse((float) x_pos, (float) y_pos, 5, 5);
    popMatrix();
  }
}
