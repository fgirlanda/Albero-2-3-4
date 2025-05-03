void setup(){
  size(600, 600);
  background(255);
  int[] sequenza = {2, 7, 3, 4, 10, 5};
  Albero albero = new Albero(sequenza[0]);
  for(int i = 1; i < sequenza.length; i++){
    albero.insert(albero.root, sequenza[i]);
    System.out.println(albero.root.toString());
  }
}

void draw(){
  return;
}
