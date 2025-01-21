import java.util.ArrayList;
import java.util.Collections;
import java.io.IOException;
import controlP5.*;

// set the default number
int numRecipes = 5; 

// add recipes and recipe lists
String[] recipes = {
  "Pasta Carbonara",
  "Mughlai Chicken Handi",
  "Guo Bao Rou",
  "Irish Beef Stew",
  "Green Onion Pancake",
  "Chikuzenni",
  "Caesar Salad",
  "Birria Tacos",
  "Pistachio Honey Baklava Rolls",
  "Feta Salad",
  "Chicken Gnocchi Soup"
};
String[] recipeLinks = {
  "https://www.youtube.com/watch?v=D_2DBLAt57c&t=15s",
  "https://www.youtube.com/watch?v=u66pG73UroY",
  "https://www.youtube.com/watch?v=TKG0RAXKEoI",
  "https://www.youtube.com/watch?v=8p-f9DcVkgE&t=109s",
  "https://www.youtube.com/watch?v=oa-W3d0IKS8",
  "https://www.youtube.com/watch?v=YgYpBzdQ80k",
  "https://www.youtube.com/watch?v=a4Z2x0sPq3A",
  "https://www.youtube.com/watch?v=dgx93-0yZgQ",
  "https://www.youtube.com/watch?v=ffUjqjCyHLI",
  "https://www.youtube.com/watch?v=JsomSQtJhpI",
  "https://www.youtube.com/watch?v=DwJTYjWdCHw"
};

String[] breakfastRecipes = {
  "Scrambled Eggs with Avocado",
  "Blueberry Pancakes",
  "Greek Yogurt Parfait",
  "Vegetable Omelette",
  "Banana Nut Muffins",
  "French Toast",
  "Smoothie Bowl",
  "Eggs Benedict",
  "Breakfast Burrito",
  "Oatmeal with Berries",
  "Avocado Toast"
};
String[] breakfastRecipeLinks = {
  "https://www.youtube.com/watch?v=CetVHOhq5Bo",
  "https://www.youtube.com/watch?v=PYwzW6CCxJU",
  "https://www.youtube.com/watch?v=5zm9OyyCz7I",
  "https://www.youtube.com/watch?v=KJV6Z4jYG4s",
  "https://www.youtube.com/watch?v=BXpbFHamhK8",
  "https://www.youtube.com/watch?v=r1ZLSbQ0r0I",
  "https://www.youtube.com/watch?v=zqKUa_kBOvU",
  "https://www.youtube.com/watch?v=gBJjRYk0yC0",
  "https://www.youtube.com/watch?v=5R_3iuNNUk0",
  "https://www.youtube.com/watch?v=QxdgN_sZxaU",
  "https://www.youtube.com/watch?v=Wmo1NoYEFPw"
};

String[] lunchRecipes = {
  "Chicken Caesar Salad",
  "Caprese Sandwich",
  "Quinoa Salad with Chickpeas",
  "Vegetable Wrap",
  "Mushroom Risotto",
  "BLT Sandwich",
  "Shrimp Tacos",
  "Caesar Pasta Salad",
  "Spinach and Feta Quesadilla",
  "Cobb Salad",
  "Margherita Pizza"
};
String[] lunchRecipeLinks = {
  "https://www.youtube.com/watch?v=uyB_GZNpCQE",
  "https://www.youtube.com/watch?v=hFVsK2fZq2w",
  "https://www.youtube.com/watch?v=mPaJFxzwi-U",
  "https://www.youtube.com/watch?v=5r3vjmrXXmI",
  "https://www.youtube.com/watch?v=ju9H1RlYNxk",
  "https://www.youtube.com/watch?v=-hePdX-n8w0",
  "https://www.youtube.com/watch?v=ij4XIP1TUOA",
  "https://www.youtube.com/watch?v=u7mhxWKZovc",
  "https://www.youtube.com/watch?v=6ViTp3HDQrQ",
  "https://www.youtube.com/watch?v=4ZQhZADjFOk",
  "https://www.youtube.com/watch?v=vcfNpDtVqOw"
};
String[] dinnerRecipes = {
  "Grilled Salmon with Lemon",
  "Chicken Alfredo Pasta",
  "Beef Stir-Fry",
  "Vegetarian Lasagna",
  "Teriyaki Chicken Bowl",
  "Salmon Teriyaki",
  "Eggplant Parmesan",
  "Mushroom and Spinach Stuffed Chicken",
  "Spaghetti Bolognese",
  "Honey Glazed Carrots",
  "Vegetable Curry"
};
String[] dinnerRecipeLinks = {
  "https://www.youtube.com/watch?v=j7BkpjD-HZ0",
  "https://www.youtube.com/watch?v=F7CU0qBdj04",
  "https://www.youtube.com/watch?v=NUmy4B_AY2c",
  "https://www.youtube.com/watch?v=nVY6Ze5VYsk",
  "https://www.youtube.com/watch?v=e4gNIINYko0",
  "https://www.youtube.com/watch?v=hsoMyZt-ebk",
  "https://www.youtube.com/watch?v=rLZsKI8dcvo",
  "https://www.youtube.com/watch?v=HR8xCOXPw2k",
  "https://www.youtube.com/watch?v=yShBC-G-jrQ",
  "https://www.youtube.com/watch?v=tVGYFNPysn8",
  "https://www.youtube.com/watch?v=KoWH5rw7s6s" 
};
  
