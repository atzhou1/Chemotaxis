Bacteria [] bob;
int x;
int y;
void setup()   
 {     
   size(400,500); 
   bob= new Bacteria[300];
   for(int i = 0; i < bob.length;i+=5)
  {
    bob[i] = new Bacteria();
  }

 }   
void draw()   
 { 
   background(100,95,85);
   fill(255);
   rect(0,10,400,80);
   fill(0);
   textSize(50);
   text("Finish",130,65);
   frameRate(10);
   for(int i = 0; i < bob.length;i+=5)
   {
     bob[i].show();
     bob[i].move();
   }
 }  
class Bacteria    
 {
   int myX,myY;
   Bacteria()
   {
     myX=(int)(Math.random()*400)+50;
     myY=(int)(Math.random()*150)+500;
   }
   void move()
   {
     myX = myX + (int)(Math.random()*10)-5;
     myY = myY + (int)(Math.random()-5);
   }
   void show()
   {
     int myColor= color(0);
     fill(myColor);
     noStroke();
     ellipse(myX,myY,20,20);
   }
 }    