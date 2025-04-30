class Nodo {
  Valore el1, el2, el3;
  Nodo f1, f2, f3, f4, p;
  float x, y;
  
  Nodo(int el1, int el2, int el3){
    this.el1 = new Valore(el1);
    this.el2 = new Valore(el2);
    this.el3 = new Valore(el3);
  }

  void aggiungiOrd(Nodo v, int x){
    if (x < v.el1.x){
      v.el2.x = v.el1.x;
      v.el1.x = x;
    }else if (x < v.el2.x){
      v.el3.x = v.el2.x;
      v.el2.x = x;
    }else{
      v.el3.x = x;
    }
  }
  
  boolean isLeaf(){
    return f1 == null && f2 == null && f3 == null && f4 == null;
  }
  
  boolean isRadice(){
    return p == null;
  }
  
  void split(){
    if (!this.isRadice()){
      aggiungiOrd(this.p, this.el2.x);
    }
  }
  void disegna(){
    circle(this.x, this.y, 20);
    textAlign(CENTER, CENTER);
    String testo = this.el1.x.toString() + ',' + this.el2.x.toString() + ',' + this.el3.x.toString();
    text(testo, this.x, this.y);
    line(this.x, this.y, this.f1.x, this.f1.y);
    line(this.x, this.y, this.f2.x, this.f2.y);
    line(this.x, this.y, this.f3.x, this.f3.y);
  }
}
