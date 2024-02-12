
class Dictionary {

  protected String [][] mainDictionary;
  protected String [][] resourcesDictionary;

  HashMap<String, String[][]> principalDictionary = new HashMap<>(); // a pair key-value data structure
  HashMap<String, String[][]> resourcesInfo = new HashMap<>();


  Dictionary() {
    
    this.mainDictionary = new String[][] {
      {
        "Las fotos son para recordar, los recursos naturales para crear esos recuerdos.",
        "Photos are for remembering, natural resources for creating those memories."
      },
      {
        "Use the joystick to move the model",
        "Use el joystick para mover el modelo"
      },
      {
        "PRESS        TO EXIT",
        "PRESIONA        PARA SALIR"
      },{
       "STOP",
       "ALTO"
      },{
        "Extraction of natural resources from their habitat is not only illegal but also undermines the balance of the ecosystem.",
        "La extracción de recursos naturales de su hábitat no solo es ilegal, sino que también lastima el equilibrio del ecosistema." 
      }
    };

    this.resourcesDictionary = new String [][] {
      {
        "Orchids",
        "Orchids are one of the largest families of plants, contributing significantly to the biodiversity of plant communities. They play a crucial role in ecosystems by establishing symbiotic relationships with various pollinators, such as butterflies, hummingbirds, and some species of bats. Additionally, through natural processes like photosynthesis, they release oxygen, helping to maintain the balance of carbon in the atmosphere.",
        "Orquídeas",
        "Las orquídeas, una de las familias de plantas más grandes, desempeñan un papel crucial en las comunidades vegetales, contribuyendo significativamente a la biodiversidad. Estas hermosas flores establecen relaciones simbióticas con diversos polinizadores, como mariposas, colibríes y algunas especies de murciélagos. Asimismo, mediante la fotosíntesis, liberan oxígeno, lo que ayuda a mantener el equilibrio del carbono en la atmósfera.",
        "Concha.obj",
        "conTexture.jpg"
      },

      {
        "Sand dollar",
        "At our beaches, it is common to observe the skeletons of various echinoderms, such as sea biscuits, named for their round and flat shape. These skeletons play a key role in marine ecosystems by providing a source of food and shelter for other species, being an essential part of the nutrient recycling process in these aquatic environments.",
        "Galletas de Mar",
        "En nuestras playas, es común observar los esqueletos de varios equinodermos, como las galletas de mar, conocidas por su forma redonda y plana. Estos esqueletos desempeñan una función clave en los ecosistemas marinos al proporcionar una fuente de alimento y refugio para otras especies, siendo parte fundamental del proceso de reciclaje de nutrientes en estos entornos marinos.",
        "Concha.obj",
        "conTexture.jpg"
      },

      {
        "Green tree frog",
        "Tree frogs, such as the iconic green frog of Costa Rica, play a crucial role in various ecological processes that help maintain ecosystem health. These beautiful frogs contribute to pest control and plant pollination by feeding on insects and nectar, thereby promoting the reproduction and diversity of plant species in the forests.",
        "Rana verde",
        "Las ranas arbóreas, como la icónica rana verde de Costa Rica, desempeñan un papel crucial en varios procesos ecológicos que ayudan a mantener la salud del ecosistema. Estas hermosas ranas contribuyen al control de plagas y la polinización de plantas, al alimentarse de insectos y néctar, lo que promueve la reproducción y diversidad de especies vegetales en los bosques.",
        "Concha.obj",
        "conTexture.jpg"
      },

      {
        "Sea Shells",
        "Empty shells play an essential role in the balance and biodiversity of coastal ecosystems. Over time, their minerals and calcium carbonate break down, releasing nutrients into the water and enriching the marine environment. Additionally, they provide shelter and protection for various species, such as invertebrates, small fish, and hermit crabs.",
        "Conchas",
        "Las conchas vacías desempeñan un papel esencial en el equilibrio y la biodiversidad de los ecosistemas costeros. Con el tiempo, sus minerales y carbonato de calcio se descomponen, liberando nutrientes al agua y enriqueciendo el entorno marino. Además, proporcionan refugio y protección a diversas especies, como invertebrados, peces pequeños y cangrejos ermitaños.",
        "Concha.obj",
        "conTexture.jpg"
      },

      {
        "Bromeliads",
        "Bromeliads are a group of plants that play a vital role in maintaining biodiversity, providing habitat, and conserving water. Their rosette-shaped leaves form small pools, creating an ideal habitat for insects, amphibians, and small reptiles. Moreover, their leaves capture and retain rainwater, gradually releasing it, thus helping to maintain a constant moisture level in the ecosystem.",
        "Bromelias",
        "Las bromelias desempeñan un papel vital en el mantenimiento de la biodiversidad, proporcionando hábitat y conservando el agua. Sus hojas en forma de roseta forman pequeñas piscinas, creando un hábitat ideal para insectos, anfibios y pequeños reptiles. Además, sus hojas capturan y retienen el agua de lluvia, liberándola gradualmente, lo que ayuda a mantener un nivel de humedad constante en el ecosistema.",
        "Concha.obj",
        "conTexture.jpg"
      },

      {
        "Titi monkey",
        "The titi monkey, also known as the squirrel monkey, is an endemic species of Costa Rica. Its presence in the forests is of vital importance to maintain the health of the ecosystem, as it plays a crucial role in the pollination of plants and the dispersal of seeds by feeding on fruits and nectar. Additionally, it contributes to the control of certain pests that could negatively affect the environment.",
        "Mono tití",
        "El mono tití, también conocido como mono ardilla, es una especie endémica de Costa Rica. Su presencia en los bosques es de vital importancia para mantener la salud del ecosistema, ya que desempeña un papel crucial en la polinización de plantas y la dispersión de semillas al alimentarse de frutas y néctar. Además, contribuye al control de ciertas plagas que podrían afectar negativamente el entorno.",
        "Concha.obj",
        "conTexture.jpg"
      },

    };

    this.principalDictionary.put("main", this.mainDictionary);
    this.resourcesInfo.put("info", this.resourcesDictionary);
  }


}
