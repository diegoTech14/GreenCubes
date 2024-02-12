class MainScreen {
  private Resource resource = new Resource();
  private Sound sounds;
  private Selector selector;
  private Language language = new Language();
  private Positions positions = new Positions();
  private boolean flagCube;
  private int x = 0;
  private int changeScreenValue;
  private int backgroundsLength;
  private int indexSelector = 0;
  private int auxiliarIndexSelector;
  private String[] photosBackground = new String[2];
  private boolean traductionValue = true;
  private boolean[] flags = new boolean[3];
  private int finalSound = 0;

  private MapResource map = new MapResource();
  private int[] arrayPositions = new int[6];
  private int[] auxArray = new int[6];
  
  public MainScreen(PApplet parent) {
    this.sounds = new Sound(parent);
    this.backgroundsLength = this.resource.getBackgrounds().length-1;
    this.backgrounds();
    this.selector = new Selector();
    
    //ciclo que recorre todos los recursos que existen
    for(int i = 0; i < this.resource.resources.length; i++){
       this.arrayPositions[i] = i;
       this.auxArray[i] = -1;

       this.map.setResources(this.resource.resources[i]);
    }
    
    //this.map.getArray();
    /*for(int i = 0; i < this.resource.resources.length-1; i++){
      this.graph.addEdge(this.resource.resources[i],this.resource.resources[i+1]);
    }*/

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


    //Sonido inicial
    if (this.finalSound >= 3) {
      this.sounds.playFireSound();
    } else {
      this.sounds.playNatureSound();
    }
    
    //Si el changeScreenValue = 1 entonces estaría en la pantalla de información
    if (this.changeScreenValue == 1) {
      this.indexSelector = this.getIndexSelector();
      background(resource.getPhotos()[1]);
      this.language.infoText(this.traductionValue, this.indexSelector);
      this.resource.resources[this.indexSelector].drawModel();
    } else {
      
      //En la pantalla del mapa
      background(this.resource.getPhotos()[0]);
      if (this.getXValue() != 3) {
        this.mainText();
      } else {
        this.language.messageDestruction(this.traductionValue);
      }
      for (int i = 0; i< this.resource.getResources().length; i++) {
        this.resource.resources[i].display();
      }
    }
  }


  public void testModel3D() {
    /*for(int i = 0; i < resources.length; i++){
     this.resources[i].model3d();
     }
    */
    this.resource.resources[0].model3d();
  }

  public void callSelector() {
    if(this.map.getSize() > 0){
      selector.drawSelector(this.map.getResource(this.indexSelector), this.flags, this.changeScreenValue);
    }
  }

  public void screenConditions(boolean statusOne, boolean statusTwo, int flagCounter, int flagItems) {

    
    if (flagItems == 0) {

        if(flags[1]){         
          //If the cube 2 has been removed
            if(this.map.getSize() == 4){
              print("hee");
              this.map.deleteElement(1);
              this.map.deleteElement(1);
            }
              if(this.map.getSize()== 2){
               this.map.deleteElement(0);
               this.map.deleteElement(0);
             }
          }else if(flags[2]){
             if(this.map.getSize() == 4){
              this.map.deleteElement(0);
              this.map.deleteElement(2);
             }

          }else{
        if(this.map.getSize() == 2){
            this.map.deleteElement(0);
            this.map.deleteElement(0);
          }else{          
            this.map.deleteElement(1);
            this.map.deleteElement(2);
            }
          }
        this.resource.resources[1].status(statusOne);
        this.resource.resources[3].status(statusTwo);
        print(this.map.getSize());
        
        
    } else if (flagItems == 1) {
      
      if(flags[2]){
         if(this.map.getSize() == 2){
          this.map.deleteElement(0);
          this.map.deleteElement(0);  
         }
         if(this.map.getSize() == 4){
            this.map.deleteElement(1);
            this.map.deleteElement(2);
         }
      }else{
      //this.map.getTempArray();
        if(this.map.getSize() == 4){
          this.map.deleteElement(1);
          this.map.deleteElement(2);
        }else{
          this.map.deleteElement(2);
          this.map.deleteElement(4);
        }

      }
        this.resource.resources[2].status(statusOne);
        this.resource.resources[5].status(statusTwo);
       
       print(this.map.getSize());
       
       
    } else if (flagItems == 2) {

      
      if(flags[0]){
        
        if(this.map.getSize() == 4){
          this.map.deleteElement(0);
          this.map.deleteElement(2);
          
         }else if(this.map.getSize() == 2){
          this.map.deleteElement(0);
          this.map.deleteElement(0);
         }
      }else if(flags[1]){       
         if(this.map.getSize() == 4){
           this.map.deleteElement(0);
           this.map.deleteElement(1);
         }
      }else{
        if(this.map.getSize() == 2){
          this.map.deleteElement(1);
          this.map.deleteElement(0);
        }else{
          this.map.deleteElement(0);
          this.map.deleteElement(4);
        }
      }
        
        this.resource.resources[0].status(statusOne);
        this.resource.resources[4].status(statusTwo);
        
        print(this.map.getSize());
    }else if(flagItems == 3){
        this.map.addElement(0, 0);
        this.map.addElement(4, 1);
        this.resource.resources[0].status(statusOne);
        this.resource.resources[4].status(statusTwo);
        
        
    }else if(flagItems == 4){
        this.map.addElement(2, 2);
        this.map.addElement(5, 3);
        this.resource.resources[2].status(statusOne);
        this.resource.resources[5].status(statusTwo);

    }
    
    else if(flagItems == 5){
         
        this.map.addElement(1, 4);
        this.map.addElement(3, 5);
        this.resource.resources[1].status(statusOne);
        this.resource.resources[3].status(statusTwo);
        this.map.orderMap();  
        
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

  /*public void movePointerFordward() {
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
*/



  public void actions(int keyValue) {
    switch (keyValue) {
    case 1:
      if (this.changeScreenValue == 0 && flags[0]) {
        //this.movePointerBack();
        this.flags[0] = false;
        
        this.screenConditions(true, true, 0, 0);
        this.finalSound--;
      }
      break;

    case 2:
    if (this.changeScreenValue == 0 && flags[1]){ 
      //this.movePointerBack();
      this.flags[1] = false;
      this.screenConditions(true, true, 0, 1);
      this.finalSound--;
    }
      break;
      
    case 3:
    if (this.changeScreenValue == 0 && flags[2]){
      this.flagCube = false;
      //this.movePointerBack();
      this.flags[2] = false;
      this.screenConditions(true, true, 0, 2);
      this.finalSound--;
    }
      break;
    case 4:
      if (this.changeScreenValue == 0 && !flags[0]) {
        this.screenConditions(false, false, 1, 0);
        this.flags[0] = true;
        //this.movePointerFordward();
        
        this.finalSound++;
      }
      break;
    case 5:
      if (this.changeScreenValue == 0 && !flags[1]) {
        this.screenConditions(false, false, 1, 1);
         this.flags[1] = true;
        //this.movePointerFordward();

        this.finalSound++;
      }
      break;
    case 6:

      if (this.changeScreenValue == 0 && !flags[2]) {
        //this.flagCube = true;
        this.screenConditions(false, false, 1, 2);
        this.flags[2] = true;
        //this.movePointerFordward();
        
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
      if (this.indexSelector < this.resource.resources.length-1 && this.changeScreenValue == 0) {
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
