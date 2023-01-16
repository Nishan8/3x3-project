//POPULATION
float rightTopX, rightTopY, rightTopWidth, rightTopHeight;
float rightMidX, rightMidY, rightMidWidth, rightMidHeight;
float rightLowX, rightLowY, rightLowWidth, rightLowHeight;
float midTopX, midTopY, midTopWidth, midTopHeight;
float midCenterX, midCenterY,midCenterWidth, midCenterHeight;
float midLowX, midLowY, midLowWidth, midLowHeight;
float leftTopX, leftTopY, leftTopWidth, leftTopHeight;
float leftMidX, leftMidY, leftMidWidth, leftMidHeight;
float leftLowX, leftLowY, leftLowWidth, leftLowHeight;
String RightTopText= "Then came the next";
String RightMidText= "The design had changed, but not significantly until...";
String RightLowText= "The next was even smarter";
String MidLowText= "the design changed once again";
String LeftLowText="The home button was removed";
String LeftMidText="The camera changes once again";
String LeftTopText="Another small change";
String MidTopText="Until the current iPhone";
void rectanglesSetup() {
  //Population
  appWidth=width;
  appHeight=height;
int xCenter=appWidth/2;
int yCenter=appHeight/2;
  rightTopX=xCenter-appWidth/2;
  rightTopY=yCenter-appHeight/2;
  rightTopWidth=appWidth/3;
  rightTopHeight=appHeight/3;
  //RightTop
  rightMidX=xCenter-appWidth/2;
  rightMidY=yCenter-appHeight/6;
  rightMidWidth=appWidth/3;
  rightMidHeight=appHeight/3;
  //RightMid
  rightLowX=xCenter-appWidth/2;
  rightLowY=rightMidY+rightMidHeight;
  rightLowWidth=appWidth/3;
  rightLowHeight=appHeight/3;
  //RightLow
  midTopX=xCenter-appWidth/6;
  midTopY=yCenter-appHeight/2;
  midTopWidth=appWidth/3;
  midTopHeight=appHeight/3;
  //MidTop
  midCenterX=xCenter-appWidth/6;
  midCenterY=yCenter-appHeight/6;
  midCenterWidth=appWidth/3;
  midCenterHeight=appHeight/3;
  //MidCenter
  midLowX=xCenter-appWidth/6;
  midLowY=rightMidY+rightMidHeight;
  midLowWidth=appWidth/3;
  midLowHeight=appHeight/3;
  //midLow
  leftTopX=xCenter+midLowWidth/2;
  leftTopY=yCenter-appHeight/2;
  leftTopWidth=appWidth/3;
  leftTopHeight=appHeight/3;
  //LeftTop
  leftMidX=xCenter+midLowWidth/2;
  leftMidY=yCenter-appHeight/6;
  leftMidWidth=appWidth/3;
  leftMidHeight=appHeight/3;
  //LeftMid
  leftLowX=xCenter+midLowWidth/2;
  leftLowY=rightMidY+rightMidHeight;
  leftLowWidth=appWidth/3;
  leftLowHeight=appHeight/3;
  //LeftLow
  
  
  
  
}
//End rectanglesSetup

