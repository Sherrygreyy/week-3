int Width = 1000;
int Height = 1000;
float lineSize = 0;
float colSize = 0;


color[] colors ={#DBD9D9,#A5A5A5,#676767,#313131};

void mondrianStyle() {
  frameRate(4);
  for(int line = 0; line <Height; line += lineSize+10) {
    lineSize = random(100,Width/5*4);
    for(int col = 0; col < Width; col += colSize +10) {
      colSize = random(100, Height/9*10); 

      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);
      //Drawing color blocks

      strokeWeight(11);
      stroke(#000000);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, Width, y);
      line(x, line, x, y);
    }
  }
}

void setup() {
  size(1000,1000);
  background(#ffffff);
  mondrianStyle(); 
}

void draw() {
  if (mousePressed){
        mondrianStyle();
        
  }
}
