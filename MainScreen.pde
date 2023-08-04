class MainScreen {

  private Sound sounds;
  private Resource[] resources;
  private int x;
  private int backgroundsLength;
  private int indexSelector = 0;
  
  int m = millis();
  float value = 200;
  public MainScreen(Resource resources[], Sound sounds, int x, int backgroundsLength) {
    this.resources = resources;
    this.sounds = sounds;
    this.backgroundsLength = backgroundsLength;
    this.x = x;

    if (this.indexSelector == 0) {
      this.resources[indexSelector].movePointer(this.indexSelector, this.resources);
    }
  }

  public int getXValue() {
    return this.x;
  }



  public void resourceSelector(boolean flag) {

    if (this.indexSelector < this.resources.length-1) {
      if (flag && this.indexSelector < this.resources.length) {
        this.indexSelector++;
        this.resources[this.indexSelector].movePointer(this.indexSelector, this.resources);
      }
    }

    if (!flag && this.indexSelector < this.resources.length) {
      if (this.indexSelector > 0) {
        this.indexSelector--;
        this.resources[this.indexSelector].movePointer(this.indexSelector, this.resources);
      }
    }
  }

  public int getIndexSelector() {
    return this.indexSelector;
  }

  public void setIndexSelector(int index) {
    this.indexSelector = index;
  }

  public String getResourceInfo(int position, Resource[] resources) {
    return this.resources[position].toString(position, resources);
  }

  public void screenConditions(boolean statusOne, boolean statusTwo, int flagCounter, int flagItems) {

    if (flagItems == 0) {
      this.resources[0].status(statusOne);
      this.resources[1].status(statusTwo);
    } else if (flagItems == 1) {
      this.resources[2].status(statusOne);
      this.resources[3].status(statusTwo);
    } else if (flagItems == 2) {
      this.resources[4].status(statusOne);
      this.resources[5].status(statusTwo);
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
  }
  

  public int movePointerFordward(int index, int total) {
    if ((total - 2) == index) {
      index += 1;
    } else {

      if (index % 2 == 0) {
        index+=2;
      } else {
        index+=1;
      }
    }

    return index;
  }

  public int movePointerBack(int index) {
    //validar el penultimo
    if (index % 2 == 0) {
      index-=2;
    } else {
      index-=1;
    }

    return index;
  }
}
