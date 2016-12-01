String sentence = "Hello everyone";
String numberSequence = "1:2:3:4:5:6:7:8:9:0";
String [] words;
String [] numbersString;
float [] numbers;
float totalOfNumbers = 0;
int fontSize = 24;

void settings() {
  size(600, 600);
}

void setup() {
  words = sentence.split(" "); //split on a space

  numbersString = numberSequence.split(":"); //split on colon
  numbers = new float [numbersString.length];

  //convert the Strings to floats
  for (int i = 0; i < numbersString.length; i++) {
    numbers[i] = float(numbersString[i]); //convert a String to a float
  }

  for (int i = 0; i < numbers.length; i++) {
    totalOfNumbers += numbers[i];
  }

  textSize(fontSize);
}

void draw() {
  background(0);
  for (int i = 0; i < words.length; i++) {
    text(words[i], mouseX + 50, mouseY + i * fontSize);
  }
  text(totalOfNumbers, 50, 50);
}


/*

Strings are special variables that hold any character.  They have special characteristics and
things that you can do to them.

For example, you can split a String by any particular character you want, and it will
create an array of Strings.

  String str = "Hello world!";
  String [] catchingString = str.split(" ");

  catchingString has the following array values: ["Hello"]["world!"], because it has
  broken the str variable at the space

Converting a String into a number value has syntax as shown below:

  String str = "5.0";
  int intValue = int(str);     //intValue will be 5
  float floatValue = float(str); //floatValue will be 5.0

*/
