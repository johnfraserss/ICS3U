# Enrichment 5 - HTML/JS - Connecting Both (and Debugging Strategies)

## \<label\> element

This element works similarly to the `<p>` element; however, it is usually used just prior to any `<input>` elements. Label elements also do not automatically create extra space around them.

Example:
```HTML
<label>Insert a numeric value for 'a': </label>
```


## \<input\> element

This element can create a variety of input options. We'll be focusing on two of them.

### \<type="text"\>
This displays a texbox for user input. See the example below for creating a textbox with an id of `hypotenuseAValue`.

```HTML
<input type="text" id="hypotenuseAValue"/>
```


### \<type="range"\>
This displays a slider with a provided range. See the example below:

```HTML
<input type="range" min="1" max="100" id="numberSlider" value="1" oninput=""/>
```
Based on the example above, we have the following additional set of attributes:
* `min` sets the minimum value of the range slider
* `max` sets the maximum value of the range slider
* `value` sets the starting value the slider should be on when the webpage loads
* `oninput` triggers a function based on the input provided.

## Outputting to HTML
When outputting from JavaScript to HTML, you will need to use the `innerHTML` property of the `document.getElementById(element)` function.

For example:

```javascript
document.getElementById("numberSlider").innerHTML = 'Slider value: ' + value;
```

You can complete the same task using inline script in the HTML element directly, but you only want to reserve this to a single JavaScript line of code.  For example:

```HTML
<input type="range" min="1" max="100" id="numberSlider" value="1" oninput="sliderValue.innerHTML = 'Slider value: ' + value;"/>

<p id="sliderValue">Slider value: 1</p>
```
In the above example, the `oninput` attribute contains a single JavaScript line of code that would update the information inside the `<p>` element with the `id` attribute set to `sliderValue`.

## Debugging Strategies

Debugging HTML combined with JavaScript can be tricky. Here are a list of ideas for you to try out:

* Double check names are consistent everywhere you use the name (e.g. id name is the same in HTML and when you are trying to use it in JS)
* Use `console.log()` _everywhere_ to help identify the values of variables are you're going along. The console is typically not seen when people are browsing the web and is a good place to complete some debugging.
* Check the variable types (number, string, etc.) that you are expecting and what you are actually working with.
