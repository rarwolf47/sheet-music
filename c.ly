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
}

initTempo = {
    \override Score.MetronomeMark.padding = #4
    \tempo "Moderately slow, stately" 2 = 40
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
		<b,,, a'>4 <bf g'>4.
		%\hideStaffSwitch
		\oneVoice
		%\once \hide Rest r4 
    \change Staff = "Upper" f''8( e'4 df c-.)
    s4*3
	}
}

pnoLower = {
	\initKeyTime
	\clef bass
	\relative c {
		\partial 4 { r4 }
		r2 %<< {
        		%\voiceOne
        		%r4 <b' a> <bf g>4\fermata |
      		%}
      		%\new Voice {
        		%\voiceTwo
				e,2~ \voiceTwo e2
      		%} %>> 
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
