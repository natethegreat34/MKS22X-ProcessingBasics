int MAX_VALUE = 100;
int MIN_VALUE = -100;
Visualizer v;

/*You are simulating a visualizer of multiple values
 You need to create a display method first. 
 Then you can make a method that changes the values each time the update is called. 
 */
class Visualizer {
  float x, y;
  float [] values;
  float [] speeds;
  Visualizer(float x, float y) {
    this.x = x;
    this.y = y;
    values = new float[10];
    speeds = new float[10];
    for (int i = 0; i < values.length; i++) {
      values[i] = random(-99, 99);
      speeds[i] = random(2);
    }
  }

  void display() {
    //draw the bars equally spaced inside this box. 
    //You can assume 10, but it would be even better 
    //if you could modify it to be larger increments.
    fill(255);
    rect(x, y, 400, 200);
    //This is a 200x400 box.
    //The width of the visualizer is 400! This rect is the border

    //the line is the 0 y-value, the top is 100, the bottom is -100
    line(x, y+100, x+400, y+100);

    //You need to use a loop. You need to make the HEIGHT of the bars 
    //the values in the array.
    //Negative values are red, and go below the line.
    //Positive values are green and go above the line.

    //???WRITE THIS METHOD!!!
    //THESE ARE WRONG: They just illustrate how they could look
  int z = 0;
  int [] s = new int [] {1,2,3,-4,5,6,7,8, -1, 9, 7, -1};
  for (int i = 0; i < s.length; i ++){
    if (s[i] < 0){
    fill (255,0,0);
    }
    else{
      fill(0,255,0);
    }
    rect(x + z, 100 + y, 20, s[i] * -10);
    z = z + 20;
  }


    //Width of the visualizer is 400!

  
  }
  void update() {
    //???WRITE THIS METHOD!!!
    for (int i = 0; i < values.length; i++) {
      values[i] += speeds[i];
      //??? keep them values between max/min value

      //??? reverse the speeds so they oscillate up/down when they reach max/min

      
    }
  }
}
public void settings() {
  size(600, 500);
}
void setup() {
  v = new Visualizer(20, 20);
}
void draw() {
  background(255);
  v.display();
  v.update();
}
