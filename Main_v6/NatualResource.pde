
class NaturalResource {

  private float x;
  private float y;
  private PImage Photo;
  private int opacity = 255;
  private boolean selected = false;
  private float theta;
  private int index;
  private boolean status;
  private PShape object;

  NaturalResource(float PosX, float PosY, String PhotoName, int index) {
    this.x = PosX;
    this.y = PosY;
    this.Photo = loadImage(PhotoName);
    this.index = index;
    this.status = true;
  }
  
  public int getIndex(){
      return this.index;
  }
  
  public PImage getPhoto(){
      return Photo; 
  }

  public void setSelection(boolean value) {
    this.selected = value;
  }
  
  public void setStatus(boolean status){
     this.status = status;
  }
  
  public boolean getStatus(){
     return this.status; 
  }
 
  
  public boolean getSelection() {
    return this.selected;
  }
  
  public float getX(){
    return this.x;
  }
  
  public float getY(){
    return this.y;
  }

  public void drawModel() {

    this.theta+=.01; // increment angle while sketch on
    //working
    pushMatrix();
    translate (1300, 700); // Put in the center of the scenes
    rotateX(PI);
    rotateY(this.theta);
    scale(1000);
    shape(this.object);
    popMatrix();
  }

  public void model3d() {
    PImage texture;

    texture = loadImage("conTexture.jpg");
    this.object = loadShape("Concha.obj");
    this.object.setTexture(texture); //attach texture to the 3D shape
  }

  void display() {
    imageMode(CENTER);
    tint(255, opacity);
    image(Photo, this.x, this.y, 150, 150);
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
