// a joke about mathematics
float pad = 10;

int w = 1200,
    h = 600,
    fg = 0,
    bg = 255,
    fontSize = 14,
    n = 1;

String m, first;
float offset;

void setup() {
  size(w, h);

  fill(fg);

  textSize(fontSize);
  textAlign(LEFT, CENTER);

  mandelPlot();
}

void draw() { }

void mouseClicked() {
  n += 1;
  mandelPlot();
}

void mandelPlot() {
  background(bg);

  translate(w/2, h/2);

  m = mandelbrot(n);
  // // Keep 'B.' centered
  // first = nfirst(n);
  // offset = textWidth(first) + textWidth(middle())/2;

  // Center whole name
  offset = textWidth(m)/2;
  text(m, -offset, 0);

  saveFrame("bbm" + nf(n, 2) + ".gif");
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
