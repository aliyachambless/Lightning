ArrayList<Integer> startX = new ArrayList<Integer>();
ArrayList<Integer> startY = new ArrayList<Integer>();
ArrayList<Integer> endX = new ArrayList<Integer>();
ArrayList<Integer> endY = new ArrayList<Integer>();


//int[] startX = {0};
// int[] startY = {200};
// int[] endX = {0};
// int[] endY = {200};
// int holdX = 0;
// int holdY = 0;
void setup()
{
	startX.add(0);
	startY.add(200);
	endX.add(0);
	endY.add(200);
	size(400,400);
	background(0);
	strokeWeight(5);
}
void draw()
{
	while(endX.get(0) < 400){
		for(int i = 0; i < endX.size(); i ++){
			stroke((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*255));
			endX.set(i,startX.get(i) + (int)(Math.random()*15));
			endY.set(i,startY.get(i) + (int)(Math.random()*30 - 15));
			line(startX.get(i),startY.get(i),endX.get(i),endY.get(i));
			startX.set(i,endX.get(i));
			startY.set(i,endY.get(i));
			if(endX.get(i)%13 == 0){
				startX.add(endX.get(i));
				startY.add(endY.get(i));
				endX.add(endX.get(i));
				endY.add(endY.get(i));
				System.out.println("if true" + i);
			}
		}
	}
}
void mousePressed()
{
	background(0);
	startX.clear();
	startY.clear();
	endX.clear();
	endY.clear();
	startX.add(0);
	startY.add(200);
	endX.add(0);
	endY.add(200);
}

