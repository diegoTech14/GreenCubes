class Selector {
  private Positions positions;
  private int backgroundCounter = 0;
  private int xPosition = 0;
  private int yPosition = 0;
  public Selector() {
    positions = new Positions();
  }
  /*recibe el indice del arreglo actual (si se toca "w" aumenta 1 y "s" disminuye 1) 
    recibe un arreglo de banderas para saber que cubo ha sido quitado
    recibe el valueScreen que es un valor que indica si está en la pantalla del mapa o en otra, al no estar en el mapa
    no podrá mover nada
  */
  public void drawSelector(NaturalResource naturalObject, boolean[]flags, int valueScreen) {
    //posición inicial del cursor
    
    if (!(flags[0] && flags[1] && flags[2]) && valueScreen == 0) {
      int r = 150;
      int z = 250;
      
      if(naturalObject != null){
        if(naturalObject.getStatus()){
          xPosition = (int) naturalObject.getX();
          yPosition = (int) naturalObject.getY();
        }
      }
      pushMatrix();
      noFill();
      if (this.backgroundCounter == 3) {
        noStroke();
        this.backgroundCounter = 0;
      } else {
        strokeWeight(3);
        stroke(255, z);
      }

      ellipseMode(CENTER);
      circle(xPosition, yPosition, r);
      popMatrix();
    }
  }
}
