//IMAGE 3
float imageX3, imageY3, imageWidth3, imageHeight3, picWidthAdjusted3, picHeightAdjusted3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
float imageLargerDimension3, imageSmallerDimension3;
PImage pic3;
Boolean widthLarger3=false, heightLarger3=false;
boolean picDraw3=false;
//
void image3(){
//CANVAS

//Popoulation
pic3 = loadImage("../Images/3iphone 4.jpg"); //Dimensions: width:800, height: 533
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth3 = 800;
int picHeight3 = 533; 
if ( picWidth3 >= picHeight3) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension3 = picWidth3;
 imageSmallerDimension3 = picHeight3;
 widthLarger3 = true;
} else {
  //False if Portrait
  imageLargerDimension3 = picHeight3;
  imageSmallerDimension3 = picWidth3;
  heightLarger3 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension3, imageLargerDimension3, widthLarger3, heightLarger3); //Verifyting variables details
//
//
if( widthLarger3 == true ) imageWidthRatio3 = imageLargerDimension3/ imageLargerDimension3;
if( widthLarger3 == true ) imageHeightRatio3 = imageSmallerDimension3/ imageLargerDimension3;
if( heightLarger3 == true ) imageWidthRatio3 = imageSmallerDimension3/ imageLargerDimension3;
if( heightLarger3 == true ) imageHeightRatio3 = imageLargerDimension3/ imageLargerDimension3;
//
imageX3 = midCenterX;
imageY3 = midCenterY;
imageWidth3 = midCenterWidth; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight3 = midCenterHeight;
//
rect(imageX3, imageY3, imageWidth3, imageHeight3); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic3, imageX3, imageY3, imageWidth3, imageHeight3);
//image();
}
