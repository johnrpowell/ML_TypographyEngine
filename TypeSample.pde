class TypeSample {
  
  PFont[] fontList;
  PFont roboto, merriweather, garamond, jungka;
  String[] fL = PFont.list();
  int[] fontIndices = new int[4];
  
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
  
  void renderText(String[] s, int f, int x, int y, int[] z) {
    int fX = x;
    int fY = y;
    int[] fZ = z;
    int fF = f;
    String[] fS = s;
    
    fill(0);
    
    for (int i = 0; i < fS.length; i++) {
      textFont(createFont(fL[fontIndices[fF]], fZ[i], true));
      textSize(fZ[i]);
      text(fS[i], fX, fY + i*20);
    }
  }
  
  void setupFonts() {
    roboto = createFont(fL[fontIndices[0]], 100, true);
    merriweather = createFont(fL[fontIndices[1]], 100, true);
    garamond = createFont(fL[fontIndices[2]], 100, true);
    jungka = createFont(fL[fontIndices[3]], 100, true);
  }
  
}