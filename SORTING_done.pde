PImage home_header;
PImage home_page;
PImage about_header;
PImage about_page;
PImage games_header;
PImage games_page;
PImage support_header;
PImage support_page;
PImage contact_header;
PImage contact_page;
PImage ae_page;
PImage ea_page;
PImage za_page;

Page home;
Page about;
Page games;
Page support;
Page contact;
Page ae;
Page ea;
Page za;

Button homeButton;
Button aboutButton;
Button gamesButton;
Button supportButton;
Button contactButton;
Button filterButton1;
Button filterButton2;
Button filterButton3;
Button filterButton4;


//Filter Buttons coordinates  fb = filterbutton
int fb1x = 250;
int fb2x = 610;
int fb3x = 970;
int fb4x = 1330;
int fb1x2 = 580;
int fb2x2 = 920;
int fb3x2 = 1290;
int fb4x2 = 1670;
int fby1 = 240;
int fby2 = 280;

//General Buttons coordinates
int buttonX = 40;
int buttonY = 0;
int buttonW = 310;
int buttonH = 110;

float wheelCount;

int pageNumber = 1;

void setup() {
  //size(1920, 540);
  fullScreen();
  home_header = loadImage("home_header.png");
  home_page = loadImage("home_page.png");
  about_header = loadImage("about_header.png");
  about_page = loadImage("about_page.png");
  games_header = loadImage("games_header.png");
  ae_page = loadImage("ae.png");
  ea_page = loadImage("ea.png");
  za_page = loadImage("za.png");

  games_page = loadImage("az.png");
  support_header = loadImage("support_header.png");
  support_page = loadImage("support_page.png");
  contact_header = loadImage("contact_header.png");
  contact_page = loadImage("contact_page.png");


  home = new Page(0, 0, 0, 0, home_header, home_page);
  about = new Page(0, 0, 0, 0, about_header, about_page);
  games = new Page(0, 0, 0, 0, games_header, games_page);
  support = new Page(0, 0, 0, 0, support_header, support_page);
  contact = new Page(0, 0, 0, 0, contact_header, contact_page);
  ae = new Page(0, 0, 0, 0, games_header, ae_page);
  ea = new Page(0, 0, 0, 0, games_header, ea_page);
  za = new Page(0, 0, 0, 0, games_header, za_page);

  homeButton = new Button(buttonX, buttonX+buttonW, buttonY, buttonH);
  aboutButton = new Button(buttonX+buttonW, buttonX+2*buttonW, buttonY, buttonH);
  gamesButton = new Button(buttonX+2*buttonW, buttonX+3*buttonW, buttonY, buttonH);
  supportButton = new Button(buttonX+3*buttonW, buttonX+4*buttonW, buttonY, buttonH);
  contactButton = new Button(buttonX+4*buttonW, buttonX+5*buttonW, buttonY, buttonH);
  filterButton1 = new Button(fb1x, fb1x2, fby1, fby2);
  filterButton2 = new Button(fb2x, fb2x2, fby1, fby2);
  filterButton3 = new Button(fb3x, fb3x2, fby1, fby2);
  filterButton4 = new Button(fb4x, fb4x2, fby1, fby2);
}

void draw() {
  // Checking for button clicks and reseting pages
  if (homeButton.clicked()) {
    pageNumber = 1;
    home.pageY = 0;
  }
  if (aboutButton.clicked()) {
    pageNumber = 2;
    about.pageY = 0;
  }
  if (gamesButton.clicked()) {
    pageNumber = 3;
    games.pageY = 0;
  }
  if (supportButton.clicked()) {
    pageNumber = 4;
    support.pageY = 0;
  }
  if (contactButton.clicked()) {
    pageNumber = 5;
    contact.pageY = 0;
  }
  if (gamesButton.clicked()) {
    pageNumber = 3;
    games.pageY = 0;
  }
  if (pageNumber == 3 || pageNumber == 6 || pageNumber == 7 || pageNumber == 8 || pageNumber == 9) {
      if (filterButton1.clicked()) {
        pageNumber = 6;
        games.pageY = 0;
    }
      if (filterButton2.clicked()) {
        pageNumber = 7;
        za.pageY = 0;
    }
      if (filterButton3.clicked()) {
        pageNumber = 8;
        ae.pageY = 0;
    }
      if (filterButton4.clicked()) {
        pageNumber = 9;
        ea.pageY = 0;
    }
  }



  // Displaying the corresponding page
  switch(pageNumber) {
  case 1: 
    home.show();
    home.scroll(wheelCount);
    break;
  case 2: 
    about.show();
    about.scroll(wheelCount);
    break;
  case 3:
    games.show();
    games.scroll(wheelCount);
    break;
  case 4:
    support.show();
    support.scroll(wheelCount);
    break;
  case 5:
    contact.show();
    contact.scroll(wheelCount);
    break;
  case 6:
    games.show();
    games.scroll(wheelCount);
    break;
  case 7:
    za.show();
    za.scroll(wheelCount);
    break;
  case 8:
    ae.show();
    ae.scroll(wheelCount);
    break;
  case 9:
    ea.show();
    ea.scroll(wheelCount);
    break;
  }
  wheelCount = 0;
}


// Checking for mouse wheel event

void mouseWheel(MouseEvent event) { //me is class, event is object
  wheelCount = event.getCount();
}
