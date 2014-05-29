// a joke about mathematics
float pad = 10;

int w = 640,
    h = 100,
    fg = 0,
    bg = 255,
    fontSize = 32;

void setup() {
  size(w, h);

  fill(fg);
  background(bg);

  translate(w/2, h/2);

  textSize(fontSize);
  textAlign(CENTER, CENTER);

  String s = mandelbrot(1);
  text(s, 0, 0);
}

String mandelbrot(int n) {
  String s = "B.";
  for (int i = 0; i < n; i++) {
    s = "Benoit " + s + " Mandelbrot";
  }
  return s;
}
