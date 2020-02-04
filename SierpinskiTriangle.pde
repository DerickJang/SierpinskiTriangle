public void setup()
{
	size(700,700);
}
public void draw()
{
	background(0);
	sierpinski(25,675,650);
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=25)
	{
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}