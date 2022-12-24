# Enrichment 4 - HTML IDs and Buttons

### id attribute
When creating different HTML elements, sometimes we want to be able to identify individual ones so that we can access them for either JavaScript or Cascading Style Sheets (CSS).  Most HTML elements can have an `id` attribute connected to them.

Let's say you have a paragraph that contains information about a country's population. For example, you can modify the `<p>...</p>` element to be `<p id="population">...</p>`. This way we can identify or modify the text within that particular paragraph element in different ways.

### \<button\>\<\/button\> element

Buttons are useful to trigger an event on a webpage. We will be combining the above `id` attribute with button elements to trigger JavaScript functions.

When setting up a button, you need to set a few attributes along with it (example below). For our purposes, we will always set `type="button"`.

```html
<button type="button">Click me!</button>
```