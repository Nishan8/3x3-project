int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpacity=85;
//
void homeScreen() {
  println("Arrived at Home Screen"); //Testing for Splash Screen Start Button
  /* Home Screen Expectations
   -background image using tint()
   - 9 evenly spaced rectangles, assignment #3
   -Quit button and Reset Button (splash screen start)
   -In each: image, text, 2d shape, and button
   -Narative through 9 rectangles
   -See case study
   -Note: must have one image with aspect ratio
   */
  //
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  strokeWeight(1); //Reset 1 pixel
  fill(white);//Reset: white
}//End backgroundWhiteScreen()
void backgroundImage() {
    backgroundWhiteScreen();
   // tint(tintDayMode, tintDayModeOpacity );//Day Mode, see ternary operator
   tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity);//Night Mode, see ternary operator
    image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
}//End backgroundImage
//
//End Home Screen Subprogram
