import ddf.minim.*;
//Sound Effect by <a href="https://pixabay.com/es/users/maxhammarbäck-25559203/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=21991">MaxHammarbäck</a> from <a href="https://pixabay.com/sound-effects//?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=21991">Pixabay</a>
class Sound {

  private Minim minim;
  private AudioPlayer good;
  private AudioPlayer bad;
  private AudioPlayer nature;
  private AudioPlayer fire;
  
  private PApplet parent; //It references to the main processing class
  
  
  Sound(PApplet parent){
    this.parent = parent;
    this.minim = new Minim(this.parent);

    this.setupSounds();
    
  }
  
  private void setNatureSound(String fileName){
    this.nature = minim.loadFile(fileName);
  }
  
   private void setFireSound(String fileName){
    this.fire = minim.loadFile(fileName);
  }
  
  private void setGoodSound(String fileName){
    this.good = minim.loadFile(fileName); 
  }
  
  private void setBadSound(String fileName){
    this.bad = minim.loadFile(fileName);
  }
  
  public void playNatureSound(){
    this.nature.play();
    this.fire.pause();
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
  
  public void playFireSound(){
    this.fire.play();
    this.nature.pause();
  }
  
  private void setupSounds(){
    this.setGoodSound("win.wav");
    this.setBadSound("dramatic.mp3");
    this.setNatureSound("forest.wav");
    this.setFireSound("finalFire.mp3");
  }
  
}
