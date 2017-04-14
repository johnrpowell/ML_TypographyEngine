TypeSample tS = new TypeSample();
String[] text = { "Headline", "Subhead", "This is some body copy." };
int[] sizes = { 30, 18, 12 };

void setup() {
  size(800, 600);
  smooth(2);
  tS.setupFonts();
  noLoop();
}

void draw() {
  for (int i = 0; i < 4; i++) {
    sizes = rollDice();
    tS.renderText(text, i, ((width/4)*i)+10, 200, sizes);
  }
}

int[] rollDice() {
  int[] s = new int[3];
  s[0] = (int) random(28, 60);
  s[1] = (int) random(16, 26);
  s[2] = (int) random(8, 16);
  
  return s;
}