
class Language extends Dictionary {

  private float x;
  private float y;
  private boolean k = true;
  private int screenNumber;
  private Positions positions = new Positions();
  private int lengthNewPhrases = 2;
  private String[] newPhrases = new String[this.lengthNewPhrases];

  Language(int screenNumber) {
    this.screenNumber = screenNumber;
    for (int i = 0; i < this.lengthNewPhrases; i++) {
      newPhrases[i] = "";
    }
  }

  void display() {

    String text = "";

    // this section will validate if we are in the main screen or info screen
    if (this.screenNumber == 0) {
      for (int i = 0; i < this.principalDictionary.get("main").length; i++) {
        if (this.k) {
          newPhrases[i] = this.principalDictionary.get("main")[i][0];
        } else if (!this.k) {
          newPhrases[i] = this.principalDictionary.get("main")[i][1];
        }
      }

      // this loop will set the new phrases to the screen
      for (int i = 0; i < newPhrases.length; i++) {
        text = newPhrases[i];

        textSize(40);
        this.x = this.positions.mainPositions[i][0];
        this.y = this.positions.mainPositions[i][1];

        text(text, this.x, this.y);
      }
    }
  }

  void keyPressedEvent(boolean value) {
    this.k = value;
  }
}