String[] halalRecipes = {
  "Chicken Biryani",
  "Hummus and Pita Bread",
  "Lamb Kebabs",
  "Falafel Wrap",
  "Shawarma",
  "Chicken Satay with Peanut Sauce",
  "Chicken Kofta",
  "Turkish Lentil Soup",
  "Palak Paneer",
  "Moroccan Chicken Tagine",
  "Grilled Fish Tacos",
  "Bamia"
};
String[] halalRecipeLinks = {
  "https://www.youtube.com/watch?v=6XlMguO9r-M",
  "https://www.youtube.com/watch?v=1fiFBTW6vSc",
  "https://www.youtube.com/watch?v=vuEKuuV73zk",
  "https://www.youtube.com/watch?v=vpBMrRXqGUI",
  "https://www.youtube.com/watch?v=lrb_cJBPzLM",
  "https://www.youtube.com/watch?v=D7spOPE9wc0",
  "https://www.youtube.com/watch?v=P04Zi6YuPfM",
  "https://www.youtube.com/watch?v=Zgq3sYyVAQI",
  "https://www.youtube.com/watch?v=a5sr50WL1DY",
  "https://www.youtube.com/watch?v=R8fyTivC6lM",
  "https://www.youtube.com/watch?v=5SM8ezGD110",
  "https://www.youtube.com/watch?v=-Sv_2qO6N_I"
};
String[] kosherRecipes = {
  "Matzo Ball Soup",
  "Latkes with Applesauce",
  "Challah Bread",
  "Brisket",
  "Rugelach",
  "Gefilte Fish",
  "Chicken Schnitzel",
  "Shakshuka",
  "Charoset",
  "Tzimmes",
  "Sephardic Charcuterie",
  "Moroccan Chicken with Preserved Lemons"
};
String[] kosherRecipeLinks = {
  "https://www.youtube.com/watch?v=I3IO-lwaHU0",
  "https://www.youtube.com/watch?v=0zp6whgt8Lw",
  "https://www.youtube.com/watch?v=chKilPK2w94",
  "https://www.youtube.com/watch?v=5n7-EZYaK-w",
  "https://www.youtube.com/watch?v=LnNyBkYwGAk",
  "https://www.youtube.com/watch?v=mLyB8OBzCp0",
  "https://www.youtube.com/watch?v=OAztjRZvd_U",
  "https://www.youtube.com/watch?v=m5Kn9WmOCrw",
  "https://www.youtube.com/watch?v=d1tVYd5aF0M",
  "https://www.youtube.com/watch?v=Hh0IAFGMhVk",
  "https://www.youtube.com/watch?v=Jwo0LL6fZVM",
  "https://www.youtube.com/watch?v=rkK3x2MocNU"
};

String[] sikhismRecipes = {
  "Langar Dal",
  "Sarson Da Saag",
  "Aloo Gobi",
  "Pinni",
  "Kada Prasad",
  "Samosa",
  "Kesar Peda",
  "Pakoras",
  "Shahi Paneer",
  "Tandoori Fish",
  "Papdi Chaat",
  "Gajar Ka Halwa"
};
String[] sikhismRecipeLinks = {
  "https://www.youtube.com/watch?v=4ElMy_9jaEY",
  "https://www.youtube.com/watch?v=hI-in8nsU_Q",
  "https://www.youtube.com/watch?v=JihdOvkxQC8",
  "https://www.youtube.com/watch?v=JPGZMUikvYQ",
  "https://www.youtube.com/watch?v=3lxuPRzkdGQ",
  "https://www.youtube.com/watch?v=3OZn-iCGf5s",
  "https://www.youtube.com/watch?v=-HvSaUkWa7E",
  "https://www.youtube.com/watch?v=AVAc5CFQZIA",
  "https://www.youtube.com/watch?v=inVClSNYBQ4",
  "https://www.youtube.com/watch?v=0fkp586LsVc",
  "https://www.youtube.com/watch?v=6l7MecdJjDs",
  "https://www.youtube.com/watch?v=DLT7hC3oQFg"
};

