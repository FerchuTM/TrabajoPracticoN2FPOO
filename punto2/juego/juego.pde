private Dado[] dado;
private Tablero tablero;
private int arrayNum;
private int contador;
void setup(){
  size(400,400);
  arrayNum=4;
  contador =0;
  dado=new Dado[arrayNum];
  tablero=new Tablero(new PVector(width/2,height/2));
}
public void draw(){
    tablero.display();
  for(int i=0; i<contador; i++){
    tablero.display();
    tablero.setDado(dado[i]);
    dado[i].display();
    tablero.mostrarNumero();
  }

}
void keyReleased(){
  if(key=='q'){
    if(contador<arrayNum){
      println("----la lista comenzo----a");
      dado[contador]=new Dado(new PVector(width/2,height/2));
      dado[contador].setNumero(int(random(1,7)));
      contador++;
      for(int i=0; i<contador; i++){
        println(" Salio el numero "+dado[i].getNumero());
    }
      println("----la lista finalizó----");
    }else{
      println("la lista esta llena");
    }
  }
  if(key=='e'){
  for(int i=0; i<contador; i++){
    dado[i].setNumero(0);
  }
  contador=0;
  println("se vacio la lista ");
  }
  
}
