\version "2.18.2"

\language "english"

\header {
  title = "SONATINA."
  subtitle = "WITH PRELUDE."
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
  <<
    \initStaffHead
    \clef treble
    \relative c' {
        r2 <d d'>2 <af af'>2
    } 
    \\
    \relative c' {
    }
  >>

\score {
  \rightHand

  \layout {}
  \midi {}
}
