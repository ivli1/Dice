Die bob;
int total = 0;
int big = 50;
void setup(){
 noLoop();
 size(500,500);
}

void draw(){
  background(#cccccc);
  fill(#cccccc);
  stroke(3);
  textSize(40);
  textAlign(CENTER);
  if(keyPressed == true){
      if (key == CODED) {
      if (keyCode == UP) {
        big += 10;
        if(big >= 400){
          big = 400;
        }
      } else if (keyCode == DOWN) {
        big -= 10;
        if(big <= 10){
          big = 10;
        }
      }
    }
  }
  for (int i = 15; i < 500-big; i += big+10){
    for (int o = 15; o < 500-big - 50; o += big+10){
    Die bob = new Die(i, o, big);
    bob.show();
    bob.roll();
    }
  }
  text("Total = " + total, 150, 475);
  text("Size = " + big, 350, 475);
}

void mousePressed(){
 redraw();
 total = 0;
}

class Die{
  int dots, myX, myY, mySize;
    Die(int x, int y, int siz){
    myX = x;
    myY = y;
    mySize = siz;
    dots = (int)(Math.random()*6)+1;
  }
  void roll(){
    total += dots;
  }
  void show(){
    fill(#ffffff);
    rect(myX, myY, mySize, mySize);
    fill(#000000);
    if(dots == 1){
      ellipse(myX + (mySize/2), myY + (mySize/2),(mySize/5), (mySize/5));
    }else if(dots == 2){
      ellipse(myX + (mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + 4*(mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
    }else if(dots == 3){
      ellipse(myX + (mySize/2),myY + (mySize/2),(mySize/5), (mySize/5));
      ellipse(myX + 4*(mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
    }else if(dots == 4){
      ellipse(myX + 4*(mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + 4*(mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
    }else if(dots == 5){
      ellipse(myX + 4*(mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + 4*(mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/2),myY + (mySize/2),(mySize/5), (mySize/5));
    }else if (dots == 6){
      ellipse(myX + 4*(mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + 4*(mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + 4*(mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + (mySize/5), (mySize/5), (mySize/5));
      ellipse(myX + (mySize/5), myY + 2.5*(mySize/5),(mySize/5), (mySize/5));
      ellipse(myX + 4*(mySize/5), myY + 2.5*(mySize/5),(mySize/5), (mySize/5));
    }
  }
}
