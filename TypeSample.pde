class TypeSample {
  
  PFont[] fontList;
  PFont roboto, merriweather, garamond, jungka;
  String[] fL = PFont.list();
  int[] fontIndices = new int[4];
  String[] allCopy = new String[3];
  int[] allSizes = new int[3];
  int[] allLeading = new int[3];
  
  TypeSample() {
    
    for (int i = 0; i < fL.length; i++) {
      if (fL[i].equals("Roboto-Regular")) {
        fontIndices[0] = i;
      } else if (fL[i].equals("Merriweather")) {
        fontIndices[1] = i;
      } else if (fL[i].equals("Garamond")) {
        fontIndices[2] = i;
      } else if (fL[i].equals("Jungka-Regular")) {
        fontIndices[3] = i;
      }
    }
  }
  
  void renderText(int f, int x, int y) {
    int posX = x;
    int posY = y;
    int font = f;
    int textFrameW = 200;
    int textFrameH = 200;
    fill(0);
    
    for (int i = 0; i < allCopy.length; i++) {
      
      font = (int) random(3);
      
      textFont(createFont(fL[fontIndices[font]], allSizes[i], true));
      textSize(allSizes[i]);
      
      if (i == 2) text(allCopy[i], posX, posY + i*20, textFrameW, textFrameH);
      else text(allCopy[i], posX, posY + i*20);
      
    }
  }
  
  void setCopy(String t, String s, String b) {
    allCopy[0] = t;    // set title
    allCopy[1] = s;    // set subtitle
    allCopy[2] = b;    // set body copy
  }
  
  void setSizes(int sT, int sS, int sB) {
    allSizes[0] = sT;    // set title size
    allSizes[1] = sS;    // set subtitle size
    allSizes[2] = sB;    // set body copy size
  }
  
  void setLeading(int lT, int lS, int lB) {
    allLeading[0] = lT;    // set title leading
    allLeading[1] = lS;    // set subtitle leading
    allLeading[2] = lB;    // set body copy leading
  }
  
}