PFont Arial;
String spaceBar = "Press the SPACE BAR to continue";
//
void textSetup() {
   Arial = createFont("Arial", 55);
}//End textsetup
void spaceBarText() {
  rect(startX, startY, startWidth, startHeight);
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
