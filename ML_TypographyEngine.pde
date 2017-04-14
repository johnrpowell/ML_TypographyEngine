TypeSample tS = new TypeSample();
String[] text = { "Headline", "Subhead", "Lorizzle ipsum dolizzle get down get down shiznit, stuff adipiscing uhuh ... yih!. Nullam sapien velizzle, fizzle volutpizzle, suscipizzle , gravida vel, go to hizzle. Pellentesque eget tortor. Sure erizzle. Rizzle at dolor dapibus boofron tempizzle rizzle. Maurizzle pellentesque get down get down et turpizzle. Away izzle owned. Pellentesque eleifend rhoncizzle funky fresh. In yo mamma bling bling pizzle dictumst. Boom shackalack dapibizzle. Owned tellus urna, pretizzle eu, mattizzle for sure, eleifend vitae, crackalackin. Phat suscipizzle. Integer semper shizzlin dizzle sizzle bling bling." };
int[] sizes = new int[3];
int[] leading = new int[3];

void setup() {
  size(1200, 400);
  smooth(2);
  noLoop();
  
  tS.setCopy(text[0], text[1], text[2]);
}

void draw() {
  for (int i = 0; i < 4; i++) {
    sizes = randomizeTypeSize();
    tS.setSizes(sizes[0], sizes[1], sizes[2]);
    leading = randomizeLeading();
    tS.setLeading(sizes[0], sizes[1], sizes[2]);
    
    tS.renderText(i, ((width/4)*i)+40, 100);
  }
}

int[] randomizeTypeSize() {
  int[] s = new int[3];
  s[0] = (int) random(28, 60);
  s[1] = (int) random(16, 26);
  s[2] = (int) random(8, 16);
  
  return s;
}

int[] randomizeLeading() {
  int[] l = new int[3];
  l[0] = sizes[0] + (int) random(20);
  l[1] = sizes[1] + (int) random(20);
  l[2] = sizes[2] + (int) random(20);
  
  return l;
}