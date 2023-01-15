//Global Variables
int appWidth;
int appHeight;
int XCenter;
int YCenter;
boolean RightTop=false;
boolean RightMid=false;
boolean RightLow=false;
boolean MidTop=false;
boolean midLow=false;
boolean LeftTop=false;
boolean LeftMid=false;
boolean LeftLow=false;
String startButtonText= "Start";
PFont buttonFont;
color black=#000000, resetBlack=black;
color Blue=#0000FF, white=#FFFFFF, resetButtonColour=#00eaff, buttonFill;
Boolean nightMode=false;
color backgroundColor;
//
void setup() {
  //CANVAS
  fullScreen();
  println(width, height, displayWidth, displayHeight);
    if (width>displayWidth) 
{appWidth=displayWidth;println("Readjust Canvas");} else{
appWidth=width;
println("Canvas is Ready.");}
//
 if (height>displayHeight) 
{appHeight=displayHeight; println("Readjust canvas.");} else{
appHeight=height;
println("Canvas is Ready.");}
//
String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="rotate phone";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator
  println( DO, orientation );
  if ( orientation==ls ) { //Test Display Orientation 
    println("Ready");
  } else {
    appWidth *= 0; 
    appHeight *= 0;
    println(instruct);
  
  }
  if (nightMode==true) {
    backgroundColor = color (random(200), random (400), 255 );
    background( backgroundColor);
  }else{
    backgroundColor = color( random(200), random(400), random(100));
    background( backgroundColor);}
  //
  buttonFont= createFont ("Arial", 20);
     
  rectanglesSetup();
  //Single Executed Code
  
}
//End setup
void draw() {
  rect(midCenterX, midCenterY,midCenterWidth, midCenterHeight);
   
  rectangleDraw();
  if(pic1Draw==true){image1();}
  if(picDraw2==true){image2();}
  if(picDraw3==true){image3();}
  if(picDraw4==true){image4();}
  if(picDraw5==true){image5();}
  if(picDraw6==true){image6();}
  if(picDraw7==true){image7();}
  if(picDraw8==true){image8();}

}
//End Draw
void mousePressed() {
  if ( mouseX>=midCenterX && mouseX<=midCenterX+midCenterWidth && mouseY>=midCenterY && mouseY<=midCenterY+midCenterHeight ) 
  {RightTop=true; pic1Draw=true;}
  
  
  if ( RightTop==true){if(mouseX>=rightTopX && mouseX<=rightTopX+rightTopWidth && mouseY>=rightTopY && mouseY<=rightTopY+rightTopHeight ) { 
   RightMid=true; picDraw2=true;}}
  if ( RightMid==true){if(mouseX>=rightMidX && mouseX<=rightMidX+rightMidWidth && mouseY>=rightMidY && mouseY<=rightMidY+rightMidHeight ) { 
    RightLow=true; picDraw3=true;}}
  if ( RightLow==true){if(mouseX>=rightLowX && mouseX<=rightLowX+rightLowWidth && mouseY>=rightLowY && mouseY<=rightLowY+rightLowHeight ) { 
    midLow=true; picDraw4=true;}}
  if ( midLow==true){if(mouseX>=midLowX && mouseX<=midLowX+midLowWidth && mouseY>=midLowY && mouseY<=midLowY+midLowHeight ) { 
    LeftLow=true; picDraw5=true;}}
  if ( LeftLow==true) {if(mouseX>=leftLowX && mouseX<=leftLowX+leftLowWidth && mouseY>=leftLowY && mouseY<=leftLowY+leftLowHeight ) { 
    LeftMid=true; picDraw6=true;}}
  if ( LeftMid ==true){if(mouseX>=leftMidX && mouseX<=leftMidX+leftMidWidth && mouseY>=leftMidY && mouseY<=leftMidY+leftMidHeight ) { 
    LeftTop=true; picDraw7=true; nightMode=true;backgroundColor = color (random(255), random (255), 0 );
    background( backgroundColor);}}
  if (LeftTop==true){if( mouseX>=leftTopX && mouseX<=leftTopX+leftTopWidth && mouseY>=leftTopY && mouseY<=leftTopY+leftTopHeight ) { 
    MidTop=true; picDraw8=true;}}
  if( MidTop==true){if(mouseX>=midTopX && mouseX<=midTopX+midTopWidth && mouseY>=midTopY && mouseY<=midTopY+midTopHeight ) {
    exit();
  }}
  //End Hover-Over
  fill(buttonFill); //
   rect(rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 20);
  text(startButtonText,rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  stroke(1);
  fill(resetBlack);
}
//End mousePressed
void keyPressed() {
}
//END KEYPRESSED
//End MAIN program
