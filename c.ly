% LilyBin
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
		\shape #'((0 . 0) (1 . -2.5) (0 . 4.35) (-0.6 . -6)) PhrasingSlur
		\partial 4 { c'4\( }
		
		% bar 1
		c8( d c) af'( g4)
		\showStaffSwitch
		\change Staff = "Lower" 
		\voiceOne
		<b,,, a'>4 <bf g'>4.\)
		\change Staff = "Upper"
		\oneVoice
    		f''8
		
		% bar 2
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
