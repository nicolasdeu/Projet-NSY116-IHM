/***************************************************************************************
                            CREATION DE BLOC 4 x 4
***************************************************************************************/

void bloc4x4(int blocx, int blocy, int bloctype) {
for(int blocb = 0; blocb<4; blocb++) {
  for(int bloca = 0; bloca<4; bloca++) {
  grille[blocx+bloca][blocy+blocb]=bloctype;
  }
}
}