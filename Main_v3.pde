Sound sounds;
Resource[] resources = new Resource[6];
Resource staticResources = new Resource();
MainScreen mainScreen;

int x = 0;
int z = 0;
int backgroundsLength = staticResources.getBackgrounds().length - 1;
int indexSelector;


void setup() {

  size(1920, 1080);
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
    background(staticResources.getPhotos()[1]);
  } else {
    background(staticResources.getPhotos()[0]);

    for (int i = 0; i<6; i++) {
      resources[i].display();
    }
  }
}

// This function called the delete function of the class Resource.
void keyPressed() {

  switch (key) {
  case '1':
    this.mainScreen.screenConditions(true, true, 0, 0);
    break;
  case '2':
    this.mainScreen.screenConditions(true, true, 0, 1);
    break;
  case '3':
    this.mainScreen.screenConditions(true, true, 0, 2);
    break;
  case '4':
    this.mainScreen.screenConditions(false, false, 1, 0);
    break;
  case '5':
    this.mainScreen.screenConditions(false, false, 1, 1);
    break;
  case '6':
    this.mainScreen.screenConditions(false, false, 1, 2);
    break;
  case '8':
    z = 1;
    break;
  case '9':
    z = 0;
    break;
  case 'w':
    this.mainScreen.resourceSelector(true);
    break;
  case 's':
    this.mainScreen.resourceSelector(false);
    break;
  case 'l':
    indexSelector = this.mainScreen.getIndexSelector();
    this.mainScreen.getResourceInfo(indexSelector, resources);
  }
}
