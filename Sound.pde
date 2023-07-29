import ddf.minim.*;

class Sound {

  private Minim minim;
  private AudioPlayer good;
  private AudioPlayer bad;
  private AudioPlayer nature;
  
  private PApplet parent; //It references to the main processing class
  
  
  Sound(PApplet parent){
    this.parent = parent;
    this.minim = new Minim(this.parent);

    this.setupSounds();
    this.playNatureSound();
  }
  
  private void setNatureSound(String fileName){
    this.nature = minim.loadFile(fileName);
  }
  
  private void setGoodSound(String fileName){
    this.good = minim.loadFile(fileName); 
  }
  
  private void setBadSound(String fileName){
    this.bad = minim.loadFile(fileName);
  }
  
  private void playNatureSound(){
    this.nature.play();
  }
  
  public void playGoodSound(){
    this.good.play();
    this.good.rewind();
    this.bad.pause();
  }
  
  public void playBadSound(){
    this.bad.play();
    this.bad.rewind();
    this.good.pause();
  }
  

  private void setupSounds(){
    this.setGoodSound("win.wav");
    this.setBadSound("rocket.wav");
    this.setNatureSound("forest.wav");
  }
  
}
