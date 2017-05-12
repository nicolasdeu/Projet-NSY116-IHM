/***************************************************************************************
                            TEXTURISATION
***************************************************************************************/

void texturisation() {
  
if(grille[x][y]==9 && x%4==0 && y%4==0) {                  // Texture "Contour"
image(imgcontour,coorddebutgrillex+x*pas, coorddebutgrilley+y*pas, 4*pas, 4*pas);

} else if(grille[x][y]==8 && x%4==0 && y%4==0) {           // Texture indestructible
image(imgindest,coorddebutgrillex+x*pas, coorddebutgrilley+y*pas, 4*pas, 4*pas);

} else if(grille[x][y]==7 && x%4==0 && y%4==0) {           // Texture destructible
  image(imgdest,coorddebutgrillex+x*pas, coorddebutgrilley+y*pas, 4*pas, 4*pas);

} else if(grille[x][y]==1 && x%4==0 && y%4==0) {           // Texture destructible
fill(#F0F0F0);
noStroke();
rect(coorddebutgrillex+x*pas, coorddebutgrilley+y*pas, 4*pas, 4*pas);

} else if(grille[x][y]==0 && x%4==0 && y%4==0) {           // Texture passage libre
    
fill(#19A251);
//fill(#00FF00);
noStroke();
rect(coorddebutgrillex+x*pas, coorddebutgrilley+y*pas, 4*pas, 4*pas);
}

}