import javax.swing.*;

/**************************************************************************************/
/**************************************************************************************/
/*********************         These will help with the       *************************/
/*********************        development of your program     *************************/
/*********************       You won't need to change any,    *************************/
/*********************         but feel free to use them      *************************/
/**************************************************************************************/
/**************************************************************************************/

/**
 * This function will assist in getting input into your program.  If nothing is entered, a null value is returned
 * 
 * @param s is the string value that shows in the dialog window which is typically guides the user into what to type into the textbox.
 * @return The input value.  If nothing is entered, then the value returned is null.
 */
public static String prompt(String s) {
  String entry = JOptionPane.showInputDialog(s);
  if (entry == null)
    return null;
  return entry;
}

/**
 * This function uses the prompt() function to return a String.
 * 
 * @param s The prompt string for the dialog window.
 * @return a string value obtained by the input
 */
public static String getString(String s) {
  return prompt(s);
}

/**
 * This function asks for an integer, and forces proper values to be entered
 * --This function uses the getString() function
 * 
 * @param s The prompt string for the dialog window.
 * @return a integer value obtained by the input
 */
public static int getInt(String s) {
  while (true) {
    int returnValue = 0;

    String in = getString(s);
    try {
      if (in == null) throw new NumberFormatException(); //if "X" clicked, or nothing entered

      returnValue = Integer.parseInt(in); //try to convert the value into an integer
      return returnValue;            //if successful, return the integer value
    }
    catch (NumberFormatException nfe) {    //if unsuccessful, advise user to input proper values
      JOptionPane.showMessageDialog(new JFrame(), 
        "Invalid number format", 
        "Input Error!", 
        JOptionPane.ERROR_MESSAGE);
      //continue;
    }
  }
}

/**
 * This function asks for a long value, and forces proper values to be entered
 * --This function uses the getString() function
 * 
 * @param s The prompt string for the dialog window.
 * @return a long value obtained by the input
 */
public static long getLong(String s) {
  while (true) {
    long returnValue = 0;

    String in = getString(s);
    try {
      if (in == null) throw new NumberFormatException(); //if "X" clicked, or nothing entered

      returnValue = Long.parseLong(in); //try to convert the value into an long
      return returnValue;          //if successful, return the long value
    }
    catch (NumberFormatException nfe) {    //if unsuccessful, advise user to input proper values
      JOptionPane.showMessageDialog(new JFrame(), 
        "Invalid number format", 
        "Input Error!", 
        JOptionPane.ERROR_MESSAGE);
      continue;
    }
  }
}

/**
 * This function asks for a float value, and forces proper values to be entered
 * --This function uses the getString() function
 * 
 * @param s The prompt string for the dialog window.
 * @return a float value obtained by the input
 */
public static float getFloat(String s) {
  while (true) {
    float returnValue = 0.0f;

    String in = getString(s);
    try {
      if (in == null) throw new NumberFormatException(); //if "X" clicked, or nothing entered

      returnValue = Float.parseFloat(in); //try to convert the value into a float
      return returnValue;          //if successful, return the float value
    }
    catch (NumberFormatException nfe) {    //if unsuccessful, advise user to input proper values
      JOptionPane.showMessageDialog(new JFrame(), 
        "Invalid number format", 
        "Input Error!", 
        JOptionPane.ERROR_MESSAGE);
      continue;
    }
  }
}

/**
 * This function asks for a double value, and forces proper values to be entered
 * --This function uses the getString() function
 * 
 * @param s The prompt string for the dialog window.
 * @return a double value obtained by the input
 */
public static double getDouble(String s) {
  while (true) {
    double returnValue = 0.0;

    String in = getString(s);
    try {
      if (in == null) throw new NumberFormatException(); //if "X" clicked, or nothing entered

      returnValue = Double.parseDouble(in); //try to convert the value into a double
      return returnValue;              //if successful, return the double value
    }
    catch (NumberFormatException nfe) {    //if unsuccessful, advise user to input proper values
      JOptionPane.showMessageDialog(new JFrame(), 
        "Invalid number format", 
        "Input Error!", 
        JOptionPane.ERROR_MESSAGE);
      continue;
    }
  }
}

/**
 * This function asks for a single character. If more than 1 is entered, it takes the 1st. 
 * If nothing is entered, then the newline character is returned.
 * --This function uses the getString() function
 * 
 * @param s The prompt string for the dialog window.
 * @return a character value obtained by the input
 */
public static char getChar(String s) {
  String entry = getString(s);
  if (entry == null)
    return '\n';
  if (entry.length() >= 1)
    return entry.charAt(0);
  else
    return '\n';
}