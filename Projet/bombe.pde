/**************************************************************************************
                          BOMBES (placement et gestion)
**************************************************************************************/

void bombe(int xxb, int yyb) {
  
////////////////////////// X
  if(xxb%4<2 && yyb%4==0) {
  xbb = xxb-xxb%4;
  ybb = yyb-yyb%4; 
  bloc4x4(xbb, ybb, 1);
  }

  if(xxb%4>1 && yyb%4==0) {
  xbb = xxb+4-xxb%4;
  ybb = yyb-yyb%4; 
  bloc4x4(xbb, ybb, 1);
  }
/////////////////////////// Y
  if(yyb%4<2 && xxb%4==0) {
  xbb = xxb-xxb%4;
  ybb = yyb-yyb%4; 
  bloc4x4(xbb, ybb, 1);
  }

  if(yyb%4>1 && xxb%4==0) {
  xbb = xxb-xxb%4;
  ybb = yyb+4-yyb%4; 
  bloc4x4(xbb, ybb, 1);
  }




  
}