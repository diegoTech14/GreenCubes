
class Language extends Dictionary {
  
  // Objeto de posiciones
  private Positions positions = new Positions();
  private int lengthNewPhrases = 2;
  private String[] newPhrases = new String[this.lengthNewPhrases];
  private Fonts fonts = new Fonts();

  Language() {
    for (int i = 0; i < this.lengthNewPhrases; i++) {
      newPhrases[i] = "";
    }
  }

  public void mainText(boolean traductionValue) {
    String englishText = "";
    if (traductionValue) {
      englishText = principalDictionary.get("main")[0][1];
    } else {
      englishText = principalDictionary.get("main")[0][0];
    }

    this.fonts.setFonts(englishText, positions.getMainPositions()[0], positions.getMainPositions()[1], 400, 250, 0, 30);
  }

  public void infoText(boolean traductionValue, int index) {
    String title = "";
    String description = "";
    String instruction = "";
    String photoTextLeft = "";

    if (traductionValue) {
      title = resourcesInfo.get("info")[index][0];
      description = resourcesInfo.get("info")[index][1];
      instruction = principalDictionary.get("main")[1][0];
      photoTextLeft = principalDictionary.get("main")[2][0];
      this.fonts.setFonts(photoTextLeft, positions.getPhotoTextPositions()[0], positions.getPhotoTextPositions()[1], 500, 100, 3, 30);
    } else {
      title = resourcesInfo.get("info")[index][2];
      description = resourcesInfo.get("info")[index][3];
      instruction = principalDictionary.get("main")[1][1];
      photoTextLeft = principalDictionary.get("main")[2][1];
      this.fonts.setFonts(photoTextLeft, 1525, 1000, 500, 100, 3, 30);
    }

    this.fonts.setFonts(title, positions.getTitlePositions()[0], positions.getTitlePositions()[1], 600, 100, 1, 60);
    this.fonts.setFonts(description, positions.getDescriptionPositions()[0], positions.getDescriptionPositions()[1], 600, 400, 2, 30);
    this.fonts.setFonts(instruction, positions.getInstructionsPositions()[0], positions.getInstructionsPositions()[1], 280, 100, 0, 30);
  }

  public void messageDestruction(boolean traductionValue) {
    String title = "";
    String description = "";

    if (traductionValue) {
      title = principalDictionary.get("main")[3][0];
      description = principalDictionary.get("main")[4][0];
    } else {
      title = principalDictionary.get("main")[3][1];
      description = principalDictionary.get("main")[4][1];
    }
    this.fonts.setFonts(title, positions.getDestructionPositions()[0], positions.getDestructionPositions()[1], 300, 200, 5, 100);
    this.fonts.setFonts(description, positions.getDestructionPositions()[2], positions.getDestructionPositions()[3], 600, 300, 2, 30);
  }
}
