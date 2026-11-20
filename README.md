# FHNW Presentation Template for Typst

A professional presentation template following the University of Applied Sciences and Arts Northwestern Switzerland (FHNW) branding guidelines.

## Using This Template

This is a GitHub template repository. To create your own presentation:

1. Click the "Use this template" button at the top of this repository
2. Create a new repository with your desired name
3. Clone your new repository locally
4. Edit `example-presentation.typ` with your content
5. Compile with `typst compile example-presentation.typ`

That's it! Your presentation will be generated as `example-presentation.pdf`.

## Features

- Official FHNW colors and branding
- Pre-built layouts (2 and 3 columns, side-by-side)
- Styled content blocks (example, definition, alert)
- `spread()` fills sparse slides by distributing free space between items
- Custom slide types (section slides, key points)
- Comprehensive example showing all features

## Quick Start

After creating your repository from this template, start editing `example-presentation.typ`:

```typst
#import "lib.typ": *

#show: fhnw-theme.with(
  title: "Your Presentation Title",
  subtitle: "Optional Subtitle",
  authors: ("Your Name",),
  email: "your.email@fhnw.ch",
  date: "December 2024",
  logo: "assets/fhnw-logo.png",
)

= Your First Section

== Your First Slide

- Your content here
- Bullet points
- More content
```

Then compile:
```bash
typst compile example-presentation.typ
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

## What's Included

```
fhnw-presentation/
├── lib.typ                      # Template library (don't modify)
├── example-presentation.typ      # Your presentation (edit this!)
├── example-presentation.pdf      # Generated output
├── assets/                       # Logo files
│   ├── fhnw-logo.png
│   └── swissuniversity.png
├── images/                       # Your presentation images
│   └── campus-architecture.jpeg  # Example image (replace with yours)
└── README.md                     # This file
```

**What to modify:**
- `example-presentation.typ` - Replace with your presentation content
- `images/` - Add your own images here
- `assets/` - Keep the logos (unless you have updated versions)
- `lib.typ` - Only modify if you need to customize the template itself

## Examples

The included `example-presentation.typ` demonstrates all available features including:
- Section slides
- Multi-column layouts
- Content blocks (examples, definitions, alerts)
- Code blocks with syntax highlighting
- Tables and math formulas
- Side-by-side layouts
- Key points grid
- Spreading content over the slide with `spread()`

View the generated `example-presentation.pdf` to see what each feature looks like.

### Filling sparse slides

If a slide has too little content, `spread()` distributes the free space
equally between the given items (no effect when the slide is full). A
reserve below the last item keeps it clear of the footer; pass
`bottom: none` to use up all the space:

```typst
#spread(
  [- First point],
  [- Second point],
  [- Third point],
)
```

Trailing `#v(1fr)` before and after content centers it vertically instead.

## Requirements

- Typst 0.13.0 or newer
- Roboto font (optional, for body text)
- Source Code Pro font (optional, for code blocks)

## Images

Place your images in the `images/` directory and reference them with relative paths:

```typst
#image("images/my-image.png")
```

## Credits

- FHNW for original branding and colors
- Inspired by the DMI Basilea Typst template (https://typst.app/universe/package/dmi-basilea-thesis/)
