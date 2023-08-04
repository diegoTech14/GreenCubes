class Resource extends Dictionary {

  PImage Photo;
  private PImage[] photos = new PImage[2];

  private float x;
  private float y;
  private int opacity = 255;
  private boolean selected = false;
  private int indexValue = 0;
  private int backgroundCounter = 0;

  float value = 200;
  Resource[] resources = new Resource[6];
  private Positions positions = new Positions();
  private String[] resourceNames = {"R1.png", "R6.png", "R3.png", "R5.png", "R4.png", "R2.png"};
  private String[] backgrounds = {"fondo.jpg", "fondo2.jpg", "fondo3.jpg", "fondo4.jpg", "fondo5.jpg"};

  Resource() {
  }

  // This is the constructor
  Resource( float PosX, float PosY, String PhotoName) {
    this.x = PosX;
    this.y = PosY;
    Photo = loadImage(PhotoName);
  }

  public void setPhotos(String[] photos) {
    for (int i = 0; i < photos.length; i++) {
      this.photos[i] = loadImage(photos[i]);
    }
  }

  public String getPositions() {
    return " X: "+this.x + " - Y:" + this.y;
  }

  public PImage[] getPhotos() {
    return this.photos;
  }

  public String[] getResourceNames() {
    return this.resourceNames;
  }

  public String[] getBackgrounds() {
    return this.backgrounds;
  }

  public void setSelection(boolean value) {
    this.selected = value;
  }

  public boolean getSelection() {
    return this.selected;
  }

  public int getSelectionValue() {
    return this.indexValue;
  }

  public void setBackgroundCounter() {
    this.backgroundCounter++;
  }

  public void movePointer(int position, Resource[] resources) {


    this.indexValue = position;
    if (indexValue > 0) {
      resources[indexValue-1].setSelection(false);
    }
    resources[this.indexValue].setSelection(true);
    //println("YESSS:::", this.indexValue);
  }



  private void setImage(String imageName) {
    PImage photo = loadImage(imageName);
    imageMode(CENTER);
    tint(255, opacity); //This apply transparency
    image(photo, positions.getModelPositions()[0], positions.getModelPositions()[1], 350, 350);
  }
  
  private void drawModel(PShape object) {
    float theta = 0.0;
    
    pushMatrix();
    translate (width/2, height/2); // Put in the center of the scene
    //rotate(theta);
    //rotateY(theta/2);
    scale (500);
    shape(object);
    popMatrix();

    theta+=.01; // increment angle while sketch on
    //working
  }
  public void model3d(String textureName, String resourceName) {
    PShape object;
    PImage texture;
    

    texture = loadImage(textureName);
    object = loadShape(resourceName);
    object.setTexture(texture);
    
    this.drawModel(object);
  }

  //print info
  public String toString(int position, Resource[] resources) {

    String imageName = resourcesInfo.get("info")[position][2];
    String texture = resourcesInfo.get("info")[position][3];

    String title = resourcesInfo.get("info")[position][0];
    String description = resourcesInfo.get("info")[position][1];

    textSize(20);
    text(title, positions.getTitlePositions()[0], positions.getTitlePositions()[1]);
    text(description, positions.getDescriptionPositions()[0], positions.getDescriptionPositions()[1], 600, 350);
    this.model3d(texture, imageName);

    return resources[position].getPositions();
  }

  public void setResources(Resource[] resources) {
    for (int i = 0; i<resources.length; i++) {
      this.resources[i] = resources[i];
    }
  }

  public Resource[] getResources() {
    return this.resources;
  }

  public void circleSelection(int index) {

    int r = 150;
    int z = 250;
    int xPosition = positions.getXPositions()[index];
    int yPosition = positions.getYPositions()[index];

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
    circle(xPosition, yPosition, r);//circle


    popMatrix();
  }

  void display() {
    pushMatrix();
    imageMode(CENTER);
    tint(255, opacity); //This apply transparency
    image(Photo, x, y, 150, 150);
    popMatrix();
  }

  // This function change the transparency.
  void status(boolean value) {

    if (value == true) { // 1
      this.opacity = 255;
    }

    if (value == false) { // 4
      this.opacity = 0;
    }
  }
}