void rectangleDraw() {
  if (RightTop==true) {rect(rightTopX, rightTopY, rightTopWidth, rightTopHeight);} 
  if (RightMid==true) {rect(rightMidX, rightMidY, rightMidWidth, rightMidHeight);}
  if (RightLow==true) {rect(rightLowX, rightLowY, rightLowWidth, rightLowHeight);}
  if (MidTop==true) {rect(midTopX, midTopY, midTopWidth, midTopHeight);}
  if (midLow==true) { rect(midLowX, midLowY, midLowWidth, midLowHeight);}
  if (LeftTop==true) {rect(leftTopX, leftTopY, leftTopWidth, leftTopHeight);}
  if (LeftMid==true) {rect(leftMidX, leftMidY, leftMidWidth, leftMidHeight);}
  if (LeftLow==true) {rect(leftLowX, leftLowY, leftLowWidth, leftLowHeight);}
  if(mouseX>=midCenterX && mouseX<=midCenterX+midCenterWidth && mouseY>=midCenterY && mouseY<=midCenterY+midCenterHeight) {
    buttonFill = white ;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(midCenterX, midCenterY,midCenterWidth, midCenterHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(startButtonText,midCenterX, midCenterY,midCenterWidth, midCenterHeight);
  stroke(1);
  fill(resetBlack);
  if(RightTop==true){if(mouseX>=rightTopX && mouseX<=rightTopX+rightTopWidth && mouseY>=rightTopY && mouseY<=rightTopY+rightTopHeight ) {
    buttonFill = white ;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(RightTopText,rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  stroke(1);
  fill(resetBlack);}
 // 
  if(RightMid==true){if(mouseX>=rightMidX && mouseX<=rightMidX+rightMidWidth && mouseY>=rightMidY && mouseY<=rightMidY+rightMidHeight ) {
    buttonFill = white ;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(rightMidX, rightMidY, rightMidWidth, rightMidHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(RightMidText,rightMidX, rightMidY, rightMidWidth, rightMidHeight);
  stroke(1);
  fill(resetBlack);}
  //
  if(RightLow==true){if(mouseX>=rightLowX && mouseX<=rightLowX+rightLowWidth && mouseY>=rightLowY && mouseY<=rightLowY+rightLowHeight ) {
    buttonFill = white ;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(rightLowX, rightLowY, rightLowWidth, rightLowHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(RightLowText,rightLowX, rightLowY, rightLowWidth, rightLowHeight);
  stroke(1);
  fill(resetBlack);}
  //
  if(midLow==true){if(mouseX>=midLowX && mouseX<=midLowX+midLowWidth && mouseY>=midLowY && mouseY<=midLowY+midLowHeight ) {
    buttonFill = white ;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(midLowX, midLowY, midLowWidth, midLowHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(MidLowText,midLowX, midLowY, midLowWidth, midLowHeight);
  stroke(1);
  fill(resetBlack);}
  //
  if(LeftLow==true){if(mouseX>=leftLowX && mouseX<=leftLowX+leftLowWidth && mouseY>=leftLowY && mouseY<=leftLowY+leftLowHeight ) {
    buttonFill = white ;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(leftLowX, leftLowY, leftLowWidth, leftLowHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(LeftLowText,leftLowX, leftLowY, leftLowWidth, leftLowHeight);
  stroke(1);
  fill(resetBlack);}
  //
  if(LeftMid==true){if(mouseX>=leftMidX && mouseX<=leftMidX+leftMidWidth && mouseY>=leftMidY && mouseY<=leftMidY+leftMidHeight ) {
    buttonFill = white ;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(leftMidX, leftMidY, leftMidWidth, leftMidHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(LeftMidText,leftMidX, leftMidY, leftMidWidth, leftMidHeight);
  stroke(1);
  fill(resetBlack);}
  //
  if(LeftTop==true){if(mouseX>=leftTopX && mouseX<=leftTopX+leftTopWidth && mouseY>=leftTopY && mouseY<=leftTopY+leftTopHeight ) {
    buttonFill = blue ;
  } else {
    buttonFill =white;
  }//End Hover-Over
  fill(buttonFill); //
   rect(leftTopX, leftTopY, leftTopWidth, leftTopHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 22);
  text(LeftTopText,leftTopX, leftTopY, leftTopWidth, leftTopHeight);
  stroke(1);
  fill(resetBlack);}
  //
  if(MidTop==true){if(mouseX>=midTopX && mouseX<=midTopX+midTopWidth && mouseY>=midTopY && mouseY<=midTopY+midTopHeight ) {
    buttonFill = white;
  } else {
    buttonFill =blue;
  }//End Hover-Over
  fill(buttonFill); //
   rect(midTopX, midTopY, midTopWidth, midTopHeight);
  fill(resetButtonColour);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  text(MidTopText,midTopX, midTopY, midTopWidth, midTopHeight);
  stroke(1);
  fill(resetBlack);}
}
//End rectangleDraw
