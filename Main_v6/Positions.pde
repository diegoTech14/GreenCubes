
class Positions {
  public int[] mainPositions = {114, 421};
  //son las posiciones de los objetos de manera ordenada
  private int[] xPosition = {497, 653, 1068, 1366, 1039, 1247};
  private int[] yPosition = {741, 376, 68, 384, 460, 805};
  //posiciones de texto e imagenes
  private int[] titlePositions = {118, 331};
  private int[] descriptionPositions = {118, 424};
  private int[] modelPositions = {1350, 571};
  private int[] instructionPositions = {629, 121};
  private int[] photoTextPositions = {1575, 1000};
  private int[] destructionPositions = {110, 354, 116, 525};


  Positions() {
  }
  
  public int[] getPositionsX(){
    return this.xPosition; 
  }
  
  public int[] getPositionsY(){
    return this.yPosition; 
  }
  
  public int[] getDestructionPositions() {
    return this.destructionPositions; 
  }

  public int[] getMainPositions() {
    return this.mainPositions;
  }

  public int[] getPhotoTextPositions() {
    return this.photoTextPositions;
  }


  public int[] getInstructionsPositions() {
    return this.instructionPositions;
  }

  public int[] getModelPositions() {
    return this.modelPositions;
  }

  public int[] getXPositions() {
    return this.xPosition;
  }

  public int[] getYPositions() {
    return this.yPosition;
  }

  public int[] getTitlePositions() {
    return this.titlePositions;
  }

  public int[] getDescriptionPositions() {
    return this.descriptionPositions;
  }
}
