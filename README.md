# APA 7th Edition Template for Typst

A Typst template for creating academic papers formatted according to APA 7th Edition guidelines (student paper format).

## Features

- Title page with all required elements (title, author, affiliation, course, instructor, due date)
- Optional abstract page with keywords
- Proper 1-inch margins on all sides
- Double-spacing throughout
- Times New Roman 12pt font (configurable)
- Page numbers in the header
- Five levels of APA headings
- Block quotes (for 40+ words)
- Figure and table formatting
- Reference page with hanging indents
- Appendix support
- Citation helper functions

## Getting Started

```typ
#import "@preview/apa7:0.1.0": *

#show: apa.with(
  title: "Your Paper Title Here",
  author: "Your Name",
  affiliation: "Department of Psychology, University Name",
  course: "PSY 101: Introduction to Psychology",
  instructor: "Dr. Professor Name",
  due-date: "December 8, 2025",
)

Your paper content goes here...
```

## Installation

### Using Typst Universe (Recommended)

Once published, you can import directly:

```typ
#import "@preview/apa7:0.1.0": *
```

### Local Installation

1. Clone this repository
2. Run the setup script: `./scripts/setup`
3. Import in your document:

```typ
#import "@local/apa7:0.1.0": *
```

## Usage

### Basic Setup

```typ
#import "@preview/apa7:0.1.0": *

#show: apa.with(
  title: "The Effects of Sleep on Memory Consolidation",
  author: "Jane Smith",
  affiliation: "Department of Psychology, State University",
  course: "PSY 301: Cognitive Psychology",
  instructor: "Dr. John Doe",
  due-date: "December 15, 2025",
)

// Your paper content starts here
// The title is automatically repeated at the beginning of the body
```

### With Abstract and Keywords

```typ
#show: apa.with(
  title: "Your Paper Title",
  author: "Your Name",
  affiliation: "Your Department, Your University",
  course: "Course Number: Course Name",
  instructor: "Instructor Name",
  due-date: "Due Date",
  abstract: [
    Your abstract text goes here. It should be a brief, comprehensive
    summary of the contents of the paper, typically 150-250 words.
  ],
  keywords: ("keyword one", "keyword two", "keyword three"),
)
```

### Multiple Authors

```typ
#show: apa.with(
  title: "Collaborative Research Paper",
  author: ("First Author", "Second Author", "Third Author"),
  // ... other parameters
)
```

### Custom Font

APA 7 allows several fonts. You can change from the default Times New Roman:

```typ
#show: apa.with(
  title: "Your Paper Title",
  author: "Your Name",
  // ... other parameters
  font: "Calibri",  // or "Arial"
  font-size: 11pt,
)
```

## Headings

APA 7 uses five levels of headings:

```typ
#heading-1[Level 1: Centered, Bold]

#heading-2[Level 2: Flush Left, Bold]

#heading-3[Level 3: Flush Left, Bold Italic]

#heading-4[Level 4 Heading]Indented, bold, ends with period. Text continues on same line.

#heading-5[Level 5 Heading]Indented, bold italic, ends with period. Text continues on same line.
```

## Citations

The template includes helper functions for in-text citations:

```typ
// Parenthetical citation: (Author, Year)
Research has shown significant effects #pcite("Smith", "2023").

// Narrative citation: Author (Year)
#ncite("Smith", "2023") found significant effects.

// Citation with page number: (Author, Year, p. X)
This was described as "direct quote" #pcite-p("Smith", "2023", "15").
```

## Block Quotes

For quotations of 40 or more words:

```typ
#block-quote[
  This is a longer quotation that would be 40 words or more. It is
  indented 0.5 inches from the left margin and does not use quotation
  marks. The citation appears at the end. #pcite-p("Author", "Year", "page")
]
```

## Figures and Tables

```typ
#apa-figure(
  image("figure.png", width: 80%),
  number: 1,
  caption: "Description of the figure",
  note: "Any additional notes about the figure.",
)

#apa-table(
  table(
    columns: 3,
    [Header 1], [Header 2], [Header 3],
    [Data], [Data], [Data],
  ),
  number: 1,
  caption: "Description of the table",
  note: "Any additional notes about the table.",
)
```

## References

```typ
#references[
  Author, A. B. (Year). Title of article. _Journal Name, Volume_(Issue),
  pages. https://doi.org/xxxxx

  Author, C. D. (Year). _Title of book_. Publisher.
]
```

## Appendix

```typ
#appendix(label: "A", title: "Survey Questions")

Your appendix content here...
```

## APA 7 Formatting Summary

This template implements the following APA 7 student paper requirements:

| Element | Format |
|---------|--------|
| Paper size | US Letter (8.5" x 11") |
| Margins | 1 inch on all sides |
| Font | Times New Roman, 12pt |
| Line spacing | Double-spaced |
| Paragraph indent | 0.5 inch first line |
| Page numbers | Top right corner |
| Title page | Centered elements |
| References | Hanging indent (0.5 inch) |

## License

MIT License - See [LICENSE](LICENSE) for details.

## Acknowledgments

- Based on the [APA 7th Edition Publication Manual](https://apastyle.apa.org/)
- Formatting guidelines from [Purdue OWL](https://owl.purdue.edu/owl/research_and_citation/apa_style/apa_formatting_and_style_guide/general_format.html)
