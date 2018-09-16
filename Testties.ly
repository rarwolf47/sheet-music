\header {
  title = "Untitled"
  composer = "Composer"
}

arpTiesOn = {
  \set tieWaitForNote = ##t
}

testMusic = {
  \arpTiesOn
  \tuplet 10/8 {
    aes''8~ f' c'''~ a' des'''~
    <aes'' c''' des'''>4 b'8~ es''~ g''~
  }
  < b' es'' g''>2 r2
}

\score {
  \new Staff {
    \tempo "Andante" 4 = 86
    \testMusic
  }

  \layout {}
  \midi {}
}