// a joke about mathematics
float pad = 10;

int w = 640,
    h = 100,
    fg = 0,
    bg = 255,
    fontSize = 16,
    n = 1;

String m, first;
float offset;

void setup() {
  size(w, h);

  fill(fg);
  background(bg);

  textSize(fontSize);
  textAlign(LEFT, CENTER);

  translate(w/2, h/2);
  m = mandelbrot(1);
  text(m, 0, 0);
}

void draw() {
  background(bg);

  translate(w/2, h/2);

  m = mandelbrot(n);
  first = nfirst(n);
  offset = textWidth(first) + textWidth(middle())/2;
  text(m, -offset, 0);
}

void mouseClicked() {
  n += 1;
}

String first()  { return "Benoit "; }
String middle() { return "B."; }
String last()   { return " Mandelbrot"; }

String nfirst(int n) {
  String s = "";
  for (int i = 0; i < n; i++) {
    s = s + first();
  }
  return s;
}

String mandelbrot(int n) {
  String m = middle();
  for (int i = 0; i < n; i++) {
    m = first() + m + last();
  }
  return m;
}
