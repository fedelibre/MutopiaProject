\version "2.18.0"
\include "allegro.ily"

\header {
  title = "Concerto for Violin in A Minor"
  composer = "J.S. Bach"
  license = "Public Domain"
}

\paper {
  top-margin = 8\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1
  last-bottom-spacing.basic-distance = #12
  top-system-spacing.basic-distance = #12
  bottom-margin = 10\mm
  %line-width = 165\mm
  ragged-last = ##t
}

\score {
  \new Staff \with {
    instrumentName = "Violine"
    midiInstrument = "violin"
  }
  \allegroPart

  \layout {
    #(layout-set-staff-size 18)
    \context {
      \Score
      \override NonMusicalPaperColumn.line-break-permission = ##f
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  \midi {
    \tempo 4=100
  }
}
