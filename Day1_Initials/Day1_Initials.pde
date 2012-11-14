int x = 10;

void setup () {
  println("Start");
  size (300, 300);
}


void draw () {

  background (200);
  
                  // increase the x axis counter
                  x= x + 1 ;
                  
                  //check if the oject left the screen
                  if (x > width) {
              //if is out of the screen, make it show up one the left
              // side by makeing the coordinate smaller than the objects width
                  x = -200; }
                  
                  //move the whole thing to the right
                  translate(x, 0);

  //Rectangle
  noFill();
  rect (10, 15, 135, 85, 7);
  //C
  stroke(0, 200, 255);
  strokeWeight(4) ;
  arc(50, 55, 60, 60, HALF_PI, PI+HALF_PI); 
  //L
  line(80, 30, 80, 87);
  line(80, 87, 125, 87);
  noFill();

  //print the framerate
  println(frameRate);
}

