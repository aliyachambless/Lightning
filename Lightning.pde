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
				append(startX,startX[i]);
				append(startY,startY[i]);
				append(endX,endX[i]);
				append(endY,endY[i]);
			}
		}
	}
}
void mousePressed()
{

}

