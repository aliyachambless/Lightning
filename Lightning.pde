int[] startX = {0};
int[] startY = {150};
int[] endX = {0};
int[] endY = {150};
void setup()
{
  size(400,400);
  background(0);
  strokeWeight(5);
}
void draw()
{
	while(endX[0] < 400){
		for(int i = 0; i < startX.length; i ++){
			stroke((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*255));
			endX[i] = startX[i] + (int)(Math.random()*15);
			endY[i] = startY[i] + (int)(Math.random()*30) -15;
			line(startX[i],startY[i],endX[i],endY[i]);
			startX[i] = endX[i];
			startY[i] = endY[i];
			if(endX[i]%2 == 0){
				int[] startX = append(endX,endX[i]);
				int[] startY = append(endY,endY[i]);
				int[] endX = startX;
				int[] endY = startY;
				System.out.println(startX.length);
			}
		}
	}
}
void mousePressed()
{
	startX[0] = 0;
	startY[0] = 150;
	endX[0] = 0;
	endY[0] = 150;

}

