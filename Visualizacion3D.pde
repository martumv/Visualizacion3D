//Creado por Daniela Maldonado. Muestra la cantidad de becas de maestría otorgadas por área 
//a través de los años. Interactivo

// Creación de Tablas
Table dA, dS, MD, mA, mS;

//Variables Auxiliares
float radio, ancho;
int dVer=30;
int alto=30;
int pxC, pyC, lx, lx2;
float rotxC, anchoP;
int dim;

//Fuentes
PFont texTit, textPP, textAr;

//Imagen Fondo
PImage img;

//Colores Cilindros
color c1= color(87, 95, 98);
color c2= color(230, 204, 104);
color c3= color(142, 170, 70);
color c4= color(71, 171, 149);
color c5= color(150);
color c6= color(255);

void setup() {
  size(1350, 700, P3D);
  dim = width/2;

  //Fuente de los textos que indican las áreas
  texTit = loadFont("GillSansLight-Regular-48.vlw");
  textAr= loadFont("GillSansLight-Regular-18.vlw");
  textPP= loadFont("SourceSansPro-Semibold-24.vlw");

  img=loadImage("w.jpg");
  rotxC= 7*PI/16; //Rotación del cilindro en X

  //Ubicación Cilindros
  pxC=width/2;
  pyC=height-250;

  //Ubicación líneas
  lx=pxC+151;
  lx2=pxC+100;

  //Carga las tablas donde están los valores
  mA=loadTable("Tabla Beca Master Area.csv", "header");
}

