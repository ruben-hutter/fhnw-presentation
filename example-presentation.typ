// Example FHNW Presentation
// This demonstrates all features of the fhnw-presentation template

#import "fhnw-presentation.typ": *

#show: fhnw-theme.with(
  title: "Example Presentation",
  subtitle: "Template Demonstration",
  authors: ("Your Name",),
  email: "your.email@fhnw.ch",
  date: "December 2024",
  logo: "assets/fhnw-logo.png",
)

= Agenda

1. Basic Slides
2. Layouts
3. Content Blocks
4. Special Elements

#section-slide[Basic Slides]

== Slide with Bullet Points

Basic content with bullet points:

- First point
- Second point with _emphasis_
- Third point with #alert[highlighted] text

#v(0.5em)

Use `#section-slide[Name]` to create section dividers.

== Lists and Numbering

Numbered list:

1. First item
2. Second item
   - Nested bullet
   - Another nested item
3. Third item

#section-slide[Layouts]

== Two-Column Layout

#two-columns[
  *Left Column*

  - Point A
  - Point B
  - Point C
][
  *Right Column*

  - Point X
  - Point Y
  - Point Z
]

== Three-Column Layout

#three-columns[
  *Column 1*

  Content for the left column with details and information.
][
  *Column 2*

  Content in the middle with additional details and explanations.
][
  *Column 3*

  Content on the right with supplementary information.
]

#section-slide[Content Blocks]

== Example Block

#example-block(title: "Example")[
  This is an example block with yellow background. Use it to highlight examples or important information.
]

== Definition Block

#definition-block(title: "Definition")[
  A definition block with teal background for important definitions or concepts.
]

== Alert Block

#alert-block(title: "Important")[
  An alert block with red background for warnings or critical information.
]

== Code Block

#code-block[
```python
def greet(name):
    print(f"Hello, {name}!")
    return True

greet("FHNW")
```
]

#section-slide[Special Elements]

== Tables

#figure(
  table(
    columns: 3,
    [*Header 1*], [*Header 2*], [*Header 3*],
    [Row 1], [Data A], [Data B],
    [Row 2], [Data C], [Data D],
    [Row 3], [Data E], [Data F],
  ),
  caption: "Example table with sample data"
)

== Math and Formulas

Inline math: $E = m c^2$

Display equation:

$ integral_0^infinity e^(-x) dif x = 1 $

== Text Styling

You can use various text styles:

- *Bold text* for emphasis
- _Italic text_ for alternative styling
- #text(fill: fhnw-red)[Colored text] using custom colors
- `Monospace for code` in text
- #link("https://typst.app")[Links] in your content

== Thank You

#v(4em)

#align(center)[
  #text(size: 24pt)[*Thank You!*]

  #v(2em)

  #text(size: 14pt)[
    Your Name\
    #text(fill: fhnw-dark-gray)[your.email\@fhnw.ch]
  ]
]
