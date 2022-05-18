float movimiento=900;
float movimiento2 = 900;
float movimiento3 =900;
float movimiento4 =900;
float movimiento5 =900;
PImage bart  ;
PImage homero;
PImage maggie;
PImage lisa;
PImage marge;

float trans=0 ;
PFont Sletra ;
float movletra=200;



void setup () {
  size (600, 600);
  bart = loadImage ("bart.jpg");
  homero= loadImage ("homero.jpg");
  maggie = loadImage ("maggie.jpg");
  Sletra = loadFont ("Simpsonfont-48.vlw");
  lisa = loadImage  ("lisa.jpg");
  marge = loadImage ("marge.jpg");
}


void draw () {

  //background(0);

  trans= trans+0.2;
  textFont (Sletra);
  fill(#cbd200, trans);
  textSize(70);
  text ("los simpsons", 100, movletra);
  
  if (movletra < 199 ) {
  movletra=movletra-2;
  }



  if (movimiento <(900)) {
    movimiento=movimiento-3;

    image (homero, 200, movimiento);
    fill(250 );
    text ("HOMERO",250,movimiento+500);
  }

  if ( movimiento <0 ) {

    image (bart, 200, movimiento2);
    movimiento2= movimiento2-3;
     fill(250 );
    text ("BART",250,movimiento2+500);
  }
  if ( movimiento2 <0 ) {
    image (maggie, 200, movimiento3);
    movimiento3 = movimiento3-3;
     fill(250 );
    text ("MAGGIE",250,movimiento3+500);
  }
  
 if (movimiento3<0){
 image (lisa,200,movimiento4);
 movimiento4=movimiento4-3;
  fill(250 );
    text ("LISA",250,movimiento4+500);
 }
if (movimiento4<0){
image(marge,200,movimiento5);
movimiento5=movimiento5-3;
 fill(250 );
    text ("MARGE",250,movimiento5+500);
}
fill(0,10);
rect(0,0,600,600);
float r1= random (0,600);

if (movimiento5<-400 ){
  fill(#cbd200, trans);
text ("FIN", r1 ,r1,r1,r1);}
}

void mousePressed() {
  movimiento = movimiento-2;
  movletra= movletra-2;
  
}
