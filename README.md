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

### Full Image Slide
```typst
// Simple image slide
#full-image-slide("path/to/image.png")

// With caption
#full-image-slide(
  "path/to/image.png",
  caption: "Figure 1: Example caption"
)

// Adjust width
#full-image-slide(
  "path/to/image.png",
  width: 60%  // Default is 80%
)
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

### Side-by-Side Layout
```typst
// Image on left, text on right (default 50-50 split)
#side-by-side(
  image("diagram.png"),
  [Your text here]
)

// Adjust width ratio (30% left, 70% right)
#side-by-side(
  [Left content],
  [Right content],
  left-width: 30%
)
```

### Key Points / Highlights
```typst
#key-points(
  points: (
    [*Title One*\
    Description of point one],
    [*Title Two*\
    Description of point two],
    [*Title Three*\
    Description of point three],
    [*Title Four*\
    Description of point four],
  ),
  columns: 2  // Can be 1, 2, 3, or 4
)
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
#code-block(lang: "python")[
  ```python
  def hello():
      print("Hello World")
  ```
]
```

## Special Slides

### Last Slide (Closing/Thank You)
```typst
// Simple thank you slide
#last-slide[
  Thank you!

  Questions?
]

// With image on left, text on right
#last-slide(
  [Thank you!],
  image-path: "images/closing-image.jpeg"
)

// Customize width and color
#last-slide(
  [Thank you for listening!],
  image-path: "images/closing-image.jpeg",
  left-width: 50%,  // 50-50 split instead of 60-40
  background-color: fhnw-teal  // Use different color
)
```

### References Slide
```typst
#cite-slide[
  - Author, A. (2024). Title. *Journal*
  - Author, B. (2023). Title. Publisher
  - Author, C. (2022). Title. Conference
]

// Custom title
#cite-slide(title: "Sources")[
  - Reference 1
  - Reference 2
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

- Typst 0.13.0 or newer
- Roboto font (optional, falls back to Liberation Sans)

### Version Notes

This template uses modern Typst features:
- `.map()` method on arrays (key points layout)
- Individual corner radius on blocks
- Context expressions for page elements
- Grid with row/column gutter control

Tested and working on Typst 0.13.1. If you encounter issues, please verify your Typst version with `typst --version` and upgrade if needed.

## Assets and Images

**Included assets:**
- `assets/fhnw-logo.png` - FHNW logo
- `assets/swissuniversity.png` - Swiss Universities logo

**Your images:**
- Place your presentation images in the `images/` directory
- Reference them with relative paths: `image("images/my-image.png")`
- Works with PNG, JPG, GIF, and SVG formats

## Visual Preview

The template produces professional, modern presentations with:
- **Title slide** with FHNW yellow header and branding
- **Section dividers** with accent bar and optional subtitles
- **Content slides** with clean typography and proper spacing
- **Color-coded blocks** for examples, definitions, and alerts
- **Code blocks** with syntax highlighting and language labels
- **Key points** highlighted in yellow boxes
- **Automatic page numbering** in footer with title

For a complete visual preview, check `example-presentation.pdf` in the repository.

## Tips

1. Keep slides simple (5-7 bullet points max)
2. Use section dividers to organize your presentation
3. Use `#v(1em)` or `#v(0.5em)` to add vertical spacing
4. Check `example-presentation.typ` for code patterns
5. Compile frequently while working with `typst watch`
6. Use images in `images/` directory for easy organization
7. Reference the FHNW colors for consistency

## Troubleshooting

### Font Warnings

**Problem:** "Warning: unknown font family: ..."

**Solution:**
- These are normal and non-blocking. The template includes fallbacks.
- To use custom fonts, install them on your system or in Typst's font directory
- Current setup: Roboto (optional) → Liberation Sans (fallback)

### Images Not Showing

**Problem:** Image references don't work or show error

**Solutions:**
- Verify the path is relative to your `.typ` file
- Use `images/filename.jpeg` if image is in the `images/` folder
- Check the file exists and is readable
- Supported formats: PNG, JPG, GIF, SVG

Example:
```typst
#image("images/my-image.png")  // Correct
#image("my-image.png")         // Will fail unless in same directory
```

### Logo Not Displaying

**Problem:** FHNW or Swiss Universities logo doesn't show

**Solution:**
- Ensure `assets/fhnw-logo.png` and `assets/swissuniversity.png` exist
- Check file paths in template configuration
- Verify logo parameter: `logo: "assets/fhnw-logo.png"`

To disable the Swiss Universities logo:
```typst
#show: fhnw-theme.with(
  title: "My Presentation",
  swiss-universities-logo: none  // Disables logo
)
```

### Compilation Errors

**Problem:** "Error: unknown function" or syntax errors

**Solutions:**
1. Verify Typst version: `typst --version` (needs 0.13.0 or newer)
2. Update Typst if outdated
3. Check that all parentheses and brackets match
4. Ensure proper indentation in code blocks

**Common syntax issues:**
- Missing colons in function calls: `#function(param: value)`
- Unclosed brackets: `[content]` or `()`
- Typos in color names: `fhnw-yellow` not `fhnw-yel`

### Layout Issues

**Problem:** Text/images not positioned as expected

**Solutions:**
- Check available space: some layouts need room to display
- Use `#v(space)` to adjust vertical spacing
- Verify column widths in two/three-column layouts
- For side-by-side, adjust `left-width` parameter (default 50%)

Example:
```typst
#side-by-side(
  [Image],
  [Text],
  left-width: 40%  // 40% left, 60% right
)
```

### PDF Output Issues

**Problem:** Slides look different in PDF than expected

**Solutions:**
- Try a different PDF viewer (some viewers have rendering quirks)
- Ensure all fonts are properly installed
- Check page margins and aspect ratio settings
- Verify images are embedded correctly

### Page Numbering Issues

**Problem:** Page numbers skip or appear incorrect

**Solution:**
This is normal! The template counts slides, not pages:
- Title slide doesn't count (footer removed)
- Section slides don't count (full-page only)
- Only content slides are numbered
- Use `show-total-slides: false` to hide total

## License

Based on the original FHNW LaTeX Beamer template.

## Credits

- FHNW for original branding and colors
- Inspired by the DMI Basilea Typst template (https://typst.app/universe/package/dmi-basilea-thesis/)
