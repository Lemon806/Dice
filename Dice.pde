int total;
  void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  background(220);
  total=0;
  for (int row=0; row<3;row++)
  {
    for (int col=0; col<3; col++)
    {
      Die die = new Die(50+col*150,50+row*150);
      die.roll();
      die.show();
      total=+ total+ die.number;
    }
  }
  fill(0);
  textSize(25);
  text("Total:" + total,20,480);
}
void mousePressed()
{
   redraw();
}
class Die //models one single dice cube
{
   int x;
   int y;
   int number;
   
   Die(int x, int y) //constructor
   {
      this.x=x;
      this.y=y;
      number=1;
   }
   void roll()
   {
     number=(int)(Math.random()*6)+1;
   }
   void show()
   {
     fill(255);
     rect(x,y,100,100);
     fill(0);
     if (number==1)
       ellipse(x+50,y+50,15,15);
     else if (number==2){
       ellipse(x+25,y+25,15,15);
       ellipse(x+75,y+75,15,15);}
     else if (number==3){
       ellipse(x+25,y+25,15,15);
       ellipse(x+50,y+50,15,15);
       ellipse(x+75,y+75,15,15);}
     else if (number==4){
       ellipse(x+25,y+25,15,15);
       ellipse(x+75,y+25,15,15);
       ellipse(x+25,y+75,15,15);
       ellipse(x+75,y+75,15,15);}
     else if (number==5){
       ellipse(x+25,y+25,15,15);
       ellipse(x+75,y+25,15,15);
       ellipse(x+50,y+50,15,15);
       ellipse(x+25,y+75,15,15);
       ellipse(x+75,y+75,15,15);}
      else if (number==6){
       ellipse(x+25,y+20,15,15);
       ellipse(x+75,y+20,15,15);
       ellipse(x+25,y+50,15,15);
       ellipse(x+75,y+50,15,15);
       ellipse(x+25,y+80,15,15);
       ellipse(x+75,y+80,15,15);
      }
   }
}
