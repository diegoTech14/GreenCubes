import java.util.HashMap; // import the HashMap class
class Positions{
  public int[][] mainPositions = new int[2][2];
  private int[] xPosition = {644, 1528, 1112, 930, 1255, 549};
  private int[] yPosition = {540, 494, 535, 280, 892, 832};
  
  Positions(){
    this.mainPositions[0][0] = 100;
    this.mainPositions[0][1] = 100;
    this.mainPositions[1][0] = 150;
    this.mainPositions[1][1] = 150;
  }
  
  public int[] getXPositions(){
    return this.xPosition;
  }
  
  public int[] getYPositions(){
    return this.yPosition;
  }
}
