public void setup()
{
size(500, 500);
}
public void draw()
{
background(0);

sierpinski(90, 400,320);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len < 20)
	{
		noStroke();
		triangle(x, y, x+len, y, x + len/2, y-len);
	}

	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}