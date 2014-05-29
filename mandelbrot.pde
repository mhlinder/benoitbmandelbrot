// a joke about mathematics
float pad = 10;

int w = 640,
    h = 100,
    fg = 0,
    bg = 255,
    fontSize = 32,
    n = 1;

String m;

void setup() {
  size(w, h);

  fill(fg);
  background(bg);

  textSize(fontSize);
  textAlign(CENTER, CENTER);

  translate(w/2, h/2);
  m = mandelbrot(1);
  text(m, 0, 0);

  frameRate(1);
}

void draw() {
  background(bg);

  translate(w/2, h/2);

  m = mandelbrot(n);
  text(m, 0, 0);
  n += 1;
}

String mandelbrot(int n) {
  String m = "B.";
  for (int i = 0; i < n; i++) {
    m = "Benoit " + m + " Mandelbrot";
  }
  return m;
}
