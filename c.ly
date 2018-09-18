\version "2.18.2"
\language "english"

\header {
	title = "Prelude & Sonatina."
	subtitle = "Prelude in C."
	composer = "R. A. Rolfes."
	copyright = "Copyright 2018 - RAR. All rights reserved."
	tagline = ##f
}

initTempo = {
    \override Score.MetronomeMark.padding = #4.15
    \tempo "Andante maestoso" 2 = 40
}

initKeyTime = {
	\time 3/2
	\key c \major
}

pnoUpper = {
	\initKeyTime
	\clef treble
	\relative c' {
		% pickup
		%\shape #'((0 . 0) (1 . -2.5) (-0.75 . 4) (0 . -4)) PhrasingSlur
		\shape #'((0 . 0) (7.5 . 0) (-0.75 . 0.75) (0 . -4)) PhrasingSlur
		\partial 4 { c'4\( }
		
		% bar 1
		%\shape #'((0 . 0) (0 . 0) (0.25 . 0.25) (0 . 0)) Slur
		c8( d c) af'( g4)
		\showStaffSwitch
		\change Staff = "Lower" 
		\voiceOne
		<b,,, a'>4 <bf g'>4.\)
		\change Staff = "Upper"
		\oneVoice
    		f''8
		
		% bar 2
		%\shape #'((0 . 0) (0.25 . 0.15) (0.5 . 0.5) (0 . 0)) Slur
		\tuplet 3/2 {
			e'16[(_\markup { \italic "poco rubato" }
			df e~]
		}
		\tuplet 3/2 {
			e df8)
		}
    		c4-. s2*2
	}
}

pnoLower = {
	\initKeyTime
	\clef bass
	\relative c {
		\partial 4 { r4 }
		r2 
				e,2~ \voiceTwo e2

		\oneVoice 
		s2*3
	}
}

\score {
	{
		\new PianoStaff <<
			\new Staff = "Upper" <<
                \initTempo
				\pnoUpper
			>>
			\new Staff = "Lower" <<
				\pnoLower
			>>
		>>
	}

	\layout{}
	\midi{}
}
