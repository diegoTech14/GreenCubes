import java.util.HashMap; // import the HashMap class
class Positions {
  public int[][] mainPositions = new int[2][2];
  private int[] xPosition = {497, 653, 1068, 1366, 1039, 1247};
  private int[] yPosition = {741, 376, 68, 384, 460, 805};
  private int[] titlePositions = {118, 331};
  private int[] descriptionPositions = {118, 424};
  private int[] modelPositions = {1350, 571};


  Positions() {
    this.mainPositions[0][0] = 100;
    this.mainPositions[0][1] = 100;
    this.mainPositions[1][0] = 150;
    this.mainPositions[1][1] = 150;
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
