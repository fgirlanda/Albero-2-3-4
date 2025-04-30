void setup(){
  size(600, 600);

  test.setFiglio1(figlio1);
}

Nodo test = new Nodo(1, 2, 3, 300, 300);
Nodo figlio1 = new Nodo(4,5,6, 200, 400);

void draw(){
  test.disegna();
}

class Valore{
  Integer x;
  
  Valore(int x){
    this.x = x;
  }
}

class Nodo {
  Valore el1, el2, el3;
  Nodo f1, f2, f3, f4, p;
  float x, y;
  
  Nodo(int el1, int el2, int el3, int x, int y){
    this.el1 = new Valore(el1);
    this.el2 = new Valore(el2);
    this.el3 = new Valore(el3);
    this.x = x;
    this.y = y;
  }
  
  void setFiglio1(Nodo f1){
    this.f1 = f1;
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
    int r = 50;
    fill(255);
    circle(this.x, this.y, r);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(15);
    String testo = "";
    if(this.el1 != null) testo += this.el1.x.toString() + ',';
    if(this.el2 != null) testo += this.el2.x.toString() + ',';
    if(this.el3 != null) testo += this.el3.x.toString();
    text(testo, this.x, this.y);
    if (this.f1 != null) {
      line(this.x + r, this.y + r, this.f1.x, this.f1.y);
      this.f1.disegna();
    }
    if (this.f2 != null) line(this.x + r, this.y + r, this.f2.x, this.f2.y);
    if (this.f3 != null) line(this.x, this.y, this.f3.x, this.f3.y);
    if (this.f4 != null) line(this.x, this.y, this.f4.x, this.f4.y);
  }
}
