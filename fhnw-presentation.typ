// FHNW Presentation Template for Typst
// Based on the FHNW LaTeX Beamer template
// Adapted for use with Typst presentation system

// ============================================================================
// Color Definitions (from FHNW Beamer template)
// ============================================================================

#let fhnw-yellow = rgb("#fde70e")      // Primary FHNW yellow (bcolor1/2)
#let fhnw-dark-gray = rgb("#2d373c")   // Dark gray (bcolor3)
#let fhnw-gray = rgb("#8c9196")        // Medium gray (bcolor4)
#let fhnw-red = rgb("#d20537")         // Highlight red (bcolor5)
#let fhnw-light-red = rgb("#eb829b")   // Light red (bcolor6)
#let fhnw-light-gray = rgb("#bec3c8")  // Light gray (bcolor7)
#let fhnw-teal = rgb("#006e6e")        // Teal (bcolor8)
#let fhnw-black = rgb("#000000")       // Black (bcolor9)
#let fhnw-white = rgb("#ffffff")       // White (bcolor10)

// ============================================================================
// Presentation Configuration Function
// ============================================================================

#let fhnw-theme(
  title: none,
  subtitle: none,
  authors: (),
  email: none,
  institute: "University of Applied Sciences and Arts Northwestern Switzerland",
  date: none,
  aspect-ratio: "16-9",
  show-total-slides: true,
  logo: none,
  body
) = {
  
  // Set document metadata
  set document(
    title: title,
    author: authors,
    date: date
  )
  
  // Page setup
  set page(
    width: if aspect-ratio == "16-9" { 16cm * 2 } else { 4cm * 2 },
    height: if aspect-ratio == "16-9" { 9cm * 2 } else { 3cm * 2 },
    margin: (x: 1.92cm, top: 1.8cm, bottom: 1.8cm),
    header: context {
      if counter(page).get().first() > 1 {
        // Header line on regular slides
        line(length: 100%, stroke: 0.5pt + fhnw-dark-gray)
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        let page-num = counter(page).get().first() - 1
        let total = counter(page).final().first() - 1
        
        set text(size: 8pt)
        grid(
          columns: (1fr, auto),
          align: (left, right),
          text(fill: fhnw-black)[#title],
          text(fill: fhnw-black)[
            #page-num
            #if show-total-slides [ / #total]
          ]
        )
        v(-0.5em)
        line(length: 100%, stroke: 0.5pt + fhnw-yellow)
      }
    }
  )
  
  // Text settings
  set text(
    font: "Arial",
    size: 14pt,
    fill: fhnw-black
  )
  
  // Heading styles
  show heading.where(level: 1): it => {
    set text(size: 24pt, weight: "regular", fill: fhnw-black)
    v(0.5em)
    it
    v(0.3em)
    line(length: 100%, stroke: (
      paint: fhnw-dark-gray,
      thickness: 0.5pt,
      dash: "dashed"
    ))
    v(1em)
  }
  
  show heading.where(level: 2): it => {
    pagebreak(weak: true)
    set text(size: 20pt, weight: "bold", fill: fhnw-black)
    block(
      width: 100%,
      inset: (bottom: 1em),
      {
        it
        v(0.3em)
        line(length: 100%, stroke: (
          paint: fhnw-dark-gray,
          thickness: 0.5pt,
          dash: "dashed"
        ))
      }
    )
  }
  
  // List styling with triangular bullets
  set list(
    marker: ([▸], [▹], [▹]),
    indent: 1em
  )
  
  set enum(
    numbering: "1.",
    indent: 1em
  )
  
  // Link styling
  show link: it => text(fill: fhnw-teal, it)
  
  // Emphasis styling
  show emph: it => text(weight: "bold", it)
  show strong: it => text(weight: "bold", fill: fhnw-red, it)
  
  // ============================================================================
  // Title Slide
  // ============================================================================
  
  page(
    margin: (x: 1.92cm, top: 0cm, bottom: 1.8cm),
    header: none,
    footer: none,
  )[
    // Yellow header bar with logo
    #block(
      width: 100%,
      height: 4.5cm,
      fill: fhnw-yellow,
      inset: (x: 1.5em, y: 1.5em),
    )[
      #if logo != none {
        place(
          top + left,
          dy: 0em,
          image(logo, height: 3em)
        )
      }
      #place(
        top + right,
        dy: 0em,
        image("assets/swissuniversity.png", height: 1em)
      )
    ]
    
    #v(2em)
    
    // Title
    #block(
      width: 100%,
      inset: (x: 0em),
    )[
      #set text(size: 24pt, weight: "regular")
      #title
      
      #if subtitle != none [
        #v(0.5em)
        #set text(size: 18pt, weight: "regular")
        #subtitle
      ]
    ]
    
    #v(0.5em)
    
    // Separator line
    #line(length: 100%, stroke: (
      paint: fhnw-dark-gray,
      thickness: 0.5pt,
      dash: "dashed"
    ))
    
    #v(2em)
    
    // Author information
    #block(
      width: 100%,
      inset: (x: 0em),
    )[
      #set text(size: 10pt)
      #text(weight: "bold")[#authors.join(", ")]
      
      #if email != none [
        #text(fill: fhnw-dark-gray)[<#email>]
      ]
      
      #v(1em)
      #institute
      
      #v(1em)
      #if date != none [
        #date
      ] else [
        #datetime.today().display("[month repr:long] [day], [year]")
      ]
    ]
  ]
  
  // Main content
  body
}

