Die die;

void setup()
{
	size(1000, 1000);
	die = new Die(20,20);
	noLoop();
}



void draw() {
	background(255);
	die.show();


}



void mousePressed() {
	redraw();
}







class Die {
	int xpos;
	int ypos;
	
	Die(int x, int y) {
		
		xpos = x;
		ypos = y;
	}



	void roll() {


	}


	void show() {
		int total = 0;
		for(int j = 0; j < 10; j++){
			for(int i = 0; i < 10; i++ ){
				fill(255);
				rect(xpos+(i*100), ypos+(j*100), 50, 50, 10);
				int dots = (int)(random(1,7));

					switch(dots) {
						case 1:
						 
						fill(0);
						ellipse(xpos+(i*100)+25, ypos +(j*100)+25, 10, 10);
						total += 1;
						

						 
						break;

						case 2:
						 
						fill(0);
						ellipse(xpos+(i*100)+10, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+40, ypos +(j*100)+40, 10, 10);
						total += 2;
						
						 
						break;

						case 3:
						 
						fill(0);
						ellipse(xpos+(i*100)+10, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+40, ypos +(j*100)+40, 10, 10);
						ellipse(xpos+(i*100)+25, ypos +(j*100)+25, 10, 10);
						total += 3;
						
						 
						break;

						case 4:
						 
						fill(0);
						ellipse(xpos+(i*100)+10, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+40, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+10, ypos +(j*100)+40, 10, 10);
						ellipse(xpos+(i*100)+40, ypos +(j*100)+40, 10, 10);
						total += 4;
						 
						break;

						case 5:
						 
						fill(0);
						ellipse(xpos+(i*100)+10, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+40, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+10, ypos +(j*100)+40, 10, 10);
						ellipse(xpos+(i*100)+40, ypos +(j*100)+40, 10, 10);
						ellipse(xpos+(i*100)+25, ypos +(j*100)+25, 10, 10);
						total += 5;
						 
						break;

						case 6:
						 
						fill(0);
						ellipse(xpos+(i*100)+15, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+15, ypos +(j*100)+25, 10, 10);
						ellipse(xpos+(i*100)+15, ypos +(j*100)+40, 10, 10);
						ellipse(xpos+(i*100)+35, ypos +(j*100)+10, 10, 10);
						ellipse(xpos+(i*100)+35, ypos +(j*100)+25, 10, 10);
						ellipse(xpos+(i*100)+35, ypos +(j*100)+40, 10, 10);
						total += 6;
						 
						break;
					}
				}

		}
		System.out.println(total);
		textSize(18);
		textAlign(CENTER);
		text("Total:", 500, 490);
		text(total, 500, 510);
		
	}

}
