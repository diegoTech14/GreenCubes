class MainScreen {
  private Resource resource = new Resource();
  private Sound sounds;
  private Selector selector;
  private NaturalResource[] resources;
  private Language language = new Language();
  private Positions positions = new Positions();
  
  private int x = 0;
  private int changeScreenValue;
  private int backgroundsLength;
  private int indexSelector = 0;
  private int auxiliarIndexSelector;
  private boolean flagCube;
  private String[] photosBackground = new String[2];
  private boolean traductionValue = true;
  private boolean[] flags = new boolean[3];
  private int finalSound = 0;
  
  public MainScreen(PApplet parent) {
    this.resources = resource.getResources();
    this.sounds = new Sound(parent);
    this.backgroundsLength = this.resource.getBackgrounds().length-1;

    this.backgrounds();
    this.selector = new Selector();
  }

  private void mainText() {
    this.language.mainText(this.traductionValue);
  }

  public void backgrounds() {
    this.photosBackground[0] = this.resource.getBackgrounds()[this.getXValue()];
    this.photosBackground[1] = this.resource.getBackgrounds()[4];
    this.resource.setPhotos(this.photosBackground);
  }

  public int getXValue() {
    return this.x;
  }

  public int getIndexSelector() {
    return this.indexSelector;
  }

  public void main() {


    if (this.finalSound >= 3) {
      this.sounds.playFireSound();
    } else {
      this.sounds.playNatureSound();
    }
    if (this.changeScreenValue == 1) {
      this.indexSelector = this.getIndexSelector();
      background(resource.getPhotos()[1]);
      this.language.infoText(this.traductionValue, this.indexSelector);
      //resources[this.indexSelector].drawModel();
    } else {
      background(this.resource.getPhotos()[0]);
      if (this.getXValue() != 3) {
        this.mainText();
      } else {
        this.language.messageDestruction(this.traductionValue);
      }
      for (int i = 0; i< this.resource.getResources().length; i++) {
        this.resources[i].display();
      }
    }
  }


  public void testModel3D() {
    /*for(int i = 0; i < resources.length; i++){
     this.resources[i].model3d();
     }
    */
    this.resources[0].model3d();
  }

  public void callSelector() {
    selector.drawSelector(this.indexSelector, this.flags, this.changeScreenValue);
  }

  public void screenConditions(boolean statusOne, boolean statusTwo, int flagCounter, int flagItems) {

    if (flagItems == 0) {
      this.resources[1].status(statusOne);
      this.resources[3].status(statusTwo);
    } else if (flagItems == 1) {

      this.resources[2].status(statusOne);
      this.resources[5].status(statusTwo);
    } else if (flagItems == 2) {

      this.resources[0].status(statusOne);
      this.resources[4].status(statusTwo);
    }
     
    if (flagCounter == 0 && this.x > 0) {
      this.x--;
      this.sounds.playGoodSound();
    } else {
      if (this.x < this.backgroundsLength && this.x < 3) {
        this.x++;
      }
      this.sounds.playBadSound();
    }
    this.backgrounds();
  }

  public void movePointerFordward() {
      if (!(this.indexSelector > this.resources.length)){
        int total = this.resources.length;
        if (this.indexSelector % 2 == 0) { //if the indexSelector has a par value
  
          if(this.indexSelector != 4 && (flags[0] && !flags[1] && !flags[2]) || (flags[0] && flags[1])){ 
            this.indexSelector += 2;
            
          }else if((!flags[0] && !flags[1] && flags[2]) || (!flags[0] && flags[1] && flags[2])){
            this.indexSelector += 1; 
             
          }else if(flags[0] && !flags[1] && flags[2]){
            this.indexSelector += 3; 
          }
          
           //variety with abnormal cursor positions
          if((this.indexSelector == 4 && flags[0] && !flags[1] && !flags[2]) || 
          (this.indexSelector == 2 && !flags[0] && flags[1] && !flags[2])){
            this.indexSelector += 1;
          }
        
        
      }else{
           if((flags[0] && !flags[1] && !flags[2]) || ((total - 2) == this.indexSelector)){
            this.indexSelector += 1;  
          } 
          if(this.indexSelector == 5 && !flags[0] && flags[1] && !flags[2]){
            this.indexSelector -= 1;  
        }
      }
    this.auxiliarIndexSelector = this.indexSelector;
  }}

  public void movePointerBack() {
    if (!(this.indexSelector < 0)){
    
      if(
      (flags[0] && flags[1] && !flags[2]) || 
      (flags[0] && !flags[1] && !flags[2]) || 
      (flags[0] && !flags[1] && flags[2])||
      (flags[0] && flags[1] && flags[2])){
        this.indexSelector -=2;
      }

   if((!flags[0] && !flags[1] && flags[2]) || (flags[0] && !flags[1] && flags[2])){
     this.indexSelector -=1;
   }
  
    println(this.indexSelector + "aaaaaaaaaa");
    this.auxiliarIndexSelector = this.indexSelector;
  }}




  public void actions(int keyValue) {
    switch (keyValue) {
    case 1:
      if (this.changeScreenValue == 0 && flags[0]) {
        this.movePointerBack();
        this.flags[0] = false;
        
        this.screenConditions(true, true, 0, 0);
        this.finalSound--;
      }
      break;

    case 2:
    if (this.changeScreenValue == 0 && flags[1]){ 
      this.movePointerBack();
      this.flags[1] = false;
      this.screenConditions(true, true, 0, 1);
      this.finalSound--;
    }
      break;
      
    case 3:
    if (this.changeScreenValue == 0 && flags[2]){
      this.flagCube = false;
      this.movePointerBack();
      this.flags[2] = false;
      this.screenConditions(true, true, 0, 2);
      this.finalSound--;
    }
      break;
    case 4:
      if (this.changeScreenValue == 0 && !flags[0]) {
        this.screenConditions(false, false, 1, 0);
        this.flags[0] = true;
        this.movePointerFordward();
        
        this.finalSound++;
      }
      break;
    case 5:
      if (this.changeScreenValue == 0 && !flags[1]) {
        this.screenConditions(false, false, 1, 1);
         this.flags[1] = true;
        this.movePointerFordward();

        this.finalSound++;
      }
      break;
    case 6:

      if (this.changeScreenValue == 0 && !flags[2]) {
        //this.flagCube = true;
        this.screenConditions(false, false, 1, 2);
        this.flags[2] = true;
        this.movePointerFordward();
        
        this.finalSound++;
      }
      break;
    case 8:
      if (!this.traductionValue) {
        this.traductionValue = true;
      } else {
        this.traductionValue = false;
      }
      break;
      //joystick
    case 0:
      if (this.indexSelector < resources.length-1 && this.changeScreenValue == 0) {
        this.indexSelector++;
      }
      break;
      //joystick
    case 9:
      if (this.indexSelector > 0 && this.changeScreenValue == 0 && this.auxiliarIndexSelector < this.indexSelector) {
        this.indexSelector--;
      }
      break;
    case 7:
      if (this.changeScreenValue == 0) {
        this.changeScreenValue = 1;
      } else {
        this.changeScreenValue = 0;
      }
    }
  }
}
