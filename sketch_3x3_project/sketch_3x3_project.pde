//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false, nightMode=false;
color purple=#FF00FF, resetDefaultInk=#000000, white=#FFFFFF;
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
  imagePopulation();
}//End setup
//
void draw() {
  //Assignment #2: OS Level Mouse Click and Splash Screen 
  if ( OS_on==true && splashScreenStart==false ) splashScreen(); //OS Level Mouse Click 
  if ( splashScreenStart==true ) homeScreen();
}//End draw
//
void keyPressed() {
  { //Splash Screen SPACE Bar 
    if ( OS_on==true && key==' ') 
      splashScreenStart = true;
  }
  backgroundImage();
  //End Splash Screen SPACE Bar
  //
  //Key Board Short Cuts 
  if ( key==CODED && keyCode==ESC ) exit();
  if ( key=='Q' || key=='q') exit();
  if ( key=='N' || key=='n' ) { 
    if ( nightMode==true ) {
      nightMode=false;
       backgroundImage();
    } else { 
      nightMode=true;
      backgroundImage();
    }
  }
  //
}//End keyPressed
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false )  OS_on=true; //End OS Level Mouse Click
}//End mousePressed
//
//End MAIN Program
