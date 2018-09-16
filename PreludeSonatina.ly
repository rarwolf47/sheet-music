\version "2.18.2"

\language "english"

\header {
  title = "SONATINA & PRELUDE."
  composer = "R. A. Rolfes."
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
    \initStaffHead
    \clef treble
    \relative c' {
        r2 <d d'>2 <af' af'> |
        r2 <a a'> <c c'> |
        b16( f8.~ f4) r cs'8 <g, g'>8~ <g g'>2
    }
  }

\score {
  \rightHand

  \layout {}
  \midi {}
}
