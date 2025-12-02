# FHNW Presentation Template for Typst

A professional presentation template following the University of Applied Sciences and Arts Northwestern Switzerland (FHNW) branding guidelines.

## Features

- Official FHNW colors and branding
- Pre-built layouts (2 and 3 columns, side-by-side)
- Styled content blocks (example, definition, alert)
- Custom slide types (section, last slide, references)

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
