



void bandeauScore() {
  fill(#000000);
  rect(int(0.02*taillefenetrex)+pas, 10+pas, bandeauscorelx, bandeauscorely);
  textSize(16);
  fill(#FFFFFF);
  text("Vie : "+viejoueur, int(0.10*taillefenetrex)+pas, 30+pas);
  image(b0, int(0.10*taillefenetrex)-4*pas, 30-3*pas, 3*pas, 3*pas);
  
}