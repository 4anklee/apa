#import "/src/lib.typ": *

#show: apa.with(
  title: "Test Paper Title",
  author: "Test Author",
  affiliation: "Test Department, Test University",
  course: "TEST 101: Test Course",
  instructor: "Dr. Test Instructor",
  due-date: "January 1, 2025",
)

This is a test paragraph to verify the APA template renders correctly.

#heading-1[Test Heading Level 1]

Content under heading level 1.

#heading-2[Test Heading Level 2]

Content under heading level 2.

#references[
  Test, A. (2024). Test reference entry. _Test Journal, 1_(1), 1-10.
]
