color rojo = int(random(30,77));
color verde = int(random(100,170));
color blue = int(random(150, 255));
color luz = int(random(180, 240));
color mar =  color(rojo, verde, blue, luz);

void setup(){
 size(600, 700); 
 background(mar);
}

void draw(){
  loadPixels();
  for(int x = 0; x < 300; x++){
    for(int y =0; y < height; y++){
       int formu = x+y*width;
        pixels[formu] = mar;
    }
  }
  
   for(int x = 101; x < 350; x++){
    for(int y =100; y < height; y++){
       int formu = x+y*width;
        pixels[formu] = mar--;
    }
  }
  
   for(int x = 300; x < width; x++){
    for(int y =350; y < 700; y++){
       int formu = x+y*width;
       pixels[formu] = mar;
    }
  }
  updatePixels();
}
