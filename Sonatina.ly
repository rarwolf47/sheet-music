\language "english"

\header {
  title = "SONATINA."
  subtitle = "For Piano Solo"
  composer = "R. A. Rolfes"
}

initStaffHead = {
  \numericTimeSignature
  \time 4/4
  \key c \major
}

rightHand =
  <<
    \initStaffHead
    \clef treble
    \relative c' {
      \partial 8 {
        c'16 df~ df e8-. r16
        \set tieWaitForNote = ##f
        \tuplet 3/2 { gf8~ c~ df~ } <gf, c df>2
      }
    } 
    \\
    \relative c' {
    \partial 8 {
      <e~ gf~>8 <e gf>1
    }
    }
  >>

\score {
  \rightHand

  \layout {}
  \midi {}
}