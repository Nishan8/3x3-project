import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
int appWidth;
int appHeight;
int XCenter;
int YCenter;
String startButtonText= "Start";
PFont buttonFont;
color black=#000000, resetBlack=black;
color blue=#0000FF, white=#FFFFFF, resetButtonColour=#00eaff, buttonFill;
Boolean nightMode=false;
color backgroundColor;
boolean RightTop=false;
boolean RightMid=false;
boolean RightLow=false;
boolean MidTop=false;
boolean midLow=false;
boolean LeftTop=false;
boolean LeftMid=false;
boolean LeftLow=false;
//
void setup() {
  //CANVAS
  size(800,600);//Landscape
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../MusicDownload/Deck-the-halls");//able to pass absolute path, file name & extension, and URL
  println(width, height, displayWidth, displayHeight);
    if (width>displayWidth) 
{appWidth=displayWidth;println("CANVAS too big, readjust to fit screen ");} else{
appWidth=width;
println("CANVAS is Good to go on your display.");}
//
 if (height>displayHeight) 
{appHeight=displayHeight; println("CANVAS too big, readjust to fit screen.");} else{
appHeight=height;
println("CANVAS works");}
//
 String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="rotate phone";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Ready");
  } else {
    appWidth *= 0; //asignment operator
    appHeight *= 0;
    println(instruct);
    
  }
  if (nightMode==true) {
    backgroundColor = color (random(400), random (300), 0 );
    background( backgroundColor);
  }else{
    backgroundColor = color( random(400), random(235), random(300));
    background( backgroundColor);}
  //
  buttonFont= createFont ("Arial", 25);
  
  rectanglesSetup();
  //Single Executed Code
//Fonts from OS (Operating System)
//String[] fontList = PFont.list(); //To list all fonts available on OS
//printArray(fontList); //For listing all possible fonts to choose from, then createFont
  
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
void keyPressed() {
   //if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if ( key=='P' || key=='p' ) {//Play Pause Stop Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End Play Pause STop Button
  int loopNum = 2; //Local Variable plays once and loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum-1); //Parameter is Parameter is number of repeats
  if ( key=='I' || key=='i' ) song1.loop(-1); //Parameter is for infinite loops
  if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r' ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button
  if ( key=='S' || key=='s' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); //Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song position is at the end of the file
    }
  }//End STOP Button
}//End keyPressed
//
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
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(startButtonText,rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  stroke(1);
  fill(resetBlack);
}
//End mousePressed
//End MAIN program
