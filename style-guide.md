# Wistia Doc Style Guide

## General Narrative Notes

### Doc is Thorough
The doc should be as thorough as possible. When introducing functionality, include
descriptions of how the functionality works, and how it can benefit the user. 

Provide outside links or images where needed to explain features/functionality/issues as clearly
as possible.

### Doc is Business-Type Fun
The blog, twitter account, and even homepage are a better place for jokes. Folks
visiting the doc are likely in a state of distress - we don't want to do too much
joking around.

That being said, it is still within our voice to provide levity in any situation.
Being casual and friendly in communication is still a good thing!

### Doc is Easy on the Eyes
When pulling images, put an emphasis on quality. Folks who end up in the doc will be
soothed by images that clearly illustrate the issue.

## Text

### post_intro YAML

There is a `post_intro` YAML item.  Wrap your text in paragraph tags (1 or more)
and it will be styled to look all cool and intro-y.

### Headers

`h1` are reserved for post titles. 
Major sections should use `h2` - these will be brought into the post nav as well.
Complicated posts like APIs could make use of `h3`, but these will look the same in
appearance with `h2`.

No need to get more complicated than that broseph!

### Emphasis

If emphasizing something in the app, use *italics*.

**Ex**: "Open the *Media Actions* menu, and select *Embed*"

If emphasizing a key concept, or technical jargon, use `code` blocks

**Ex**: "If you'd like your embed to be responsive, make sure to add `videoFoam: true`"

### Icons

We use [font-awesome](http://fortawesome.github.com/Font-Awesome/), to add icons
to text. It's awesome, I would recommend doing it, can make things clearer.

When referring to buttons and menus a lot, try adding CSS to the text to look more
like the menu - this can also help the customer/reader decipher the actions needed.

### Links

Links provide as much context behind what is about to be opened as possible.

Err on the side of including the link [into the sentence](#) as much as possible.

Internal links use the `post_url` syntax:

    {{ '/link-to-post' | post_url }}

External links are prefaced, and always use `target='_blank'` to keep the original
doc page open.

## Code Snippets

### Prism
We use [Prism](http://prismjs.com/) for syntax highlighting.  It's not perfect, 
but it is much easier/lightweight than Github Gists. Prism also uses the HTML5
code tags, which makes switching to something else later much easier.

This means all code is wrapped in `pre` and `code` tags, with the class on the 
`code` tag being `language-xxxxx` representing the language in the code block.

Follow Prism rules for actual code blocks:
  * Uses &lt;pre&gt; tags, with &lt;code&gt; inside with class `language-nameoflanguage`
  * languages: ruby, javascript, vim (for terminal actions), markdown (html)
  * for single line of code, use language `vim` or `markdown`

**Example**:

    <pre><code class="language-javascript">
      <script>
        var language = "javascript";
      </script>
    </code></pre>

**Troubleshooting**:

Sometimes Prism executes too slow for our awesomely fast embeds, and if you include
an embed in your Prism block, it can end up rendering.  Replace your brackets `<` with
the HTML-escaped versions (`&lt;` and `&gt;`, respectively).

## Images

### Upload Process
At this time, images should be grabbed and uploaded to the `home` Wistia account,
specifically in the `Doc Images` Project.  This Project is broken into sections
correlated on the area of the doc.

After upload, use the Bakery Hashed ID with the Liquid embed tag we created:

    {% post_image hashed_id: 'BAKERY-ID', class: 'BLAH', width: 'BLAH' %}

### CSS Styling
Images are all given the class `post_image`. They can be floated to the left or right
using the `float-direction` class syntax. If they will be full-width, use class `center`.

### Screenshots
Where possible, avoid using lots of goofy arrows or other functionality that doesn't
exist in the app itself. Grab a clearer/more focused screenshot, instead of using
an arrow to indicate the issue at hand.

That being said, screenshots should be captured as wide as possible, to give the
reader context as to where in the app they are.

### Alt-Text
Alt text is good for folks who don't know what they are looking at. Think of it
like a caption, ya'll.

## Video Embeds

We customized an embedly plug-in for videos.

    {% embedly 'wistia-video-url', width: videoWidth, height: videoHeight, playerColor: 'color', embedType: 'type' %}

**Defaults:**

* **width**: 660px
* **height**: 413px
* **playerColor**: "688AAD"
* **embedType**: 'seo'
* **controlsVisibleOnLoad**: false

## Troubleshooting

* If you have paragraphs next to floated images that are overlapping, throw in a 'div class clear' above them.
