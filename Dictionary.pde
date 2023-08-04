
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
      {"Bromeliads", "Bromeliads are a group of plants that play a vital role in maintaining biodiversity, providing habitat, and conserving water. Their rosette-shaped leaves form small pools, creating an ideal habitat for insects, amphibians, and small reptiles. Moreover, their leaves capture and retain rainwater, gradually releasing it, thus helping to maintain a constant moisture level in the ecosystem.",
      "Concha.obj", "conTexture.jpg"},
      
      {"Sea Shells", "Empty shells play an essential role in the balance and biodiversity of coastal ecosystems. Over time, their minerals and calcium carbonate break down, releasing nutrients into the water and enriching the marine environment. Additionally, they provide shelter and protection for various species, such as invertebrates, small fish, and hermit crabs.",
      "Concha.obj", "conTexture.jpg"},
      
      {"Orchids", "Orchids are one of the largest families of plants, contributing significantly to the biodiversity of plant communities. They play a crucial role in ecosystems by establishing symbiotic relationships with various pollinators, such as butterflies, hummingbirds, and some species of bats. Additionally, through natural processes like photosynthesis, they release oxygen, helping to maintain the balance of carbon in the atmosphere.",
      "Concha.obj", "conTexture.jpg"},
      
      {"Titi monkey", "The titi monkey, also known as the squirrel monkey, is an endemic species of Costa Rica. Its presence in the forests is of vital importance to maintain the health of the ecosystem, as it plays a crucial role in the pollination of plants and the dispersal of seeds by feeding on fruits and nectar. Additionally, it contributes to the control of certain pests that could negatively affect the environment.",
      "Concha.obj", "conTexture.jpg"},
      
      {"Green tree frog", "Tree frogs, such as the iconic green frog of Costa Rica, play a crucial role in various ecological processes that help maintain ecosystem health. These beautiful frogs contribute to pest control and plant pollination by feeding on insects and nectar, thereby promoting the reproduction and diversity of plant species in the forests.",
      "Concha.obj", "conTexture.jpg"},
      
      {"Sand dollar", "At our beaches, it is common to observe the skeletons of various echinoderms, such as sea biscuits, named for their round and flat shape. These skeletons play a key role in marine ecosystems by providing a source of food and shelter for other species, being an essential part of the nutrient recycling process in these aquatic environments.",
      "Concha.obj", "conTexture.jpg"},
    };

    // initializing the matrix
    this.principalDictionary.put("main", this.mainDictionary);// set the matrix to a key "main"
    this.resourcesInfo.put("info", this.resourcesDictionary);
  }
}
