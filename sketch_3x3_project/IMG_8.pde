//IMG 8 
float imageX8, imageY8, imageWidth8, imageHeight8, picWidthAdjusted8, picHeightAdjusted8, imageWidthRatio8=0.0, imageHeightRatio8=0.0;
float imageLargerDimension8, imageSmallerDimension8;
PImage pic8;
Boolean widthLarger8=false, heightLarger8=false;
boolean picDraw8=false;
//
void image8(){
//CANVAS
//Popoulation
pic8 = loadImage("../Images/iPhone13.jpg"); //Dimensions: width:1400, height: 900
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth8 = 2260;
int picHeight8 = 1695; 
if ( picWidth8 >= picHeight8) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension8 = picWidth8;
 imageSmallerDimension8 = picHeight8;
 widthLarger8 = true;
} else {
  //False if Portrait
  imageLargerDimension8 = picHeight8;
  imageSmallerDimension8 = picWidth8;
  heightLarger8 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension8, imageLargerDimension8, widthLarger8, heightLarger8); //Verifyting variables details
//
//
if( widthLarger8 == true ) imageWidthRatio8 = imageLargerDimension8/ imageLargerDimension8;
if( widthLarger8 == true ) imageHeightRatio8 = imageSmallerDimension8/ imageLargerDimension8;
if( heightLarger8 == true ) imageWidthRatio8 = imageSmallerDimension8/ imageLargerDimension8;
if( heightLarger8 == true ) imageHeightRatio8 = imageLargerDimension8/ imageLargerDimension8;
//
imageX8 = midCenterX;
imageY8 = midCenterY;
imageWidth8 = midCenterWidth; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight8 = midCenterHeight;
//
rect(imageX8, imageY8, imageWidth8, imageHeight8); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic8, imageX8, imageY8, imageWidth8, imageHeight8);
//image();
}
