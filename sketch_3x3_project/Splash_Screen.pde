//IMAGE 5
float imageX5, imageY5, imageWidth5, imageHeight5, picWidthAdjusted5, picHeightAdjusted5, imageWidthRatio5=0.0, imageHeightRatio5=0.0;
float imageLargerDimension5, imageSmallerDimension5;
PImage pic5;
Boolean widthLarger5=false, heightLarger5=false;
boolean picDraw5=false;
//
void image5(){
//CANVAS

//Population
pic5 = loadImage("../Images/iphone.jpg"); //1280x720
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth5 = 1280;
int picHeight5 = 720; 
if ( picWidth5 >= picHeight5) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension5 = picWidth5;
 imageSmallerDimension5 = picHeight5;
 widthLarger5 = true;
} else {
  //False if Portrait
  imageLargerDimension5 = picHeight5;
  imageSmallerDimension5 = picWidth5;
  heightLarger5 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension5, imageLargerDimension5, widthLarger5, heightLarger5); //Verifyting variables details
//
//
if( widthLarger5 == true ) imageWidthRatio5 = imageLargerDimension5/ imageLargerDimension5;
if( widthLarger5 == true ) imageHeightRatio5 = imageSmallerDimension5/ imageLargerDimension5;
if( heightLarger5 == true ) imageWidthRatio5 = imageSmallerDimension5/ imageLargerDimension5;
if( heightLarger5 == true ) imageHeightRatio5 = imageLargerDimension5/ imageLargerDimension5;
//
imageX5 = midCenterX;
imageY5 = midCenterY;
imageWidth5 = midCenterWidth; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight5 = midCenterHeight;
//
rect(imageX5, imageY5, imageWidth5, imageHeight5); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image();
}
