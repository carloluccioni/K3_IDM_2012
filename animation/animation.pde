/**
 * Load and Display 
 * 
 * Images can be loaded and displayed to the screen at their actual size
 * or any other size. 
 */
 
// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="moonwalk.jpg"; */ 

PImage img;  // Declare variable "a" of type PImage

PImage img2;PImage img3;PImage img4;PImage img5;PImage img6;PImage img7;


int time = 0;
float timer = 0;
float x = 0;
float y = 0;
float speed = 2;
float angle = PI / 7;

void setup() {
  size(355, 384);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  // this is bad   
  //frameRate(3);
  
  timer = millis ();
  
  img = loadImage("1.jpg"); 
 img2 = loadImage("2.jpg"); img3 = loadImage("3.jpg"); img4 = loadImage("4.jpg");
  img5 = loadImage("5.jpg"); img6 = loadImage("6.jpg"); img7 = loadImage("7.jpg");

 
}

void draw() {
  background(200);
  // Displays the image at its actual size at point (0,0)
  if (time == 0) image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
   if (time == 1) image(img2, 0, 0); if (time == 2) image(img3, 0, 0);
    if (time == 3) image(img4, 0, 0); if (time == 4) image(img5, 0, 0);
     if (time == 5) image(img6, 0, 0); if (time == 6) image(img7, 0, 0); 
     
     
     fill(155, 140); 
     x = x + speed * cos(angle) ;
     y = y + speed * sin(angle) ;
     rect(y,x,50,50);
//time = time + 1;
  if (time >6) time = 0;
  if (millis () - timer > 1000) {
  time = time + 1;
timer = millis();}

}
