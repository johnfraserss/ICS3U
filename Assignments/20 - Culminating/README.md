**The culminating is worth 20% of your final mark. The remaining 10% will be the exam.**

Task(s)
-------

Using the knowledge you've acquired from this course, create a one-minute game for each of your classmates to play. After your program has been finished and everyone has played each other's games, write a reflection paper about the process.


###Game Instructions

When your program is run, the instructions of your game will show up. Your instruction page will include a button with the label "Start Game". When "Start Game" is clicked, the game will begin.

Here are the criteria for your game:
* Has your name displayed on the instruction page.
* Is designed to be played in full screen mode (use Ctrl+Shift+R to run the program).
* Is not similar to any exercises or assignments from this course.
* Includes a scoring system (e.g., score as many points as you can, complete a task as quickly as you can, etc.).
* Includes both mouse and keyboard interaction.
* Lasts one minute or less.

In addition to those criteria, your program must include **all** of the following:
* Conditional statements
* Arithmetic operators and/or comparison operators
* Looping
* Functions (including ```random()```)
* Arrays and/or ArrayLists
* PVectors
* At least one object other than PVectors
* Documentation


###Additional Game Information

####Screen Size
To make your game take up the full screen, you can use ```size(displayWidth, displayHeight);```.

####Timer
Here is an example of how to create a running timer in Processing. You may modify it for your program if needed.

```processing
int startTime;

void setup() {
  size(500, 500);
  startTime = millis(); // millis() returns the number of milliseconds that have passed since starting the program.
}

void draw() { 
  background(255);
  int timer = (millis()-startTime)/1000; 
  textSize(50); 
  fill(0); 
  text(timer, 0, 40);
}
```

Here is an alternative to the timer that will run based on the ```frameCount``` variable which has the information about how many frames have been drawn rather than the beginning of the game:
```processing
int startTime;

void setup() {
  size(500, 500);
  startTime = frameCount; 
}

void draw() { 
  background(255);
  int timer = (frameCount-startTime)/60; //this is /60 because Processing defaults to 60 frames per second
  textSize(50); 
  fill(0); 
  text(timer, 0, 40);
}

//You can reset the timer by updating the startTime information - example below
void keyPressed() {
  startTime = frameCount;
}

```



###Play Day

The Play Day will be June 17th, 2016.

At the beginning of class, you are going to log in and open your program. After everyone has logged in, you will have time to try all your classmates' games. Specific instructions for how to progress through the room will be given.


###Reflection Paper

In fewer than 500 words, respond to the following:

* Describe any differences between your final program and what you envisioned when you first started planning your game. What caused some of these differences?
* Describe some of the strategies you used to overcome challenges and difficulties when writing your program.
* Choose one of the games you played (other than your own) and describe what impressed you the most about it.
* Choose one of the games you played (other than your own, and the one you previously wrote about) and describe how you would change it if you were the programmer.


###Submissables

Hand in your program and reflection paper to the /IN folder.


###Due Date(s)

Program due June 16th, 2016 by 2:46 PM.

Reflection due by June 17th, 2016 by 4:00 PM.


Rubric and Expectations
-----------------------

The rubric below will be used to evaluate your program.

| | 0 <br> (non-existent) | 1 <br> (not effective) | 2 <br> (somewhat effective) | 3 <br> (effective) | 4 <br> (very effective) |
| --- | --- | --- | --- | --- | --- |
| K: Use of constants and/or variables  | | | | | |
| K: Use of conditional statements (if statements)  | | | | | |
| K: Use of arithmetic operators and/or comparison operators  | | | | | |
| A: Use of loops (for, while, etc.)  | | | | | |
| A: Use of functions (including mouse and keyboard interaction)  | | | | | |
| T: Use of Arrays and/or ArrayLists  | | | | | |
| T: Use of PVectors and other objects/classes  | | | | | |
| T: Use of existing modules (other tabs)  | | | | | |
| C: Use of conventions in documentation (in-line commenting, etc.)  | | | | | |
| C: Clarity of game instructions (on-screen)  | | | | | |
| C: User-friendliness of game interface  | | | | | |

The rubric below will be used to evaluate your reflection paper.

| | 0 <br> (non-existent) | 1 <br> (limited) | 2 <br> (some) | 3 <br> (expected quality) | 4 <br> (outstanding quality) |
| --- | --- | --- | --- | --- | --- |
| K: Identifying syntax, logic, and run-time errors  | | | | | |
| A: Debugging and planning strategies  | | | | | |
| T: Amount of insight and thought put into writing about your final product | | | | | |
| T: Amount of insight and thought put into writing about others' games | | | | | |
| C: Appropriateness of written language for target audience (teacher) | | | | | |
