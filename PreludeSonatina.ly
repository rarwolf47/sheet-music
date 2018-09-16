\version "2.18.2"

\language "english"

\header {
  title = "SONATINA & PRELUDE."
  subtitle = "For Solo Piano."
  composer = "R. A. Rolfes."
  copyright = "Copyright 2018 - RAR. All rights reserved."
  tagline = ##f
}

arpTiesOn = {
    \set tieWaitForNote = ##t
}


arpTiesOff = {
    \set tieWaitForNote = ##f
}

initStaffHead = {
  \numericTimeSignature
  \time 3/2
  \key c \major
}

rightHand =
  {
    \tempo "Andante" 2 = 43
    \initStaffHead
    \clef treble
    \relative c' {
        r2 <d d'>2 <af' af'> |
        r2 <a a'> <c c'> |
        \tuplet 3/2 { b8( f16~ } f8) r2  cs'8( g8 ~ g2)
    }
  }

\score {
  \rightHand

  \layout {}
  \midi {}
}
