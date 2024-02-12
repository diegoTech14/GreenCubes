class Fonts {

  private PFont cursive;
  private PFont headline;
  private PFont body;
  private PFont ma;
  private PFont pn;
  private PFont headline2;

  public Fonts() {
    this.cursive = loadFont("InkFree-24.vlw");
    this.headline = loadFont("Inter-Black-64.vlw");
    this.body = loadFont("Inter-Regular-24.vlw");
    this.ma = loadFont("Inter-Medium-32.vlw");
    this.pn = loadFont("Inter-Light-16.vlw");
    this.headline2 = loadFont("Inter-Black-140.vlw");
  }

  public void setFonts(String text, int x, int y, int xLimit, int yLimit, int fontNumber, int fontSize) {
    pushStyle();
    switch(fontNumber) {
    case 0:
      pushStyle();
      fill(255);
      textFont(this.cursive);
      break;
    case 1:
      fill(255);
      textFont(this.headline);
      break;
    case 2:
      fill(255);
      textFont(this.body);
      textLeading(48);
      break;
    case 3:
      fill(255);
      textFont(this.ma);
      break;
    case 4:
      fill(255);
      textFont(this.pn);
      break;
    case 5:
      textFont(this.headline2);
      fill(219, 29, 29);
      break;
    }
    textSize(fontSize);
    text(text, x, y, xLimit, yLimit);
    popStyle();
  }
}
