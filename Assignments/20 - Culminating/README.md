**The culminating is worth 20% of your final mark. The remaining 10% will be the exam.**

Task(s)
-------

Using the knowledge you've acquired from this course, create a one-minute game for each of your classmates to play. After your program has been finished and everyone has played each other's games, write a reflection paper about the process.


###Game Instructions

When your program is run, the instructions of your game will show up. Your instruction page will include a button with the label "Start Game". When "Start Game" is clicked, the game will begin.

Here are the criteria for your game:
* Is designed to be played in full screen mode (use Ctrl+Shift+R to run the program).
* Is not similar to any exercises or assignments from this course.
* Includes a scoring system (e.g., score as many points as you can, complete a task as quickly as you can).
* Includes both mouse and keyboard interaction.
* Lasts one minute or less.

In addition to those criteria, your program must include **all** of the following:
* Conditional statements
* Arithmetic operators and/or comparison operators
* Looping
* Functions (including ```random()```)
* Arrays and/or ArrayLists
* Objects (other than PVectors)
* PVectors
* Documentation


###Additional Game Information

####Screen Size
To make your game to take up the full screen, you can use ```size(displayWidth, displayHeight);```.

####Timer
Here is an example how to create a running timer in Processing. You may modify it for you program if needed.

```processing
int start;

void setup() {
  size(500, 500);
  start = millis();
}

void draw() { 
  background(255);
  int timer = (millis()-start)/1000;
  textSize(50); 
  fill(0); 
  text(timer, 0, 40);
}
```


###Play Day

The date of the play day will be announced further into this project.

At the beginning of class, you are going to log in and open your program. You will sit at someone else's computer and play their game. After everyone has played the game in front of them,  the allotted minute, move on to the next computer, and repeat


###Reflection Paper

In fewer than 500 words, respond to the following:

* Describe any differences between your final program and what you envisioned when you first started planning your game. What caused some of these differences?
* Describe some of the strategies you used to overcome challenge and difficulties when writing your program.
* Choose one of the games you played (other than your own) and describe what impressed you the most about it.
* Choose one of the games you played (other than your own, and the one you previously wrote about) and describe how you would change it if you were the programmer.


###Submissables

Hand in your program and reflection paper to the /IN folder.


###Due Date(s)

Program due date: TBA

Play Day: TBA (it will be soon after the game is due)

Reflection due date: TBA


Rubric and Expectations
-----------------------

The rubric below will be used to evaluate your program.

| | 0 <br> (non-existent) | 1 <br> (not effective) | 2 <br> (somewhat effective) | 3 <br> (effective) | 4 <br> (very effective) |
| --- | --- | --- | --- | --- | --- |
| K: Use of constants and variables  | | | | | |
| K: Use of conditional statements  | | | | | |
| K: Use of arithmetic operators and/or comparison operators  | | | | | |
| A: Use of loops  | | | | | |
| A: Use of functions (including mouse and keyboard interaction)  | | | | | |
| T: Use of Arrays and/or ArrayLists  | | | | | |
| T: Use of PVectors and other objects  | | | | | |
| T: Use of existing modules  | | | | | |
| C: Use of conventions in documentation  | | | | | |
| C: Clarity of game instructions  | | | | | |
| C: User-friendliness of game interface  | | | | | |

The rubric below will be used to evaluate your reflection paper.

| | 0 <br> (non-existent) | 1 <br> (limited) | 2 <br> (some) | 3 <br> (expected quality) | 4 <br> (outstanding quality) |
| --- | --- | --- | --- | --- | --- |
| K: Identifying syntax, logic, and run-time errors  | | | | | |
| A: Debugging and planning strategies  | | | | | |
| T: Amount of insight and thought put into writing about the final product | | | | | |
| T: Amount of insight and thought put into writing about others' games | | | | | |
| C: Appropriateness of written language for target audience (teacher) | | | | | |