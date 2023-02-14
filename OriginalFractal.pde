float grow = 0;
public void setup()
{
size(600, 600);
stroke(250);
strokeWeight(0.55);
}

public void draw()
{
background(237,233,233);
translate(300,300);
scale(grow);
rose(0, 0, 600);

}
public void mouseClicked(){
 grow +=.05;
}
public void keyPressed(){
  if (key == 'r')
  grow = 0;
}
public void rose(int x, int y, int size)
{

  fill(235,(int)(Math.random()*130),(int)(Math.random()*130),(int)(Math.random()*50));
ellipse(x, y, size, size);
ellipse(x+size/4, y, size, size);
ellipse(x-size/4, y, size, size);
ellipse(x, y-size/4, size, size);
ellipse(x, y+size/4, size, size);
if (size > 10)
{
rose(x, y, size/2);
}
}
