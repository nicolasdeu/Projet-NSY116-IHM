/***************************************************************************************
                            INITIALISATION DE LA GRILLE DE JEU
***************************************************************************************/

void  initGrille() {
 
  if(s==0) {  
  
  // Initialisation du tableau avec la couche "passage accessible"
    for(y = 0; y<108; y++) {
      for(x = 0; x<116; x++) {
      grille[x][y] = 0;  
      }
  }
  s=1;
  }
  
  // Surcouche d'autres zones non accessibles
  
  if(s==1) {
  // Initialisation du tableau avec la couche "contour TOP"
  for(y = 0; y<4; y++) {
    for(x = 0; x<116; x++) {
    grille[x][y] = 9;  
    }
  } 
  s=2;
  }

  if(s==2) {
  // Initialisation du tableau avec la couche "contour BOTTOM"
  for(y = 108-4; y<108; y++) {
    for(x = 0; x<116; x++) {
    grille[x][y] = 9;  
    }
  } 
  s=3;
  }

  if(s==3) {
  // Initialisation du tableau avec la couche "contour LEFT"
  for(y = 0; y<108; y++) {
    for(x = 0; x<4; x++) {
    grille[x][y] = 9;  
    }
  } 
  s=4;
  }

  if(s==4) {
  // Initialisation du tableau avec la couche "contour RIGHT"
  for(y = 0; y<108; y++) {
    for(x = 116-4; x<116; x++) {
    grille[x][y] = 9;  
    }
  } 
  s=5; 
  }

  if(s==5) {
  // Initialisation du tableau avec les blocs indestructibles
  for(y = 0; y<108; y++) {
    for(x = 0; x<116; x++) {
      if((x+8)%8==0 && (y+8)%8==0 && grille[x][y]<9) {
      for(int a = 0; a<4; a++) {
        for(int b = 0; b<4; b++) {
        grille[x+a][y+b] = 8;
        }
      }
      }
    } 
    }
  s=5;
  }
  
  if(s==6) { // *******************************************************************************************************
  // Initialisation du tableau avec les blocs destructibles = 7
  for(y = 0; y<108-4; y++) { // Balayage du plateau
    for(x = 0; x<116-4; x++) {
    if(x%4==0 && y%4==0 && grille[x][y]<8) { // Vérifie si la case est déjà paramétré
    if(int(random(rdmmax))<rdmdensity){
    bloc4x4(x,y,7);
  }
      }
    }
    }
  
  s=7;
  }  
  
  
  
    if(s==7) { // *******************************************************************************************************
  // Initialisation du tableau avec les blocs  = x (valeur intermédiaire)
  for(y = 0; y<108-4; y++) { // Balayage du plateau
    for(x = 0; x<116-4; x++) {
    if(x%4==0 && y%4==0 && grille[x][y]<7) { // Vérifie si la case est déjà paramétré
    
      }
    }
  } 
  s=8;
  }  
   
  if(s==8) { // Initialise les coordonnées près de bomberman pour le laisser évoluer pour poser sa première bombe
    for(y = 4; y<12; y++) {
      for(x=4; x<12; x++) {
       if(grille[x][y]<8) {
       grille[x][y]=0;
     }   
      }
    }
      s=9;
  }  
  
}
  
  
/* ===========================================
FIN DE L'INITIALISATION DE LA GRILLE DE JEU  
============================================*/