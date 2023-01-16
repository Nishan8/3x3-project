//IMG 7
float imageX7, imageY7, imageWidth7, imageHeight7, picWidthAdjusted7, picHeightAdjusted7, imageWidthRatio7=0.0, imageHeightRatio7=0.0;
float imageLargerDimension7, imageSmallerDimension7;
PImage pic7;
Boolean widthLarger7=false, heightLarger7=false;
boolean picDraw7=false;
//
void image7(){
//CANVAS

//population
pic7 = loadImage("../Images/iPhone11.png"); //Dimensions: 1200x630
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth7 = 1200;
int picHeight7 = 630; 
if ( picWidth7 >= picHeight7) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension7 = picWidth7;
 imageSmallerDimension7 = picHeight7;
 widthLarger7 = true;
} else {
  //False if Portrait
  imageLargerDimension7 = picHeight7;
  imageSmallerDimension7 = picWidth7;
  heightLarger7 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension7, imageLargerDimension7, widthLarger7, heightLarger7); //Verifyting variables details
//
//
if( widthLarger7 == true ) imageWidthRatio7 = imageLargerDimension7/ imageLargerDimension7;
if( widthLarger7 == true ) imageHeightRatio7 = imageSmallerDimension7/ imageLargerDimension7;
if( heightLarger7 == true ) imageWidthRatio7 = imageSmallerDimension7/ imageLargerDimension7;
if( heightLarger7 == true ) imageHeightRatio7 = imageLargerDimension7/ imageLargerDimension7;
//
imageX7 = midCenterX;
imageY7 = midCenterY;
imageWidth7 = midCenterWidth; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight7 = midCenterHeight;
//
rect(imageX7, imageY7, imageWidth7, imageHeight7); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic7, imageX7, imageY7, imageWidth7, imageHeight7);
//image();
}
