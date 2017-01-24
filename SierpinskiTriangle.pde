public void setup()
{
	size(600, 600);
}
public void draw()
{
	background(255);
	sierpinski(200, 200, 200);
	//triangle(100, 100, 200, 100, 150, 50);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	//int a = (int)(Math.random()*100);
	if(len <= 20)
	{
		fill(0, 0, 255);
		triangle(x, y, len, len, len, len);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}




/*If  len  is less than or equal to 20 (or some variable) ◾Draw a triangle with the left corner at ( x , y ) and a base and height equal to  len .

◦else ◾recursively call the  sierpinksi  function to draw a triangle with the left corner at ( x , y ) and a base and height equal to  len/2 .
◾Again, call the  sierpinksi  function a second time to draw another triangle a distance of  len/2  to the right of the first triangle.
◾Now, call the  sierpinksi  function a third time to draw a triangle a distance of  len/4  to the right and  len/2  up from the first triangle. This triangle should "sit on top" of the first two.
*/




/*Once you have the  sierpinksi  function completed, call it once in  draw()  to start the process. 
You can change the number and size of the triangles by changing the limit in the  if  from 20 to some variable 
and adjusting the value of the variable. One way to make the program interactive is to use  mouseDragged  to change the limit.*/