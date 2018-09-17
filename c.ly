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

initKeyTime = {
	\time 3/2
	\key c \major
	\tempo "Andante, stately" 2 = 40
}

pnoUpper = {
	\initKeyTime
	\clef treble
	\relative c' {
		\partial 4 { c' }
		c8( d c af' g4-.)
		\showStaffSwitch
		\change Staff = "Lower" 
		\voiceOne
		<b,,, a'>4 <bf g'>\fermata
		\hideStaffSwitch
		\change Staff = "Upper"
		\oneVoice
		f''4 |
	}
}

pnoLower = {
	\initKeyTime
	\clef bass
	\relative c {
		\partial 4 { r } |
		r2 %<< {
        		%\voiceOne
        		%r4 <b' a> <bf g>4\fermata |
      		%}
      		%\new Voice {
        		\voiceTwo
				e,2~ e4\fermata |
      		} %>> 
		%\oneVoice 
		r4
	%}
}

\score {
	{
		\new PianoStaff <<
			\new Staff = "Upper" <<
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
