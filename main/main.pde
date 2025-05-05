Disegnatore disegnatore;
int[] sequenza = {2, 7, 3, 4, 10, 5, 6, 8, 9, 11, 12, 13, 20, 15, 17, 83, 23, 43, 57};
Albero albero;
int count = 1;
final int w = 1200;
final int h = 1200;

void settings(){
  size(w, h);  
}
void setup(){
  
  background(255);
  albero = new Albero(sequenza[0]);
  disegnatore = new Disegnatore(albero, w, h);
  
}

void draw(){
  background(255);
  disegnatore.disegna();
  return;
}

void keyReleased(){
  if (key == ' ' && count < sequenza.length){
     albero.insert(albero.root, sequenza[count++]); 
  }
}
