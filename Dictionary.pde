
class Dictionary {

  protected String [][] mainDictionary; //a protected main screen dictionary
  protected String [][] resourcesDictionary;
  
  HashMap<String, String[][]> principalDictionary = new HashMap<>(); // a pair key-value data structure
  HashMap<String, String[][]> resourcesInfo = new HashMap<>(); // a pair key-value data structure
  
  Dictionary() {
    this.mainDictionary = new String[][] {
      {"Hola", "Hello"},
      {"Adios", "Good Bye"}
    };
    
    this.resourcesDictionary = new String [][] {
      {"Title1", "Lorem Ipsum Dolor Sit Ammet"},
      {"Title2", "Lorem Ipsum Dolor Sit Ammet"},
      {"Title3", "Lorem Ipsum Dolor Sit Ammet"},
      {"Title4", "Lorem Ipsum Dolor Sit Ammet"},
      {"Title5", "Lorem Ipsum Dolor Sit Ammet"},
      {"Title6", "Lorem Ipsum Dolor Sit Ammet"},
    };
    
    // initializing the matrix
    this.principalDictionary.put("main", this.mainDictionary);// set the matrix to a key "main"
    //this.resourcesInfo.put("info", this.resourcesInfo);  
  }
}

/*
  main => [
 ["Hola", "Hello"],
 ["Adios", "Good bye"]
 ]
 */
