//IMAGE 2
float imageX2, imageY2, imageWidth2, imageHeight2, picWidthAdjusted2, picHeightAdjusted2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float imageLargerDimension2, imageSmallerDimension2;
PImage pic2;
Boolean widthLarger2=false, heightLarger2=false;
boolean picDraw2=false;
//
void image2(){
//CANVAS

//Popoulation
pic2 = loadImage("../Images/Iphone 3.jpg"); //Dimensions: width:929, height: 700
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth2 = 929;
int picHeight2 = 700; 
if ( picWidth2 >= picHeight2) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension2 = picWidth2;
 imageSmallerDimension2 = picHeight2;
 widthLarger2 = true;
} else {
  //False if Portrait
  imageLargerDimension2 = picHeight2;
  imageSmallerDimension2 = picWidth2;
  heightLarger2 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2); //Verifyting variables details
//
//
if( widthLarger2 == true ) imageWidthRatio2 = imageLargerDimension2/ imageLargerDimension2;
if( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2/ imageLargerDimension2;
if( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2/ imageLargerDimension2;
if( heightLarger2 == true ) imageHeightRatio2 = imageLargerDimension2/ imageLargerDimension2;
//
imageX2 = midCenterX;
imageY2 = midCenterY;
imageWidth2 = midCenterWidth; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight2 = midCenterHeight;
//
rect(imageX2, imageY2, imageWidth2, imageHeight2); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
//image();
}
