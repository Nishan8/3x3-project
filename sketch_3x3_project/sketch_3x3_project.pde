//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false;
color purple=#FF00FF, resetDefaultInk=#FFFFFF;
//
void setup() {
  size(600, 400);
  //fullScreen(); //displayWidth //displayHeight
  appWidth = width;
  appHeight = height;
  //Assignment: Display Algorithm from Hello World
  display();
  population();
  textSetup();
}//End setup
//
void draw() {
  //Assignment #2: OS Level Mouse Click and Splash Screen 
  if ( OS_on==true ) splashScreen(); //OS Level Mouse Click 
}//End draw
//
void keyPressed() {
  
}//End keyPressed
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false )  OS_on=true; //End OS Level Mouse Click
}//End mousePressed
//
//End MAIN Program
