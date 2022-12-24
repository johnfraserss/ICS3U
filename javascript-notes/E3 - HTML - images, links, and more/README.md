# Enrichment 3 - HTML - Images, Links, and more!

# Attributes!
You will have had a preview of attributes in the previous lab with the use of `<ol type='_'>` element. The portion that is labeled `type='_'` is an example of an attribute. Each of the following elements will have attributes in them.

# New Elements

## \<img src="" alt="" width="" height="" \/\>
This represents an image element. The image has to be stored online somewhere. The attributes are as follows:
* `src=""` is used to identify which image to display.
* `alt=""` creates a written description of the image when moused-over or when the image cannot load.
* `width=""` is used to force an image to be a certain width, in pixels. This is optional, if only the height was given this will change to keep the same aspect ratio (see example below).
* `height=""` is used to force an image to be a certain height, in pixels. This is optional, if only width was given this will change to keep the same aspect ratio.

Most websites will not allow you to link to their images, and will force you  upload your own. Below is an example of an image that you can link to elsewhere, and what will be shown.

`<img src="https://mrseidel.com/images/Processing/2O/Exercise1_2O.png" alt="Red Farmhouse" width="150px"/>`
<img src="https://mrseidel.com/images/Processing/2O/Exercise1_2O.png" alt="Red Farmhouse" width="150px"/>

Below is an example of an uploaded file using relative pathing. Relative pathing is used relative to the file asking to use the image. 

`<img src="./images/Exercise1_2O.png" alt="Red Farmhouse" width="250px"/>` (this does not work on GitHub. See replit example.)

The `.` means **this folder**. The meaning of the entire link is "this folder -> go into the images folder -> use the Exercise1_20.png file."

## \<a href=""\> \<\/a\>
This element creates a hyperlink to the location in the `href=""` attribute. The portion that will be linked is between the `<a>` and `</a>` elements.

`<a href="https://google.ca">Search here</a>`  
The above will create a link to `google.ca`, but the words that will show up are `Search here`. This is shown below.  
<a href="https://google.ca">Search here</a>

## \<abbr title=""\>
This element is used to help users identify what an acronym could mean, or what particular words mean. For example, `<abbr title="HyperText Markup Language">HTML</abbr>` will create the text **HTML** and if you hover your mouse over it (or click on it, depending on the browser), the text will pop up the meaning described in the `title` attribute.

See the `lessonHTML.html` page for an example in action.

## \<bdo dir="rtl"\>
If you are ever in need of writing words from right-to-left, then this element is for you. You would type the words in a left-to-right format, and have this element reverse it for you. This is useful if you are creating webpages in a different language that reads from right-to-left.

`<bdo dir="rtl">Words here.</bdo>` would display as `.ereh sdroW` on a webpage.