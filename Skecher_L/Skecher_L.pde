void setup() {
  size(800,600);
}

PImage apple;


void l() {
  for (int k = 0; k< apple.width; k = k+1) {
      for (int m = 0; m<apple.height; m = m+1) {
        int pix = apple.pixels[k*apple.height+m];
        int a = pix&0xff000000;   
        if (a == 0) {    
          int r = 0x00;   
          int g = 0x00;
          int b = 0xff;
          g = g<<8;
          r = r<<16;
          int o = 0xff000000;  
          pix = o|r|g|b;
          apple.pixels[k*apple.height+m] = pix;
        }
      }

  }
  
}
