class Nodo {
  Valore el1, el2, el3;
  Nodo f1, f2, f3, f4, p;
  //float x, y;
  PVector pos;
  
  Nodo(int el1){
    this.el1 = new Valore(el1);
    this.el2 = null;
    this.el3 = null;
  }

  void aggiungiOrd(int x){
    if (x < this.el1.x){
        this.el3 = this.el2;
        this.el2 = this.el1;
        this.el1.x = x;
    }else if (this.el2 == null || x < this.el2.x){
      this.el3 = this.el2;
      this.el2 = new Valore(x);
    }else{
      this.el3 = new Valore(x);
    }
  }
  
  boolean isLeaf(){
    return f1 == null && f2 == null && f3 == null && f4 == null;
  }
  
  boolean isRadice(){
    return p == null;
  }
  
  @Override
  String toString(){
    String testo = "";
    if(this.el1 != null) testo += this.el1.x.toString() + ", ";
    if(this.el2 != null) testo += this.el2.x.toString() + ", ";
    if(this.el3 != null) testo += this.el3.x.toString();
    
    return testo;
  }
  //void disegna(){
  //  circle(this.x, this.y, 20);
  //  textAlign(CENTER, CENTER);
  //  String testo = this.el1.x.toString() + ',' + this.el2.x.toString() + ',' + this.el3.x.toString();
  //  text(testo, this.x, this.y);
  //  line(this.x, this.y, this.f1.x, this.f1.y);
  //  line(this.x, this.y, this.f2.x, this.f2.y);
  //  line(this.x, this.y, this.f3.x, this.f3.y);
  //}
}