// ============================================================================
// Utility Functions
// ============================================================================

// Section divider slide
#let section-slide(title) = {
  pagebreak()
  page(
    header: none,
    footer: none,
  )[
    #set align(horizon + left)
    #set text(size: 32pt, weight: "bold", fill: fhnw-black)
    #title
  ]
}

// Alert text (highlighted in red)
#let alert(content) = {
  text(fill: fhnw-red, weight: "bold", content)
}

// Two-column layout helper
#let two-columns(left-content, right-content) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: 1.5em,
    left-content,
    right-content
  )
}

// Three-column layout helper
#let three-columns(left-content, center-content, right-content) = {
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 1em,
    left-content,
    center-content,
    right-content
  )
}

// Colored box helper (similar to Beamer blocks)
#let color-box(
  title: none,
  fill-color: fhnw-yellow.lighten(60%),
  title-color: fhnw-yellow,
  body
) = {
  block(
    width: 100%,
    fill: fill-color,
    inset: 1em,
    radius: 0pt,
    stroke: none,
    {
      if title != none {
        block(
          width: 100% + 2em,
          inset: (x: 1em, y: 0.5em),
          fill: title-color,
          outset: (x: 1em, top: 1em),
        )[
          #set text(weight: "bold", fill: fhnw-black)
          #title
        ]
        v(0.5em)
      }
      body
    }
  )
}

// Example block
#let example-block(title: "Example", body) = {
  color-box(
    title: title,
    fill-color: fhnw-yellow.lighten(60%),
    title-color: fhnw-yellow,
    body
  )
}

// Definition block
#let definition-block(title: "Definition", body) = {
  color-box(
    title: title,
    fill-color: fhnw-teal.lighten(80%),
    title-color: fhnw-teal.lighten(40%),
    body
  )
}

// Alert block
#let alert-block(title: "Important", body) = {
  color-box(
    title: title,
    fill-color: fhnw-red.lighten(80%),
    title-color: fhnw-light-red,
    body
  )
}

// Code block with FHNW styling
#let code-block(
  lang: none,
  body
) = {
  block(
    width: 100%,
    fill: fhnw-light-gray.lighten(50%),
    inset: 1em,
    radius: 0pt,
    {
      set text(font: "Courier New", size: 11pt)
      body
    }
  )
}

// Footnote without numbering
#let slide-note(content) = {
  place(
    bottom,
    text(size: 8pt, fill: fhnw-gray, content)
  )
}

// Last slide helper (thank you slide)
#let last-slide(
  content,
  image-path: none
) = {
  pagebreak()
  page(
    margin: (x: 0cm, y: 0cm),
    header: none,
    footer: none,
  )[
    #grid(
      columns: (60%, 40%),
      column-gutter: 0em,
      // Left side with yellow background
      block(
        width: 100%,
        height: 100%,
        fill: fhnw-yellow,
        inset: 2em,
      )[
        #if image-path != none {
          align(center + horizon)[
            #image(image-path, width: 70%)
          ]
        }
      ],
      // Right side with content
      block(
        width: 100%,
        height: 100%,
        inset: 2em,
      )[
        #align(left + horizon)[
          #content
        ]
      ]
    )
  ]
}

// Reference citation helper
#let cite-slide(title: "References", body) = {
  pagebreak()
  
  heading(level: 2)[#title]
  
  set text(size: 10pt)
  set par(leading: 0.5em)
  
  body
}
