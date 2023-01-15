//IMAGE 6
float imageX6, imageY6, imageWidth6, imageHeight6, picWidthAdjusted6, picHeightAdjusted6, imageWidthRatio6=0.0, imageHeightRatio6=0.0;
float imageLargerDimension6, imageSmallerDimension6;
PImage pic6;
Boolean widthLarger6=false, heightLarger6=false;
boolean picDraw6=false;
//
void image6(){
//CANVAS

//Popoulation
pic6 = loadImage("../Images/iPhoneX.jpg"); //Dimensions: width:2016, height: 1320
int picWidth6 = 2016;
int picHeight6 = 1320; 
if ( picWidth6 >= picHeight6) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension6 = picWidth6;
 imageSmallerDimension6 = picHeight6;
 widthLarger6 = true;
} else {
  //False if Portrait
  imageLargerDimension6 = picHeight6;
  imageSmallerDimension6 = picWidth6;
  heightLarger6 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension6, imageLargerDimension6, widthLarger6, heightLarger6); //Verifyting variables details
//
//
if( widthLarger6 == true ) imageWidthRatio6 = imageLargerDimension6/ imageLargerDimension6;
if( widthLarger6 == true ) imageHeightRatio6 = imageSmallerDimension6/ imageLargerDimension6;
if( heightLarger6 == true ) imageWidthRatio6 = imageSmallerDimension6/ imageLargerDimension6;
if( heightLarger6 == true ) imageHeightRatio6 = imageLargerDimension6/ imageLargerDimension6;
//
imageX6 = midCenterX;
imageY6 = midCenterY;
imageWidth6 = midCenterWidth; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight6 = midCenterHeight;
//
rect(imageX6, imageY6, imageWidth6, imageHeight6); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic6, imageX6, imageY6, imageWidth6, imageHeight6);
//image();
}
