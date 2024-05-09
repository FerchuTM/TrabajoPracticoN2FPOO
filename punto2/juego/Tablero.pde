class Tablero extends GameObject{
  private Dado dado1;
    Tablero(){
  }
  public Tablero(PVector posicion){
    this.posicion=posicion;
  }
  void setDado(Dado dado){
    this.dado1=dado;
  }
  
  void display(){
    fill(#9D3333);
    rectMode(CENTER);
    rect(posicion.x,posicion.y,width-30,height-30);
  }
   public void mostrarNumero(){
    switch(dado1.getNumero()){
      case 1:
        textSize(30);
        fill(0);
        text("UNO",this.posicion.x*2-100,50);
        break;
      case 2:        
        stroke(0);
        textSize(30);
        fill(0);
        text("DOS",this.posicion.x*2-100,50);
        break;
      case 3:     
        stroke(0);
        textSize(30);
        fill(0);
        text("TRES",this.posicion.x*2-100,50);
        break;
      case 4:
      
        stroke(0);
        textSize(30);
        fill(0);
        text("CUATRO",this.posicion.x*2-120,50);
        break;
      case 5:
        stroke(0);
        textSize(30);
        fill(0);
        text("CINCO",this.posicion.x*2-100,50);
        break;
      case 6:        
        stroke(0);
        textSize(30);
        fill(0);
        text("SEIS",this.posicion.x*2-100,50);
        break;
      }
    }
}
