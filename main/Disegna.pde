class Disegnatore{
  int hspace = 400;
  int vspace = 100;
  int r = 50;
  int w, h;
  PVector orizzontale = new PVector(1, 0);
  Albero albero;
  
  Disegnatore(Albero albero, int w, int h){
    this.albero = albero;
    this.w = w;
    this.h = h;
  }
  void disegna(){
    disegnaNodo(albero.root, new PVector(w/2, 100));
  }
  
  void disegnaNodo(Nodo v, PVector pos){
    //padre
    fill(255);
    circle(pos.x, pos.y, r);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(15);
    String testo = v.el1.toString();
    if (v.el2 != null){
      testo += ", " + v.el2.toString();
    }
    if (v.el3 != null){
      testo += ", " + v.el3.toString();
    }
    text(testo, pos.x, pos.y);
    
    //figli (correggere sovrapposizioni)
    int nFigli = contaFigli(v);
    //System.out.println(nFigli);
    if (nFigli == 0) return;
    float step = hspace / nFigli;
    //float offset = pos.x - (hspace/2) + (step/2);
    float offset = - hspace/2 + (step/2);
    if (v.f1 != null){
      disegnaFiglio(v.f1, offset, pos);
      offset += step;
    }
    if (v.f2 != null){
      disegnaFiglio(v.f2, offset, pos);
      offset += step;
    }
    if (v.f3 != null){
      disegnaFiglio(v.f3, offset, pos);
      offset += step;
    }
    if (v.f4 != null){
      disegnaFiglio(v.f4, offset, pos);
    } 
  }
  
  int contaFigli(Nodo v){
    int nFigli = 0;
    if (v.f1 != null){
      nFigli++;
    }
    if (v.f2 != null){
      nFigli++;
    }
    if (v.f3 != null){
      nFigli++;
    }
    if (v.f4 != null){
      nFigli++;
    }
    return nFigli;
  }
  void disegnaFiglio(Nodo f, float offset, PVector posPadre){
    int nNipoti = contaFigli(f);
    float nuovoOffset = offset*((nNipoti+1)*0.6);
    PVector posFiglio = posPadre.copy();
    posFiglio.add(nuovoOffset, vspace);
    PVector diff = PVector.sub(posPadre, posFiglio);
    float theta = PVector.angleBetween(diff, orizzontale);
    float deltaX = (r/2) * cos(theta);
    float deltaY = (r/2) * sin(theta);
    line(posPadre.x - deltaX, posPadre.y + deltaY, posFiglio.x, posFiglio.y);
    disegnaNodo(f, posFiglio);
  }
}
