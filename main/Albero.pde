class Albero {
  Nodo root;
  ArrayList<Nodo> nodi;
  
  Albero(int x){
    root = new Nodo(x);
  }
  
  void insert(Nodo v, int x){
    if (v.el1 != null && v.el2 != null && v.el3 != null){
      Nodo nuovoFiglio = split(v);
      if (v.p.el2 != null && x < v.p.el2) insert(v, x); 
      else insert(nuovoFiglio, x);
      return;
    }
    if (v.isLeaf()){
      v.aggiungiOrd(x);
      return;
    }
    if (x < v.el1) {
      insert(v.f1, x);
      return;
    }
    if (v.el2 == null || x < v.el2){
      insert(v.f2, x);
      return;
    }
    insert(v.f3, x);
  }
  
  Nodo split(Nodo v){
    if (!v.isRadice()){
      Nodo out;
      v.p.aggiungiOrd(v.el2);
      if (v.p.f3 == null) {
        v.p.f3 = new Nodo(v.el3);//nuovo nodo
        out = v.p.f3;
        v.p.f3.p = v.p;
      }else{
        v.p.f4 = new Nodo(v.el3);
        out = v.p.f4;
        v.p.f4.p = v.p;
      }
      v.el2 = null;
      v.el3 = null;
      return out;
    }else{
      Nodo newRoot = new Nodo(v.el2); //nuovo nodo
      this.root = newRoot;
      v.p = newRoot;
      newRoot.f1 = v;
      newRoot.f2 = new Nodo(v.el3); //nuovo nodo
      newRoot.f2.p = newRoot;
      if(v.f3 != null){
        v.f3.p = newRoot.f2;
        v.f4.p = newRoot.f2;
      }
      v.el2 = null;
      v.el3 = null;
      newRoot.f2.f1 = v.f3;
      newRoot.f2.f2 = v.f4;
      v.f3 = null;
      v.f4 = null;
      return newRoot.f2;
    }
  }
  
  //@Override
  //String toString



}
