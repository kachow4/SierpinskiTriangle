Triangle bob = new Triangle();
public void setup()
{
	size(600, 600);
}
public void draw()
{
	background(255);
	bob.sierpinski(0, 600, mouseX);
	frameRate(5);
	//triangle(100, 100, 200, 100, 150, 50);

}
public void mouseDragged()//optional
{
	/*if(mouseX < 100){
	bob.sierpinski(0, 600, mouseX);
	}*/
}
/*
public void sierpinski(int x, int y, int len) 
{
	int a = (int)((Math.random()*255)+100);
	if(len <= 200)
	{
		//noStroke();
		stroke(185, 185, 185);
		fill(a, a, a, (int)((Math.random()*300)+150));
		triangle(x, y, x + len, y, x + len/2, y - len);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}
*/
class Triangle{
	private int a, b, length;
	public Triangle(){
		a = 0;
		b = 0;
		length = 0;
	}

	public void sierpinski(int x, int y, int len){
		int a = (int)((Math.random()*255)+100);
		if(len <= 200){
			//noStroke();
			stroke(185, 185, 185);
			fill(a, a, a, (int)((Math.random()*300)+150));
			triangle(x, y, x + len, y, x + len/2, y - len);
		}
		else{
			sierpinski(x, y, len/2);
			sierpinski(x + len/2, y, len/2);
			sierpinski(x + len/4, y - len/2, len/2);
		}
	}
}

/*
public void KeyPressed(){
	if(keyCode == UP){
	}
	else if(keyCode == DOWN){
	}
}
*/


/*If  len  is less than or equal to 20 (or some variable) ◾Draw a triangle with the left corner at ( x , y ) and a base and height equal to  len .

◦else ◾recursively call the  sierpinksi  function to draw a triangle with the left corner at ( x , y ) and a base and height equal to  len/2 .
◾Again, call the  sierpinksi  function a second time to draw another triangle a distance of  len/2  to the right of the first triangle.
◾Now, call the  sierpinksi  function a third time to draw a triangle a distance of  len/4  to the right and  len/2  up from the first triangle. This triangle should "sit on top" of the first two.
*/




/*Once you have the  sierpinksi  function completed, call it once in  draw()  to start the process. 
You can change the number and size of the triangles by changing the limit in the  if  from 20 to some variable 
and adjusting the value of the variable. One way to make the program interactive is to use  mouseDragged  to change the limit.*/