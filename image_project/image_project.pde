//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float topX, topY, topWidth, topHeight;
float topX4, topY4, topWidth4, topHeight4;
float bottomX, bottomY, bottomWidth, bottomHeight;
float bottomX5, bottomY5, bottomWidth5, bottomHeight5;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float picWidthAdjusted4=0.0, picHeightAdjusted4=0.0;
PImage pic1, pic2, pic3, pic4, pic5;
Boolean nightMode=false, tintR=false, tintG=false,tintB=false,tintReset=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup()
{
  size(800, 600); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic1 = loadImage("../Images Used/Landscape/HD-wallpaper-giraffe-funny-landscape-animals.jpg");
  pic2 = loadImage("../Images Used/Landscape/b566e3e5-toyota-86-wide-body-kit-326power-tuning-0.jpg");
  pic3 = loadImage("../Images Used/Portrait/Funny-Face-Delora-226x300.jpg");
  pic4 = loadImage("../Images Used/Portrait/Funny-Face-Delora-226x300.jpg");
  pic5 = loadImage("../Images Used/Landscape/b566e3e5-toyota-86-wide-body-kit-326power-tuning-0.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  bottomX5 = appWidth * 0.4/4;
  bottomY5 = appHeight * 1.9/4;
  bottomWidth5 = appWidth * 5/20;
  bottomHeight5 = appHeight * 10/20;
  topX = appWidth * 0.15/4;
  topY = appHeight * 0.3/4;
  topWidth = appWidth * 8/20;
  topHeight = appHeight * 11/20;
  topX4 = appWidth * 2.8/4;
  topY4 = appHeight * 0.2/4;
  topWidth4 = appWidth * 5.5/20;
  topHeight4 = appHeight * 5/20;
  bottomX = appWidth * 1/2;
  topX = appWidth * 0.4/4;
  topY = appHeight * 0.2/4;
  topWidth = appWidth * 5/20;
  topHeight = appHeight * 12/20;
  bottomX = appWidth * 2.5/4;
  bottomY = appHeight * 2.8/4;
  bottomWidth = appWidth * 7/20;
  bottomHeight = appHeight * 5/20;
  //
  //Image Dimensions for Aspect Ratio: image meta data
  //Note: meta explored in MP3's or music files
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth1 = 800;//Giraffe image
  int picHeight1 = 600;
  int picWidth2 = 1700;//Car image
  int picHeight2 = 920;
  int picWidth3 = 735;//Tall man image
  int picHeight3 = 900;
  int picWidth4 = 226;//Grandma
  int picHeight4 = 300;
  //
  //Image Orientation: Landscape, Square, Portrait
  float smallerDimension1, largerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float smallerDimension2, largerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float smallerDimension4, largerDimension4, imageWidthRatio4=0.0, imageHeightRatio4=0.0;
  //
  if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted2 = topWidth; //stretch or reduce
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
    //
    if ( picHeightAdjusted2 > topHeight ) { //Error Catch
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    //Students to create
    picHeightAdjusted2 = topHeight; //stretch or reduce
    imageWidthRatio2 = smallerDimension2 / largerDimension2;
    picWidthAdjusted2 = picHeightAdjusted2 * imageWidthRatio2;
    if ( picWidthAdjusted2 > topWidth ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  //
  if ( picWidth4 >= picHeight4 ) { //True if Landscape or Square
    largerDimension4 = picWidth4;
    smallerDimension4 = picHeight4;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted4 = topWidth4; //stretch or reduce
    imageHeightRatio4 = smallerDimension4 / largerDimension4;
    picHeightAdjusted4 = picWidthAdjusted4 * imageHeightRatio4;
    //
    if ( picHeightAdjusted4 > topHeight4 ) { //Error Catch
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension4 = picHeight4;
    smallerDimension4 = picWidth4;
    //
    //Students to create
    picHeightAdjusted4 = topHeight4; //stretch or reduce
    imageWidthRatio4 = smallerDimension4 / largerDimension4;
    picWidthAdjusted4 = picHeightAdjusted4 * imageWidthRatio4;
    if ( picWidthAdjusted4 > topWidth4 ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  //
  //Rectangular Layout and Image Drawing to CANVAS
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topX, topY, topWidth, topHeight );
  rect( topX4, topY4, topWidth4, topHeight4 );
  rect( bottomX, bottomY, bottomWidth, bottomHeight );
  rect( bottomX5, bottomY5, bottomWidth5, bottomHeight5 );
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  image( pic1, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
}//End setup
//
void draw()
{
  image( pic2, topX, topY, picWidthAdjusted2, picHeightAdjusted2 );
  image( pic3, bottomX, bottomY, bottomWidth, bottomHeight );
  image( pic4, topX4, topY4, picWidthAdjusted4, picHeightAdjusted4);
  image( pic5, bottomX5, bottomY5, bottomWidth5, bottomHeight5 );
  //
  if ( tintR == true ) tint(255,100,0); //Gray Scale (0-255) & Blue Issue for night mode
  if ( tintG == true ) tint(0,255,0); //Gray Scale (0-255) & Blue Issue for night mode
  if ( tintB == true ) tint(0,0,255); //Gray Scale (0-255) & Blue Issue for night mode
  if ( tintReset == true ) tint(255,50); //Gray Scale (0-255) & Blue Issue for night mode
}//End draw
//
void keyPressed() {
  tintR=false;
  if ( key == 'R' || key == 'r' ) tintR = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(255, 100, 0); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic1, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
   
  tintG=false;
  if ( key == 'G' || key == 'g' ) tintG = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(0, 255, 0); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic1, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
    
  tintB=false;
  if ( key == 'B' || key == 'b' ) tintB = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(0, 0, 255); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic1, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
    
  tintReset=false;
  if ( key == 'E' || key == 'e' ) tintReset = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(0, 0, 0); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic1, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
}//End keyPressed
//
void mousePressed() {
  //  
  //Mouse Pressed will control background image
  if ( mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(64, 64, 40, 85); //RGB: Night Mode
    image( pic1, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic1, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  }
}//End mousePressed
//
//End Main Program
