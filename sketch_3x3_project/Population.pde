void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
   backgroundX = appWidth * 0;
   backgroundY = appHeight * 0;
   backgroundWidth = appWidth;
   backgroundHeight = appHeight;
   //
   LineX = appWidth * 0 ;
   LineY = appHeight * 0  ;
   LineWidth = appWidth ;
   LineHeight = appHeight ;
   //
   quitWidth = appWidth * 1/3 ;
   quitHeight = appHeight * 1/10 ;
   quitX = centerX - quitWidth * 1/2 ;
   quitY = centerY - 4 * quitHeight ;
   //
     quitButtonImageRectWidth = quitWidth  ;
   quitButtonImageRectHeight = quitHeight ;
   quitButtonImageRectX = quitX ;
   quitButtonImageRectY = quitY ;
   //
    //
   /*
   IMG1ButtonImageRectWidth = quitWidth  ;
   IMG1ButtonImageRectHeight = quitHeight ;
   IMG1ButtonImageRectX = quitX ;
  IMG1ButtonImageRectY = quitY ;
  */
  //
}//End Population
//
//End Population Subprogram
