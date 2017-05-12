 /***************************************************************************************
                            PIED DE GRILLE HOWTO
***************************************************************************************/

void piedDeGrilleHowTo () {

    fill(0,0,0,125);
    rect(0,height-150,width,height);
    image(ZQSD,20,height-100,50*3,32*3);
    textSize(32);
    fill(#EE0000);
    text("HOWTO !",300,height-150+40);
    fill(#FFFFFF);
    text("Z Q S D pour vous déplacer",200,height-150+80);
    textSize(22);
    text("M pour poser une bombe",200,height-150+110);
    text("R pour réinitialiser le plateau / X pour quitter",200,height-150+140);

    
}