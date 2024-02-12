import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;


class MapResource {
    private ArrayList<NaturalResource> resourcesArray = new ArrayList<>();
    private ArrayList<NaturalResource> temporalResourcesArray = new ArrayList<>();
    
    public void setResources(NaturalResource object){
      this.resourcesArray.add(object);
      this.temporalResourcesArray.add(object);
    }
    
    public void getArray(){
       for(int i = 0; i<resourcesArray.size();i++){
          print(this.resourcesArray.get(i).getX()+"\n"); 
       }
    }
    
    public void getTempArray(){
      for(int i = 0; i<this.temporalResourcesArray.size();i++){
        print(i+" - "+this.temporalResourcesArray.get(i).getX()+"\n");  
       }
    }
    
    public NaturalResource getResource(int index){
      //validar las posiciones
      return this.temporalResourcesArray.get(index);
    }
    
    public void deleteElement(int index){
       this.temporalResourcesArray.remove(index); 
    }
    
    public void addElement(int index, int indexTo){
        this.temporalResourcesArray.add(indexTo, this.resourcesArray.get(index));
    }
    
    public int getSize(){
      return this.temporalResourcesArray.size();
    }
    
    public void deleteElements(int elementOnePosition, int elementTwoPosition){
       this.deleteElement(elementOnePosition);
       this.deleteElement(elementTwoPosition);
    }
    
    //This method allows to order the temporalArray
    public void orderMap(){
      //Comparator is an java interface 
      Comparator<NaturalResource> comparator = new Comparator<NaturalResource>(){
        @Override
        public int compare(NaturalResource o1, NaturalResource o2){
          return o1.getIndex() - o2.getIndex();
        }
      };
      //Collections is a class whose allows sort the array
      Collections.sort(this.temporalResourcesArray, comparator);
    }
   
}
