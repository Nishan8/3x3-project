PImage backGroundImage, quitButtonImage;
int quitButtonImageWidth = 1024, quitButtonImageHeight= 768 ;
float quitButtonImageWidth_Adjusted = 0.0, quitButtonImageHeight_Adjusted= 0.0 ;
float quitButtonImageWidth_Calculated = 0.0, quitButtonImageHeight_Calculated= 0.0 ;
float LargerDimension = 0.0, smallerDimension1= 0.0;
float  ImageWidthRatio=0.0, ImageRatio=0.0;
float ImageHeightRatio;

//

//
//
//1024 x 768 
//
void imagePopulation() {
  backGroundImage = loadImage ("../Images/AppleLogoImage.jpg");
}//End imagePopulation
//
void quitButtonImage() {
  quitButtonImage = backGroundImage;
  rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
  //ASPECT RATIO
  if ( quitButtonImageWidth >= quitButtonImageHeight ) {
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth;
    ImageHeightRatio= smallerDimension/LargerDimension;
    quitButtonImageHeight_Calculated = quitButtonImageWidth_Adjusted*ImageHeightRatio;
    //
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX-quitButtonImageWidth_Adjusted *1/2;
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
    ////////
  } else {//Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight;
    ImageWidthRatio= smallerDimension/LargerDimension;
    quitButtonImageWidth_Calculated = quitButtonImageHeight_Adjusted*ImageWidthRatio;
    //
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Calculated*1/2;
    imageNightMode();
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Calculated, quitButtonImageHeight_Adjusted);
    //
  }


  // image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //
  //Rectangle's smallest dimension
  //Image's scaled dimension matching rectangles smallest dimension
  //Images other dimension, scaled
}//End quitButtonImage
void imageNightMode() {
  if ( nightMode==true ) {
    tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  } else {
    tint( tintDayMode, tintDayModeOpacity );
  }
}
//End Images Subprogram
