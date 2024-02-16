public void setup()
{
  size(1000,1000);
}
public void draw()
{
sierpinski(300,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) {
//if len is less than or equal to 20 (or some variable)
if(len<=20){
  triangle(x,y,x+len/2,(y+len),x+len,y);
}
//Draw a triangle with the left corner at (x,y) and a base and height equal to len.
//else
else{
//call sierpinksi function to draw a triangle with the left corner at (x,y) and a base and height equal to len/2.
sierpinski(x,y,len/2);
//call sierpinksi function a second time to draw another triangle a distance of len/2 to the right of the first triangle.
sierpinski(x+len/2,y,len/2);
//call sierpinksi function a third time to draw a triangle a distance of len/4 to the right and len/2 up from the first triangle. 
sierpinski(x+len/4,y+len/2,len/2);
}

}