void draw() {
  background(10);

  //Cámara normal
  camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

  //LINEA DEL TIEMPO DERECHA...................................

  //Scroller  
  fill(75, 178, 134);
  if (mouseY>=125 && mouseY<=550) {
    rect(1300, mouseY-25, 50, 50);
  }
  if (mouseY<125) {
    rect(1300, 100, 50, 50);
  }
  if (mouseY>550) {
    rect(1300, 550, 50, 50);
  }

  //Texto años
  textFont(textAr);
  fill(0);
  text("2013", 1307, 130);
  text("2012", 1307, 180);
  text("2011", 1307, 230);
  text("2010", 1307, 280);
  text("2009", 1307, 330);
  text("2008", 1307, 380);
  text("2007", 1307, 430);
  text("2006", 1307, 480);
  text("2005", 1307, 530);
  text("2004", 1307, 580);

  //TÍTULO.................................................................
  fill(200);
  textFont(texTit);
  text("Becas o Créditos para Maestría según Área", 290, 70);
  //Iluminación 
  lights();

  //AÑO 2013----------------------------------------------------------------------------------
  if (mouseY<150) {
    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(325, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 10), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(810, 320, 70, 920, 320, 70);
    line(920, 320, 70, 920, 445, 70);
    line(540, 320, 70, 270, 320, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 320);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 10), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(810, 350, 70, 860, 350, 70);
    line(860, 350, 70, 860, 470, 70);
    line(540, 350, 70, 205, 350, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 52, 353);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 10), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(708, 375, 70, 800, 375, 70);
    line(800, 375, 70, 800, 495, 70);
    line(642, 378, 70, 245, 378, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 384);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 10), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(698, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(652, 405, 70, 302, 405, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 10), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(661, 430, 70, 312, 430, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 10), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(4, 10), 0, mA.getInt(4, 10), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(1, 10), 0, mA.getInt(4, 10), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(5, 10), 0, mA.getInt(4, 10), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(3, 10), 0, mA.getInt(4, 10), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(0, 10), 0, mA.getInt(4, 10), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(2, 10), 0, mA.getInt(4, 10), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();

  }

  //AÑO 2012----------------------------------------------------------------------------------
  if (mouseY>=150 && mouseY<200) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(200, 260, 70, 353, 260, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 9), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(810, 320, 70, 920, 320, 70);
    line(920, 320, 70, 920, 445, 70);
    line(330, 320, 70, 540, 320, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 52, 320);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 9), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(713, 355, 70, 860, 355, 70);
    line(860, 355, 70, 860, 470, 70);

    line(265, 350, 70, 636, 350, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 353);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 9), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(687, 380, 70, 800, 380, 70);
    line(800, 380, 70, 800, 495, 70);
    line(242, 378, 70, 662, 378, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 384);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 9), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(685, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);

    line(300, 405, 70, 665, 405, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 9), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(310, 430, 70, 670, 430, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 9), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(5, 9), 0, mA.getInt(5, 9), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(4, 9), 0, mA.getInt(5, 9), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(1, 9), 0, mA.getInt(5, 9), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(3, 9), 0, mA.getInt(5, 9), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(0, 9), 0, mA.getInt(5, 9), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(2, 9), 0, mA.getInt(5, 9), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }

  //AÑO 2011----------------------------------------------------------------------------------
  if (mouseY>=200 && mouseY<250) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(205, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 8), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(724, 330, 70, 920, 330, 70);
    line(920, 330, 70, 920, 445, 70);
    line(332, 330, 70, 627, 330, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 52, 330);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 8), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(700, 355, 70, 860, 355, 70);
    line(860, 355, 70, 860, 470, 70);
    line(270, 355, 70, 650, 355, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 358);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 8), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(683, 375, 70, 800, 375, 70);
    line(800, 375, 70, 800, 495, 70);
    line(300, 380, 70, 668, 380, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 386);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 8), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(670, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(309, 405, 70, 672, 405, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 8), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(240, 430, 70, 673, 430, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 8), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(5, 8), 0, mA.getInt(5, 8), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(4, 8), 0, mA.getInt(5, 8), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(1, 8), 0, mA.getInt(5, 8), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(0, 8), 0, mA.getInt(5, 8), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(2, 8), 0, mA.getInt(5, 8), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(3, 8), 0, mA.getInt(5, 8), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }


  //AÑO 2010----------------------------------------------------------------------------------
  if (mouseY>=250 && mouseY<300) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(200, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 7), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(770, 325, 70, 920, 325, 70);
    line(920, 325, 70, 920, 445, 70);
    line(328, 325, 70, 579, 325, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 52, 325);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 7), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(710, 355, 70, 860, 355, 70);
    line(860, 355, 70, 860, 470, 70);
    line(268, 355, 70, 640, 355, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 358);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 7), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(682, 380, 70, 800, 380, 70);
    line(800, 380, 70, 800, 495, 70);
    line(298, 380, 70, 669, 380, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 386);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 7), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(680, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(237, 405, 70, 669, 405, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 7), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(312, 430, 70, 670, 430, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 7), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(5, 7), 0, mA.getInt(5, 7), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(4, 7), 0, mA.getInt(5, 7), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(1, 7), 0, mA.getInt(5, 7), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(0, 7), 0, mA.getInt(5, 7), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(3, 7), 0, mA.getInt(5, 7), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(2, 7), 0, mA.getInt(5, 7), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }

  //AÑO 2009----------------------------------------------------------------------------------
  if (mouseY>=300 && mouseY<350) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(325, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 6), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(815, 320, 70, 920, 320, 70);
    line(920, 320, 70, 920, 445, 70);
    line(265, 325, 70, 536, 325, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 325);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 6), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(701, 355, 70, 860, 355, 70);
    line(860, 355, 70, 860, 470, 70);
    line(300, 355, 70, 648, 355, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 358);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 6), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(687, 380, 70, 800, 380, 70);
    line(800, 380, 70, 800, 495, 70);
    line(308, 380, 70, 665, 380, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 386);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 6), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(684, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(669, 405, 70, 241, 405, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 6), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(671, 430, 70, 208, 430, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 6), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(4, 6), 0, mA.getInt(4, 6), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(1, 6), 0, mA.getInt(4, 6), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(0, 6), 0, mA.getInt(4, 6), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(2, 6), 0, mA.getInt(4, 6), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(3, 6), 0, mA.getInt(4, 6), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(5, 6), 0, mA.getInt(4, 6), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }


  //AÑO 2008----------------------------------------------------------------------------------
  if (mouseY>=350 && mouseY<400) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(325, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 5), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(732, 330, 70, 920, 330, 70);
    line(920, 330, 70, 920, 445, 70);
    line(265, 330, 70, 618, 330, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 330);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 5), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(722, 355, 70, 860, 355, 70);
    line(860, 355, 70, 860, 470, 70);
    line(298, 355, 70, 629, 355, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 358);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 5), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(694, 378, 70, 800, 378, 70);
    line(800, 378, 70, 800, 495, 70);
    line(308, 378, 70, 655, 378, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 384);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 5), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(681, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(669, 405, 70, 240, 405, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 5), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(674, 430, 70, 215, 430, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 5), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(4, 5), 0, mA.getInt(4, 5), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(1, 5), 0, mA.getInt(4, 5), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(0, 5), 0, mA.getInt(4, 5), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(2, 5), 0, mA.getInt(4, 5), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(3, 5), 0, mA.getInt(4, 5), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(5, 5), 0, mA.getInt(4, 5), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }

  //AÑO 2007----------------------------------------------------------------------------------
  if (mouseY>=400 && mouseY<450) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(325, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 4), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(810, 320, 70, 920, 320, 70);
    line(920, 320, 70, 920, 445, 70);
    line(203, 310, 70, 540, 310, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 52, 310);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 4), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(792, 350, 70, 860, 350, 70);
    line(860, 350, 70, 860, 470, 70);
    line(270, 350, 70, 557, 350, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 353);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 4), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(704, 378, 70, 800, 378, 70);
    line(800, 378, 70, 800, 495, 70);
    line(297, 378, 70, 646, 378, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 384);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 4), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(693, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(659, 405, 70, 308, 405, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 4), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(665, 430, 70, 245, 430, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 4), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(4, 4), 0, mA.getInt(4, 4), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(5, 4), 0, mA.getInt(4, 4), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(1, 4), 0, mA.getInt(4, 4), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(0, 4), 0, mA.getInt(4, 4), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(2, 4), 0, mA.getInt(4, 4), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(3, 4), 0, mA.getInt(4, 4), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }

  //AÑO 2006----------------------------------------------------------------------------------
  if (mouseY>=450 && mouseY<500) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(202, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 3), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(810, 320, 70, 920, 320, 70);
    line(920, 320, 70, 920, 445, 70);
    line(329, 300, 70, 540, 300, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 52, 300);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 3), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(806, 350, 70, 860, 350, 70);
    line(860, 350, 70, 860, 470, 70);
    line(273, 350, 70, 543, 350, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 353);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 3), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(733, 375, 70, 800, 375, 70);
    line(800, 375, 70, 800, 495, 70);
    line(300, 378, 70, 617, 378, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 384);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 3), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(695, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(656, 405, 70, 243, 405, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 3), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(663, 430, 70, 312, 430, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 3), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(5, 3), 0, mA.getInt(5, 3), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(4, 3), 0, mA.getInt(5, 3), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(1, 3), 0, mA.getInt(5, 3), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(0, 3), 0, mA.getInt(5, 3), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(3, 3), 0, mA.getInt(5, 3), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(2, 3), 0, mA.getInt(5, 3), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }
  //AÑO 2005----------------------------------------------------------------------------------
  if (mouseY>=500 && mouseY<550) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(200, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 2), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(775, 325, 70, 920, 325, 70);
    line(920, 325, 70, 920, 445, 70);
    line(328, 325, 70, 575, 325, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 52, 325);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 2), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(726, 350, 70, 860, 350, 70);
    line(860, 350, 70, 860, 470, 70);
    line(268, 350, 70, 625, 350, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 353);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 2), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(693, 378, 70, 800, 378, 70);
    line(800, 378, 70, 800, 495, 70);
    line(300, 378, 70, 655, 378, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 384);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 2), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(683, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(667, 405, 70, 245, 405, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 2), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(671, 430, 70, 312, 430, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 2), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(5, 2), 0, mA.getInt(5, 2), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(4, 2), 0, mA.getInt(5, 2), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(1, 2), 0, mA.getInt(5, 2), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(0, 2), 0, mA.getInt(5, 2), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(3, 2), 0, mA.getInt(5, 2), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(2, 2), 0, mA.getInt(5, 2), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }

  //AÑO 2004----------------------------------------------------------------------------------
  if (mouseY>=550) {

    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //LÍNEAS, CÍRCULOS, VALORES Y ÁREAS..............................................

    //Línea c1
    stroke(c1);
    fill(c1);
    line(980, 270, 70, 980, 420, 70);
    line(200, 260, 70, 370, 260, 70);
    textFont(textAr);
    text(mA.getString(5, 0), 50, 252);
    ellipseMode(CENTER);
    noStroke();
    ellipse(1018, 458, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(5, 1), 1018-15, 458+5);

    //Línea c2
    stroke(c2);
    fill(c2);

    line(814, 310, 70, 920, 310, 70);
    line(920, 310, 70, 920, 445, 70);
    line(330, 310, 70, 540, 310, 70);
    textFont(textAr);
    text(mA.getString(4, 0), 52, 310);
    noStroke();
    ellipse(955, 485, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(4, 1), 955-15, 485+5);

    //Línea c3
    stroke(c3);
    fill(c3);
    line(770, 350, 70, 860, 350, 70);
    line(860, 350, 70, 860, 470, 70);
    line(270, 350, 70, 578, 350, 70);
    textFont(textAr);
    text(mA.getString(1, 0), 52, 353);
    noStroke();
    ellipse(885, 515, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(1, 1), 885-15, 515+5);

    //Línea c4
    stroke(c4);
    fill(c4);
    line(691, 378, 70, 800, 378, 70);
    line(800, 378, 70, 800, 495, 70);
    line(303, 378, 70, 657, 378, 70);
    textFont(textAr);
    text(mA.getString(0, 0), 52, 384);
    noStroke();
    ellipse(817, 544, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(0, 1), 817-15, 544+5);

    //Línea c5
    stroke(c5);
    fill(c5);
    line(691, 405, 70, 740, 405, 70);
    line(740, 405, 70, 740, 515, 70);
    line(653, 405, 70, 246, 405, 70);
    textFont(textAr);
    text(mA.getString(3, 0), 52, 417);
    noStroke();
    ellipse(748, 565, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(3, 1), 748-10, 565+5);

    //Línea c6
    stroke(c6);
    fill(c6);
    line(675, 435, 70, 675, 540, 70);
    line(665, 430, 70, 312, 430, 70);
    textFont(textAr);
    text(mA.getString(2, 0), 52, 445);
    noStroke();
    ellipse(675, 595, 60, 60);
    fill(255, 255, 255, 170);
    text(mA.getInt(2, 1), 675-10, 595+5);


    //UBICACIÓN DE LA CÁMARA........................................................
    camera(width/2, 600, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

    //CILINDROS.........................................................

    //Cilindro 1
    pushMatrix();
    ancho=map(mA.getInt(5, 1), 0, mA.getInt(5, 1), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*5, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c1);
    popMatrix();

    //Cilindro 2
    pushMatrix();
    ancho=map(mA.getInt(4, 1), 0, mA.getInt(5, 1), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*4, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c2);
    popMatrix();

    //Cilindro 3
    pushMatrix();
    ancho=map(mA.getInt(1, 1), 0, mA.getInt(5, 1), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*3, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c3);
    popMatrix();

    //Cilindro 4
    pushMatrix();
    ancho=map(mA.getInt(0, 1), 0, mA.getInt(5, 1), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*2, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c4);
    popMatrix();

    //Cilindro 5
    pushMatrix();
    ancho=map(mA.getInt(3, 1), 0, mA.getInt(5, 1), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*1, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c5);
    popMatrix();

    //Cilindro 6
    pushMatrix();
    ancho=map(mA.getInt(2, 1), 0, mA.getInt(5, 1), 0, 700);
    radio=ancho/2;
    translate(pxC, pyC - dVer*0, 0);
    rotateX(rotxC);
    drawCylinder(60, radio, alto, 0, 0, c6);
    popMatrix();
  }
  save("export.jpg");
}




void drawCylinder(int sides, float r, float h, float x1, float y1, color c)
{
  float angle = 360 / sides;
  float halfHeight = h / 2;
  noStroke();
  // dibuja círculo superior
  fill(c);
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r+x1;
    float y = sin( radians( i * angle ) ) * r+y1;
    vertex( x, y, -halfHeight );
  }
  endShape(CLOSE);

  // dibuja círculo inferior
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r+x1;
    float y = sin( radians( i * angle ) ) * r+y1;
    vertex( x, y, halfHeight );
  }
  endShape(CLOSE);

  // dibuja el cuerpo con triángulos
  noStroke();
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < sides + 1; i++) {
    float x = cos( radians( i * angle ) ) * r+x1;
    float y = sin( radians( i * angle ) ) * r+y1;
    vertex( x, y, halfHeight);
    vertex( x, y, -halfHeight);
  }
  endShape(CLOSE);
} 

void drawGradient(float x, float y) {
  int radius = dim;
  float h = 0;
  for (int r = radius; r > 0; --r) {
    fill(h);
    ellipse(x, y, r, r);
    h = (h + 0.1);
  }
}

