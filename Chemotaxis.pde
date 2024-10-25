int area = 15;

class Walker
{
  //two member variables
  int myX, myY, myColor, myS, score;
  
  //three member functions
  //special one: contructer

  Walker(int x, int y) //overloaded constructer 
  {
    myX = x;
    myY = y;
    myS = 20;
    
    myColor = color((int)(Math.random()*255),
    (int)(Math.random()*255),
    (int)(Math.random()*255));
  }
  //other two member functions
  void show(){
    
    fill(myColor);

    if (myX  + area > mouseX && myX -area< mouseX){
      if (myY + area  > mouseY && myY -area < mouseY){
        myS = 0;
        score++;
      }
    }
    ellipse(myX, myY, myS, myS);

  }
  void walk()
  {
    if(mouseX < myX){
      myX += (int)(Math.random()*5)-1;//-1,0,1
    }
    else{
      myX += (int)(Math.random()*5)-3;
    }
    if(mouseY < myY){
      myY += (int)(Math.random()*5)-1;//-1,0,1
    }
    else{
      myY += (int)(Math.random()*5)-3;
    }
    if(myX > 500 || myY > 500 || myX < 0 || myY < 0){
      myX = (int)(Math.random()*500);
      myY = (int)(Math.random()*500);
    }
    
  }

}//end of Walker class

Walker bob;

Walker [] ohio = new Walker [1000]; // first call to new

void setup()
{
  size(500,500);
  background(0);

  for (int i = 0; i < ohio.length; i++){
    ohio[i] = new Walker((int)(Math.random()*500), (int)(Math.random()*500)); // second call to new
  }
}

void draw()
{
  background(0);

  
  
  for (int i = 0; i < ohio.length; i++)
  {
    ohio[i].walk();
    ohio[i].show();
  }
      
    fill(255);
    ellipse(mouseX, mouseY, area, area);

}
