class Selector {
  private Positions positions;
  private int backgroundCounter = 0;
  
  public Selector() {
    positions = new Positions();
  }
  
  public void drawSelector(int index, boolean[]flags, int valueScreen) {
    
    
    if (!(flags[0] && flags[1] && flags[2]) && valueScreen == 0) {
      int r = 150;
      int z = 250;
      int xPosition = this.positions.getXPositions()[index];
      int yPosition = this.positions.getYPositions()[index];

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
