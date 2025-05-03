Disegnatore disegnatore;
int[] sequenza = {2, 7, 3, 4, 10, 5, 6, 8, 9, 11, 12, 13};
Albero albero;
int count = 1;

void setup(){
  size(600, 600);
  background(255);
  albero = new Albero(sequenza[0]);
  disegnatore = new Disegnatore(albero, 600, 600);
  
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
