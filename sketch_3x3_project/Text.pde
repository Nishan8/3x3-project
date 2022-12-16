PFont Arial;
String quitButton = "Quit", spaceBar = "space";
//
void textSetup() {
   Arial = createFont("Arial", 50);
}//End textsetup
//
//
//
void quitButtonText() {
 // rect(startX, startY, startWidth, startHeight);
  fill(white); //Ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 60;
  textFont(Arial, size);
  text( quitButton, quitX, quitY, quitWidth, quitHeight);
  noFill();
  // text();
}//End quitButtonText
//
//
//
void spaceBarText() {
 // rect(startX, startY, startWidth, startHeight);
  fill(purple); //Ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 19;
  textFont(Arial, size);
  text( spaceBar, startX, startY, startWidth, startHeight);
  fill(resetDefaultInk);
  // text();
}//End spacebarText
//
//End Text Subprogram
