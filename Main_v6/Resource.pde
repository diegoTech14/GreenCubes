class Resource {
//Es la que contiene el arrgeglo y estructura para los objetos
  private PImage[] photos = new PImage[2];

  private Positions positions = new Positions();
  //Arreglo de objetos
  private NaturalResource[] resources = new NaturalResource[6];

  private String[] resourceNames = {"r1.png", "r2.png", "r4.png", "r6.png", "r3.png", "r5.png"};
  private String[] backgrounds = {"fondo.jpg", "fondo2.jpg", "fondo3.jpg", "fondo4.jpg", "fondo5.jpg"};

  Resource() {
    for (int i = 0; i < this.resources.length; i++) {
      this.resources[i] = new NaturalResource(
        positions.getXPositions()[i],
        positions.getYPositions()[i],
        this.resourceNames[i],
        i
        );
    }
  }

  public void setPhotos(String[] photos) {
    for (int i = 0; i < photos.length; i++) {
      this.photos[i] = loadImage(photos[i]);
    }
  }
  
  public PImage[] getPhotos() {
    return this.photos;
  }

  public String[] getBackgrounds() {
    return this.backgrounds;
  }

  public NaturalResource[] getResources() {
    return this.resources;
  }
}
