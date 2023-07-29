class Resource {

  PImage Photo;
  private PImage[] photos = new PImage[2];

  private float x;
  private float y;
  private int opacity = 255;
  private boolean selected = false;
  private int indexValue = -1;

  Resource[] resources = new Resource[6];

  private String[] resourceNames = {"r1.png", "r6.png", "r3.png", "r5.png", "r4.png", "r2.png"};
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

  public void movePointer(int position, Resource[] resources) {
    this.indexValue = position;
    if (indexValue > 0) {
      resources[indexValue-1].setSelection(false);
    }
    resources[this.indexValue].setSelection(true);
    println(this.indexValue);
  }


  public String toString(int position, Resource[] resources) {
    for (int i = 0; i < resources.length; i++) {
      println(resources[i].getSelection());
    }
    println("\n");
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

  void display() {

    imageMode(CENTER);
    tint(255, opacity); //This apply transparency
    image(Photo, x, y, 150, 150);
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
