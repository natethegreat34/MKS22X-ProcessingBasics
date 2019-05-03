public void settings() {
  size(800, 800);
}
void setup () {
  rect(width/4, height/4, width/2, height / 2);
  line(width/4, height/2, 3 * width/4, height/2);
  int [] s = new int [] {1,2,3,4,5,6,7,8};
  for (int i = 0; i < s.length; i ++){
    rect(i, height/2, 1, s[i]);
}
