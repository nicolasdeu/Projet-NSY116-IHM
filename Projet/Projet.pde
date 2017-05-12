/*************************************************************************************************
                 VARIABLES (déclarations et initialisations partielles)
*************************************************************************************************/


// Déclaration des variables utilisées pour la grille de jeu et les déplacements
int[][] grille = new int[116][108];

// Définie l'emplacement selon 
int[][] soclebomber = new int[4][4];

int s = 0; // Initialisation du scénario pour le grille-builder

int x; // Init des variables pour la grille
int y;
int xb = 4; // Position de départ du Bomberman par rapport à la grille
int yb = 4;

int taillefenetrex= 900; // DECLARER LA TAILLE DE LA FENETRE POUR LES ELEMENTS "RESIZABLE"
int taillefenetrey = 970;
int pas = 6;

int bandeauscorelx = int(0.96*taillefenetrex);
int bandeauscorely = int(0.07*taillefenetrey);


int coorddebutgrillex = taillefenetrex/2-116*pas/2;
int coorddebutgrilley = bandeauscorely+30;

int viejoueur = 3;
float rdmmax = 100; // Donne une valeur aléatoire entre 0 et rdmmax
int rdmdensity = 60; // Permet de donner une densité à la pose de briques cassables
int xbb ; // Coordonnées de bombe
int ybb ;


// Déclaration des images
PImage imgcontour;
PImage imgindest;
PImage imgdest;
PImage bonhomme;
PImage b0;
PImage b1;
PImage bc;
PImage h0;
PImage h1;
PImage g0;
PImage g1;
PImage d0;
PImage d1;

PImage ZQSD;



/*************************************************************************************************
                                          SETUP
*************************************************************************************************/


void setup() {
// Initialisation de la fenêtre
size(900,970);  


// Initialisation de la grille
initGrille();

// Déclaration des images avec leur nom
imgcontour = loadImage("imgcontour.png");
imgindest = loadImage("imgindest.jpg");
imgdest = loadImage("imgdest.jpg");
ZQSD = loadImage("ZQSD.png");

// bonhomme = loadImage("bomberman_32.png"); utilisé avant le changement pour le personnage animé

// Images de bomberman pour l'animation des déplacements sur la grille
bc = loadImage("b0.png"); // bc est l'image courante qui sera mise à jour et initialisé avec b0
b0 = loadImage("b0.png"); // b0 et b1 pour mouvement "bas"
b1 = loadImage("b1.png");
h0 = loadImage("h0.png"); // h0 et h1 pour mouvement "haut"
h1 = loadImage("h1.png");
g0 = loadImage("g0.png"); // g0 et g1 pour mouvement "gauche"
g1 = loadImage("g1.png");
d0 = loadImage("d0.png"); // d0 et d1 pour mouvement "droite"
d1 = loadImage("d1.png");

}



/*************************************************************************************************
                                          DRAW
*************************************************************************************************/

void draw() {
  background(#2C8B8E);
  textSize(32);
  bandeauScore();
//soclebomber[xb][yb];
  textSize(7);
  fill(#FF0000);
for(y = 0; y<108; y++) {
  for(x = 0; x<116; x++) {
  texturisation();
  // text(grille[x][y],coorddebutgrillex+x*pas,coorddebutgrilley+y*pas); 
  }
}  
    
    image(bc, coorddebutgrillex+xb*pas, coorddebutgrilley+yb*pas, 4*pas, 4*pas);

piedDeGrilleHowTo ();

    fill(#FF0000);
    text("XB = "+xb+" & YB = "+yb+" XBB = "+xbb+" & YBB = "+ybb, 200, 20); 
}


/**************************************************************************************************
                                        FIN DRAW 
**************************************************************************************************/