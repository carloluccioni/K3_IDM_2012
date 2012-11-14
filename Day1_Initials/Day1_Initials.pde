void setup () {
  println("Start");
  size (300,300);

}


void draw () {
    background (200);
noFill();

rect (10, 15, 135, 85, 7);
stroke(0,200,255);
strokeWeight(4) ;
arc(50, 55, 60, 60, HALF_PI, PI+HALF_PI); 

line(80, 30, 80, 87);
line(80, 87, 125, 87);
noFill();
    //print the framerate
     println(frameRate);
}