String[] currentRecipes;
String[] currentRecipeLinks;
ControlP5 cp5;

// set images
PImage backgroundImage;
PImage bannerImage;

void setup() {
  size(500, 800);
  textAlign(CENTER, CENTER);
  textSize(16);

  // set font for filter buttons
  PFont font = createFont("Arial", 12);
  
  // set parameters for images
  backgroundImage = loadImage("background.jpg");
  backgroundImage.resize(width, height);
  bannerImage = loadImage("banner.jpg");
  bannerImage.resize(width, 70);
  
  currentRecipes = recipes;
  currentRecipeLinks = recipeLinks;
  
  // add filter buttons
  cp5 = new ControlP5(this);
  cp5.setFont(font);
  cp5.setColorCaptionLabel(#000000);

  cp5.addButton("breakfastButton")
     .setValue(0)
     .setPosition(170, 150)
     .setSize(80, 30)
     .setColorBackground(#F3F3DE)
     .setColorActive(#DFDB68)
     .setColorForeground(#FFF86C)
     .setCaptionLabel("Breakfast");
     
  cp5.addButton("lunchButton")
     .setValue(0)
     .setPosition(260, 150)
     .setSize(80, 30)
     .setColorBackground(#F3F3DE)
     .setColorActive(#DFDB68)
     .setColorForeground(#FFF86C)
     .setLabel("Lunch");
     
  cp5.addButton("dinnerButton")
     .setValue(0)
     .setPosition(350, 150)
     .setSize(80, 30)
     .setColorBackground(#F3F3DE)
     .setColorActive(#DFDB68)
     .setColorForeground(#FFF86C)
     .setLabel("Dinner");    
     
  cp5.addButton("halalButton")
     .setValue(0)
     .setPosition(180, 195)
     .setSize(60, 30)
     .setColorBackground(#F3F3DE)
     .setColorActive(#DFDB68)
     .setColorForeground(#FFF86C)
     .setLabel("Halal");
     
  cp5.addButton("kosherButton")
     .setValue(0)
     .setPosition(270, 195)
     .setSize(60, 30)
     .setColorBackground(#F3F3DE)
     .setColorActive(#DFDB68)
     .setColorForeground(#FFF86C)
     .setLabel("Kosher");
     
  cp5.addButton("sikhismButton")
     .setValue(0)
     .setPosition(360, 195)
     .setSize(60, 30)
     .setColorBackground(#F3F3DE)
     .setColorActive(#DFDB68)
     .setColorForeground(#FFF86C)
     .setLabel("Sikhism");
}

void draw() {
    background(255);
    fill(0);
    textSize(20);
    image(backgroundImage, 0, 0);
    image(bannerImage, 0, 0);
    text("Number of Recipes: ", 250, 90);
    textSize(24);
    text(numRecipes, 250, 120);
    textSize(16);
    
    // draw buttons and texts for number of recipes part
    drawMinusButton(125, 120, 30);
    drawPlusButton(375, 120, 30);
    drawRandomButton(250, 255, 30);
    fill(#7D5C23);
    text("Recipe Types:", 110, 165);
    fill(#7D5C23);
    text("Dietary Restrictions:", 115, 210);
    
    displayRecipeList();
  }
// draw "buttons"
void drawButton(float x, float y, String label, int buttonWidth, int buttonHeight, int buttonColor) {
  fill(buttonColor);
  rectMode(CENTER);
  rect(x, y, buttonWidth, buttonHeight, 10);
  fill(0);
  text(label, x, y);
  noStroke();
}

void drawMinusButton(float x, float y, int buttonHeight) {
  drawRoundButton(x, y, "-", 30, 30, color(#FFF0AF));
}
void drawPlusButton(float x, float y, int buttonHeight) {
  drawRoundButton(x, y, "+", 30, 30, color(#FFF0AF));
}
// set round buttons
void drawRoundButton(float x, float y, String label, int buttonWidth, int buttonHeight, int buttonColor) {
  fill(buttonColor);
  ellipse(x, y, buttonWidth, buttonHeight);
  fill(0);
  textSize(16);
  text(label, x, y);
}

void drawRandomButton(float x, float y, int buttonHeight) {
  drawButton(x, y, "Random", 80, 30, color(#F0E2AA));
}

// set the display of recipe lists
void displayRecipeList() {
  int buttonWidth = 300;
  int buttonHeight = 50;
  float startX = 250;
  float startY = 300;

  for (int i = 0; i < numRecipes; i++) {
    float y = startY + i * (buttonHeight);
    drawRecipeButton(startX, y, currentRecipes[i], currentRecipeLinks[i]);
  }
}

// draw recipe buttons
void drawRecipeButton(float x, float y, String label, String link) {
  drawButton(x, y, label, 300, 30, color(#E3E8CD));
  recipeLinks[numRecipes] = link;
}

// set the coordinate for mouse clicking
void mouseClicked() {
  // set the range of "-"
  if (dist(mouseX, mouseY, 125, 120) < 15) {
    numRecipes = max(1, numRecipes - 1);
  }
  // set the range of "+"
  if (dist(mouseX, mouseY, 375, 120) < 15) {
    numRecipes = min(10, numRecipes + 1);
  }
  // set the range of "Random"
  if (mouseX > 210 && mouseX < 290 && mouseY > 240 && mouseY < 270) {
    shuffleArrays(currentRecipes, currentRecipeLinks);
  }

  // Check if the mouse is over any recipe button
  int buttonWidth = 300;
  int buttonHeight = 50;
  float startX = 250;
  float startY = 300;

  for (int i = 0; i < numRecipes; i++) {
    float y = startY + i * (buttonHeight);
    if (mouseX > startX && mouseX < startX + buttonWidth && mouseY > y - buttonHeight / 2 && mouseY < y + buttonHeight / 2) {
      openURL(currentRecipeLinks[i]);
    }
  }
  // Check if clicking on filter buttons
  if (isInsideButton(mouseX, mouseY, 170, 150, 80, 30)) {
  selectMealButton("breakfastButton");
  currentRecipes = breakfastRecipes;
  currentRecipeLinks = breakfastRecipeLinks;
  displayRecipeList();
  } else if (isInsideButton(mouseX, mouseY, 260, 150, 80, 30)) {
  selectMealButton("lunchButton");
  currentRecipes = lunchRecipes;
  currentRecipeLinks = lunchRecipeLinks;
  displayRecipeList();
  } else if (isInsideButton(mouseX, mouseY, 350, 150, 80, 30)) {
  selectMealButton("dinnerButton");
  currentRecipes = dinnerRecipes;
  currentRecipeLinks = dinnerRecipeLinks;
  displayRecipeList();
  } else if (isInsideButton(mouseX, mouseY, 180, 195, 60, 30)) {
  selectMealButton("halalButton");
  currentRecipes = halalRecipes;
  currentRecipeLinks = halalRecipeLinks;
  displayRecipeList();
  } else if (isInsideButton(mouseX, mouseY, 270, 195, 60, 30)) {
  selectMealButton("kosherButton");
  currentRecipes = kosherRecipes;
  currentRecipeLinks = kosherRecipeLinks;
  displayRecipeList();
  } else if (isInsideButton(mouseX, mouseY, 360, 195, 60, 30)) {
  selectMealButton("sikhismButton");
  currentRecipes = sikhismRecipes;
  currentRecipeLinks = sikhismRecipeLinks;
  displayRecipeList();
  }
  redraw();
}

// Check if mouse is inside buttons
boolean isInsideButton(float mouseX, float mouseY, float buttonX, float buttonY, float buttonWidth, float buttonHeight) {
  return mouseX > buttonX && mouseX < buttonX + buttonWidth &&
         mouseY > buttonY && mouseY < buttonY + buttonHeight;
}

// reset buttons
void selectMealButton(String buttonId) {
  resetMealButtons();
  cp5.getController(buttonId).setColorBackground(color(#EFE291));
}

void resetMealButtons() {
  cp5.getController("breakfastButton").setColorBackground(color(#F3F3DE));
  cp5.getController("lunchButton").setColorBackground(color(#F3F3DE));
  cp5.getController("dinnerButton").setColorBackground(color(#F3F3DE));
  cp5.getController("halalButton").setColorBackground(color(#F3F3DE));
  cp5.getController("kosherButton").setColorBackground(color(#F3F3DE));
  cp5.getController("sikhismButton").setColorBackground(color(#F3F3DE));
}

// set the "Random" function
void shuffleArrays(String[] array1, String[] array2) {
  ArrayList<String> list = new ArrayList<String>();
  for (int i = 0; i < array1.length; i++) {
    list.add(array1[i] + "," + array2[i]);
  }
  Collections.shuffle(list);

  for (int i = 0; i < list.size(); i++) {
    String[] parts = list.get(i).split(",");
    array1[i] = parts[0];
    array2[i] = parts[1];
  }
}

// set the openURL function
void openURL(String url) {
  String[] openCommand;
  String os = System.getProperty("os.name").toLowerCase();

  if (os.contains("win")) {
    openCommand = new String[] {"cmd", "/c", "start", url};
  } else if (os.contains("mac")) {
    openCommand = new String[] {"open", url};
  } else {
    openCommand = new String[] {"xdg-open", url};
  }

  try {
    new ProcessBuilder(openCommand).start();
  } catch (IOException e) {
    e.printStackTrace();
  }
}
