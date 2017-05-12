/***************************************************************************************
                            ACTION CLAVIER
***************************************************************************************/

void keyPressed() {
    if(key == 'd' || key == 'D') {       // MOUVEMENT "DROITE" avec 'D'
    if(grille[xb+4][yb]==0 && (yb)%4==0) {
    xb = xb + 1;  
    }
    if(grille[xb+4][yb]>0 && (yb)%4==3 && grille[xb+4][yb+1]==0) {
    xb = xb + 1;
    yb = yb + 1;
    }
    if(grille[xb+4][yb]==0 && (yb)%4==1 && grille[xb+4][yb-1]==0) {
    xb = xb + 1; 
    yb = yb - 1;
    }
    if(bc==d0) {bc=d1;} else {bc=d0;};
  } else if (key == 'q' || key == 'Q') { // MOUVEMENT "GAUCHE" avec 'Q'
    if(grille[xb-1][yb]==0 && (yb)%4==0) {
    xb = xb - 1;  
    }
    if(grille[xb-1][yb]>0 && (yb)%4==3 && grille[xb-1][yb+1]==0) {
    xb = xb - 1;
    yb = yb + 1;
    }
    if(grille[xb-1][yb]==0 && (yb)%4==1 && grille[xb-1][yb-1]==0) {
    xb = xb - 1; 
    yb = yb - 1;
    }
    if(bc==g0) {bc=g1;} else {bc=g0;};
    } else if (key == 'z' || key == 'Z') { // MOUVEMENT "HAUT" avec 'Z'
    if(grille[xb][yb-1]==0 && (xb)%4==0) {
    yb = yb - 1;  
    }
    if(grille[xb][yb-1]>0 && (xb)%4==3 && grille[xb+1][yb-1]==0) {
    xb = xb + 1;
    yb = yb - 1;
    }
    if(grille[xb][yb-1]==0 && (xb)%4==1 && grille[xb-1][yb-1]==0) {
    xb = xb - 1; 
    yb = yb - 1;
    }
    if(bc==h0) {bc=h1;} else {bc=h0;};
    } else if (key == 's' || key == 'S') { // MOUVEMENT "BAS" avec 'S'
    if(grille[xb][yb+4]==0 && (xb)%4==0) {
    yb = yb + 1; 
    }
    if(grille[xb][yb+4]>0 && (xb)%4==3 && grille[xb+1][yb+4]==0) {
    xb = xb + 1; 
    yb = yb + 1; 
    }
    if(grille[xb][yb+4]==0 && (xb)%4==1 && grille[xb-1][yb+4]==0) {
    xb = xb - 1; 
    yb = yb + 1; 
    }
   if(bc==b0) {bc = b1;} else {bc = b0;}
   } else if (key == 'w' || key == 'W') {
   viejoueur = viejoueur +1;  
   } else if (key == 'r' || key == 'R') { // Relance la génération du niveau
   xb = yb = 4;
   s=0;
   initGrille();
   } else if(key == 'x' || key == 'X') {
    exit(); 
   } else if(key == 'm' || key == 'M') {
    bombe(xb,yb); 
   }
}