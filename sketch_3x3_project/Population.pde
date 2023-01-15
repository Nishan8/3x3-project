//IMAGE 4
float imageX4, imageY4, imageWidth4, imageHeight4, picWidthAdjusted4, picHeightAdjusted4, imageWidthRatio4=0.0, imageHeightRatio4=0.0;
float imageLargerDimension4, imageSmallerDimension4;
PImage pic4;
Boolean widthLarger4=false, heightLarger4=false;
boolean picDraw4=false;
//
void image4(){
//CANVAS

//Popoulation
pic4 = loadImage("../Images/4iphone 5.jpg"); //Dimensions: width:612, height: 404
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth4 = 612;
int picHeight4 = 404; 
if ( picWidth4 >= picHeight4) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension4 = picWidth4;
 imageSmallerDimension4 = picHeight4;
 widthLarger4 = true;
} else {
  //False if Portrait
  imageLargerDimension4 = picHeight4;
  imageSmallerDimension4 = picWidth4;
  heightLarger4 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension4, imageLargerDimension4, widthLarger4, heightLarger4); //Verifyting variables details
//
//
if( widthLarger4 == true ) imageWidthRatio4 = imageLargerDimension4/ imageLargerDimension4;
if( widthLarger4 == true ) imageHeightRatio4 = imageSmallerDimension4/ imageLargerDimension4;
if( heightLarger4 == true ) imageWidthRatio4 = imageSmallerDimension4/ imageLargerDimension4;
if( heightLarger4 == true ) imageHeightRatio4 = imageLargerDimension4/ imageLargerDimension4;
//
imageX4 = midCenterX;
imageY4 = midCenterY;
imageWidth4 = midCenterWidth; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight4 = midCenterHeight;
//
rect(imageX4, imageY4, imageWidth4, imageHeight4); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic4, imageX4, imageY4, imageWidth4, imageHeight4);
//image();
}
