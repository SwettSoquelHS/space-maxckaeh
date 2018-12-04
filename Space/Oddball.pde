class Oddball extends Normal {
  float t;
  boolean expanding;
  int expandCheckmax;
  int expandCheckmin;
  Oddball(double x, double y, double angle, double speed) {
    super(x, y, angle, speed);
    x_pos = x+Math.random();
    y_pos = y;   
    this.angle = angle;
    this.speed = speed;
    r = 0;
    g = 128;
    b = 128;
    t = 0;
    expanding = true;
    expandCheckmax = 800;
    expandCheckmin = 0;
   }
  void move() {
    t += .1;
    fill(255, 25, 255);
    x_pos = x_pos + 10*cos(t);
    y_pos = y_pos + 5*sin(t);
  }
  void show() {
    pushMatrix();
    if ( expanding ) {
      t += 2;
    } else {
      t -= 2;
    }
    if ( t > expandCheckmax && expanding) {
      expanding = false;
    } else if ( t < expandCheckmin && !expanding){
       expanding = true;
    }
    fill(r, g, b, 150);
    ellipse(400, 400, t, t);
    popMatrix();
  }
}
