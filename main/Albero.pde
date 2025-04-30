class Albero {
  Nodo root;
  ArrayList<Nodo> nodi;
  
  void insert(Nodo v, int x){
    if (v.el1 != null && v.el2 != null && v.el3 != null){
      v.split();
    }
  }





}
