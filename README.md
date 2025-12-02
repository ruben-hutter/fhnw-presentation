# FHNW Presentation Template for Typst

A professional presentation template following the University of Applied Sciences and Arts Northwestern Switzerland (FHNW) branding guidelines.

## Features

- Official FHNW colors and branding
- Multiple column layouts (2 and 3 columns)
- Styled content blocks (example, definition, alert)
- Code highlighting support
- Tables and figures with captions
- Mathematical equations
- Automatic page numbering
- Fully customizable

## Quick Start

1. Create a presentation file (e.g., `my-presentation.typ`):

```typst
#import "@preview/fhnw-presentation:0.1.0": *

#show: fhnw-theme.with(
  title: "My Presentation",
  authors: ("Your Name",),
  email: "your.email@fhnw.ch",
  date: "December 2024",
  logo: "assets/fhnw-logo.png",
)

= Introduction

#section-slide[First Section]

== First Slide

- Bullet point 1
- Bullet point 2
```

2. Compile with Typst:
```bash
typst compile my-presentation.typ
```

## Configuration

### Main Options

```typst
#show: fhnw-theme.with(
  title: "Your Title",              // Required
  subtitle: none,                   // Optional
  authors: ("Author",),             // Author names
  email: "email@fhnw.ch",          // Contact email
  institute: "FHNW",                // Institution
  date: "December 2024",            // Presentation date
  aspect-ratio: "16-9",             // Slide ratio
  show-total-slides: true,          // Show total slides in footer
  logo: "assets/fhnw-logo.png",    // Logo path
)
```

## Slide Types

### Regular Slides
```typst
== Slide Title

Your content here...
```

### Section Dividers
```typst
// Without subtitle
#section-slide("Section Name")

// With subtitle (optional)
#section-slide("Section Name", subtitle: "Optional description")
```

### Two-Column Layout
```typst
#two-columns[
  Left column content
][
  Right column content
]
```

### Three-Column Layout
```typst
#three-columns[
  Left
][
  Center
][
  Right
]
```

## Content Blocks

### Example Block
```typst
#example-block(title: "Example")[
  Example content with yellow background
]
```

### Definition Block
```typst
#definition-block(title: "Definition")[
  Definition with teal background
]
```

### Alert Block
```typst
#alert-block(title: "Important")[
  Alert content with red background
]
```

### Code Block
```typst
#code-block[
```python
def hello():
    print("Hello FHNW!")
\```
]
```

## Styling Text

```typst
#alert[Important text in red]
- Regular bullet points
- _Emphasized_ text (bold)
- *Strong* text (bold + red)
```

## FHNW Colors

The template includes official FHNW colors:

- `fhnw-yellow` - Primary brand color
- `fhnw-dark-gray` - Text and lines
- `fhnw-red` - Alerts and emphasis
- `fhnw-teal` - Links and accents
- `fhnw-gray` - Secondary text

Use in your content:
```typst
#text(fill: fhnw-red)[Colored text]
```

## Examples

See `example-presentation.typ` for a complete working example demonstrating all features.

## Requirements

- Typst 0.11.0 or newer
- Arial font (or system fallback)

## Assets

The template requires these logo files:
- `assets/fhnw-logo.png` - FHNW logo
- `assets/swissuniversity.png` - Swiss Universities logo

These are included with the template.

## Tips

1. Keep slides simple (5-7 bullet points max)
2. Use section dividers to organize your presentation
3. Use `#v(1em)` to add vertical spacing
4. Check `example-presentation.typ` for patterns
5. Compile frequently while working

## License

Based on the original FHNW LaTeX Beamer template.

## Credits

- FHNW for original branding and colors
- Inspired by the DMI Basilea Typst template (https://typst.app/universe/package/dmi-basilea-thesis/)
