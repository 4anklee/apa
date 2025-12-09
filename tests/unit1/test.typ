#import "/src/lib.typ": *

// Test citation helpers
#let test-pcite = pcite("Author", "2024")
#assert(test-pcite != none, message: "pcite should return content")

#let test-ncite = ncite("Author", "2024")
#assert(test-ncite != none, message: "ncite should return content")

#let test-pcite-p = pcite-p("Author", "2024", "15")
#assert(test-pcite-p != none, message: "pcite-p should return content")

// Basic assertions
#assert(true)
