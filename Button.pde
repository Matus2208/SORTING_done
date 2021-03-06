class Button {

  int x1;    //Button's left side x value
  int y1;    //Button's top y value
  int x2;    //Button's right side x value
  int y2;    //Button's bottom y value

  //Constructor
  Button (int X1, int X2, int Y1, int Y2) {
    x1 = X1;
    x2 = X2;
    y1 = Y1;
    y2 = Y2;
  }

  //This function checks if the mouse is clicked inside the button
  boolean clicked() {
    if (mousePressed & mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
      return true;
    } else {
      return false;
    }
  }
}
