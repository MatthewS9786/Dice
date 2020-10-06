Die[]bob=new Die[16];



void setup()
  {
    size(300,300);  
    noLoop();
  }
  void draw()
  {
    background(255);
    int total=0;
    for(int i=0;i<4;i++){
      for(int j=0;j<4;j++){
      int index=i*4+j;
      bob[index]=new Die(i*60+10,j*60+10);
      bob[index].roll();
      bob[index].show();
      total+=bob[index].value;
      }
    }
    textSize(20);
    text(total,150,270);
    text("Total: ",90,270);
  }
  void mousePressed()
  {
      background(255);
      redraw();   
  }
  class Die 
  { int myX, myY, value ;
      
      
      Die(int x, int y) 
      {
         myX=x;
         myY=y;
         value=6;
      }
      void roll()
      {
         value=(int)(Math.random()*6)+1; 
      }
      void show()
      {
          fill(0,255,0);
          square(myX,myY,50);
          fill(0);
          if(value==1){
            ellipse(myX+25,myY+25,7,7);
          }
          if(value==2){
                ellipse(myX+10,myY+10,7,7);
                ellipse(myX+40,myY+40,7,7);
          }
          if(value==3){
                ellipse(myX+10,myY+40,7,7);
                ellipse(myX+40,myY+10,7,7);
                ellipse(myX+25,myY+25,7,7);
          }
          if(value==4){
                ellipse(myX+10,myY+10,7,7);
                ellipse(myX+40,myY+40,7,7);
                ellipse(myX+40,myY+10,7,7);
                ellipse(myX+10,myY+40,7,7);
          }
          if(value==5){
                ellipse(myX+10,myY+10,7,7);
                ellipse(myX+40,myY+40,7,7);
                ellipse(myX+40,myY+10,7,7);
                ellipse(myX+10,myY+40,7,7);
                ellipse(myX+25,myY+25,7,7);
          }
             if(value==6){
                ellipse(myX+10,myY+10,7,7);
                ellipse(myX+40,myY+40,7,7);
                ellipse(myX+40,myY+10,7,7);
                ellipse(myX+10,myY+40,7,7);
                ellipse(myX+10,myY+25,7,7);
                ellipse(myX+40,myY+25,7,7);
          }
      }
  }
