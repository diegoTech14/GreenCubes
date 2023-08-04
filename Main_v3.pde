Sound sounds;
Resource[] resources = new Resource[6];
Resource staticResources = new Resource();
MainScreen mainScreen;

int x = 0;
int z = 0;
int backgroundsLength = staticResources.getBackgrounds().length - 1;
int indexSelector;
int auxiliarIndexSelector;
boolean flagCube;


void setup() {

  fullScreen(P3D);
  sounds = new Sound(this);
  Positions positions = new Positions();
  int resourceNamesQuant = staticResources.getResourceNames().length;

  for (int i = 0; i < resourceNamesQuant; i++) {

    resources[i] = new Resource(
      positions.getXPositions()[i],
      positions.getYPositions()[i],
      staticResources.getResourceNames()[i]
      );
  }
  mainScreen = new MainScreen(resources, sounds, x, backgroundsLength);
}


void draw() {
  String[] photos = new String[2];
  photos[0] = staticResources.getBackgrounds()[mainScreen.getXValue()];
  photos[1] = staticResources.getBackgrounds()[4];
  staticResources.setPhotos(photos);

  if (z==1) {

    indexSelector = this.mainScreen.getIndexSelector();

    if (!(indexSelector < auxiliarIndexSelector)) {
      background(staticResources.getPhotos()[1]);
      this.mainScreen.getResourceInfo(indexSelector, resources);
    }
  } else {
    background(staticResources.getPhotos()[0]);

    for (int i = 0; i<6; i++) {
      resources[i].display();
    }

    if (flagCube) {
      staticResources.circleSelection(indexSelector);
      this.mainScreen.setIndexSelector(indexSelector);
    }

    staticResources.circleSelection(indexSelector);
    println(indexSelector);
  }
}

// This function called the delete function of the class Resource.
void keyPressed() {

  switch (key) {
  case '1':

    flagCube = false;
    indexSelector = this.mainScreen.movePointerBack(indexSelector);
    this.mainScreen.screenConditions(true, true, 0, 0);

    break;
  case '2':
    indexSelector = this.mainScreen.movePointerBack(indexSelector);
    this.mainScreen.screenConditions(true, true, 0, 1);
    break;
  case '3':
    indexSelector = this.mainScreen.movePointerBack(indexSelector);
    this.mainScreen.screenConditions(true, true, 0, 2);
    break;
  case '4':

    if (z == 0) {
      staticResources.setBackgroundCounter();
      flagCube = true;
      indexSelector = this.mainScreen.movePointerFordward(indexSelector, resources.length);
      auxiliarIndexSelector = indexSelector;
      this.mainScreen.screenConditions(false, false, 1, 0);
    }
    break;
  case '5':
    if (z == 0) {
      staticResources.setBackgroundCounter();
      auxiliarIndexSelector = indexSelector;
      indexSelector = this.mainScreen.movePointerFordward(indexSelector, resources.length);
      this.mainScreen.screenConditions(false, false, 1, 1);
    }
    break;
  case '6':
    if (z == 0) {
      staticResources.setBackgroundCounter();
      auxiliarIndexSelector = indexSelector;
      indexSelector = this.mainScreen.movePointerFordward(indexSelector, resources.length);
      this.mainScreen.screenConditions(false, false, 1, 2);
    }
    break;
  case '9':
    z = 0;
    break;
  case 'w':
    //validate
    if (indexSelector < resources.length-1) {
      indexSelector++;
    }
    this.mainScreen.resourceSelector(true);
    break;
  case 'd':
    //validate
    if (indexSelector < resources.length-1) {
      indexSelector++;
    }
    this.mainScreen.resourceSelector(true);
    break;
  case 's':
    if (indexSelector > 0) {
      indexSelector--;
    }
    this.mainScreen.resourceSelector(false);
    break;
  case 'a':
    if (indexSelector > 0) {
      indexSelector--;
    }
    this.mainScreen.resourceSelector(false);
    break;
  case 'l':
    z = 1;
    break;
  }
}
