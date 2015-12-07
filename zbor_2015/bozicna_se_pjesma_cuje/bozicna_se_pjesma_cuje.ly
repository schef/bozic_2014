\version "2.19.29"
\language "deutsch"

\header {
  title = \markup {\fontsize #6 "Božićna se pjesma čuje"}
  subtitle = \markup {\hspace #19 \fontsize #-1 "Pušćine, Dravska 2, Božić 2015."}
  composer = "Felix Mendelsohn"
}

\paper {
  top-markup-spacing.padding = #5
  markup-system-spacing.padding = #3
  indent = 0
}

global = {
  \key g \major
  \time 4/4
}

soprano = \relative c' {
  \global
  % Music follows here.
  d4 g g4. fis8 |
  g4 h h a |
  d4 d d4. c8 |
  h4 a h2 |
  d,4 g g4. fis8 |
  
  g4 h h a |
  d4 a a4. fis8 |
  fis4 e d2 |
  d'4 d d g, |
  c4 h h( a) |
  
  d4 d d g, |
  c4 h h( a) |
  e'4 e e d |
  c4 h c2 |
  a4 h8( c) d4. g,8 |
  
  g4 a h2 |
  e4. e8 e4 d4 |
  c4 h c2 |
  a4 h8( c) d4. g,8 |
  
  g4 a4 g2 |
  \bar "|."
  
}

alto = \relative c' {
  \global
  % Music follows here.
  d4 d d4. d8 |
  d4 g g fis |
  g4 fis e a |
  g4 fis g2 |
  d4 d d4. c8 |
  
  h4 g'4 g2 |
  fis4 fis fis4. d8 |
  d4 cis d2 |
  d4 d d g |
  a4 g g( fis) |
  
  d4 d d g |
  a4 g g( fis) |
  c'4 c c h |
  a4 gis a2 |
  fis 4 fis g4. d8 |
  
  d4 fis g2 |
  c4. c8 c4 h |
  a4 gis a2 |
  d,4 fis g4. d8 |
  
  d4 fis g2 |
}

tenor = \relative c' {
  \global
  % Music follows here.
  h4 h h4. a8 |
  g4 d' d2 |
  d4 d e e |
  d4 d d2 |
  h4 h h4. a8 |
  
  g4 d' e2 |
  d4 e a,4. a8 |
  h4 g fis2 |
  d'4 d d d |
  d4 d d2 |
  
  d4 d d d |
  d4 d d2 |
  e4 e e f |
  e4 d c2 |
  d4 d d4. h8 |
  
  h4 d d2 |
  e4. e8 e4 d |
  c4 h c2 |
  d4 d d4. h8 |
  
  h4 c h2 |
}

bass = \relative c' {
  \global
  % Music follows here.
  g4 g g4. d8 |
  h4 g d'2 |
  h4 h c c |
  d4 d g,2 |
  g'4 g g4. d8 |
  
  e4 d cis4. a8 |
  h4 cis d fis |
  g,4 a d2 |
  d'4 d d h |
  fis4 g d2 |
  
  d'4 d d h |
  fis4 g d2 |
  c4 c c d |
  e4 e a2 |
  d4 c h4. g8 |
  
  d4 d g2 |
  c4. c8 c4 h |
  a4 gis a2 |
  fis4 c'4 h4. g8 |
  
  d4 d g2 |
}

dropLyrics = {
  \override LyricText.extra-offset = #'(0 . -1.5)
  \override LyricHyphen.extra-offset = #'(0 . -1.5)
  \override LyricExtender.extra-offset = #'(0 . -1.5)
  \override StanzaNumber.extra-offset = #'(0 . -1.5)
}

raiseLyrics = {
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
  \revert StanzaNumber.extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Bo -- ži -- ćna se pje -- sma ču -- je,
  sla -- va kra -- lju ro -- đe -- nom.
  Do -- ni -- o je mir na ze -- mlju, čo -- vje -- čan -- stvu spa -- se -- nje.
  
  Ra -- duj -- te se na -- ro -- di, __ kli -- či -- te u zbo -- ru svi! __
  Ne -- ka svije -- tom od -- zva -- nja, pje -- sma no -- ve ra -- do -- sti!
  \dropLyrics
  Za -- pje -- vaj -- mo ra -- do -- sno: Sla -- va kra -- lju ro -- đe -- nom!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Mi -- ro -- no -- sni Princ je ro -- đen,
  sun -- ce pra -- vde za -- sja nam.
  Svje -- tlo, ži -- vot On je na -- ma, i -- sti -- na i pra -- vi put.
  
  Sla -- vu je na -- pu -- sti -- o, __ čo -- vje -- kom je po -- sta -- o, __
  ro -- đen da nas po -- di -- gne, no -- vi __ ži -- vot po -- da -- ri.
  %Za -- pje -- vaj -- mo ra -- do -- sno: Sla -- va kra -- lju ro -- đe -- nom!
}


akordi = \chordmode {
  \semiGermanChords
   
}

#(define (rest-score r)
  (let ((score 0)
	(yoff (ly:grob-property-data r 'Y-offset))
	(sp (ly:grob-property-data r 'staff-position)))
    (if (number? yoff)
	(set! score (+ score 2))
	(if (eq? yoff 'calculation-in-progress)
	    (set! score (- score 3))))
    (and (number? sp)
	 (<= 0 2 sp)
	 (set! score (+ score 2))
	 (set! score (- score (abs (- 1 sp)))))
    score))

#(define (merge-rests-on-positioning grob)
  (let* ((can-merge #f)
	 (elts (ly:grob-object grob 'elements))
	 (num-elts (and (ly:grob-array? elts)
			(ly:grob-array-length elts)))
	 (two-voice? (= num-elts 2)))
    (if two-voice?
	(let* ((v1-grob (ly:grob-array-ref elts 0))
	       (v2-grob (ly:grob-array-ref elts 1))
	       (v1-rest (ly:grob-object v1-grob 'rest))
	       (v2-rest (ly:grob-object v2-grob 'rest)))
	  (and
	   (ly:grob? v1-rest)
	   (ly:grob? v2-rest)	     	   
	   (let* ((v1-duration-log (ly:grob-property v1-rest 'duration-log))
		  (v2-duration-log (ly:grob-property v2-rest 'duration-log))
		  (v1-dot (ly:grob-object v1-rest 'dot))
		  (v2-dot (ly:grob-object v2-rest 'dot))
		  (v1-dot-count (and (ly:grob? v1-dot)
				     (ly:grob-property v1-dot 'dot-count -1)))
		  (v2-dot-count (and (ly:grob? v2-dot)
				     (ly:grob-property v2-dot 'dot-count -1))))
	     (set! can-merge
		   (and 
		    (number? v1-duration-log)
		    (number? v2-duration-log)
		    (= v1-duration-log v2-duration-log)
		    (eq? v1-dot-count v2-dot-count)))
	     (if can-merge
		 ;; keep the rest that looks best:
		 (let* ((keep-v1? (>= (rest-score v1-rest)
				      (rest-score v2-rest)))
			(rest-to-keep (if keep-v1? v1-rest v2-rest))
			(dot-to-kill (if keep-v1? v2-dot v1-dot)))
		   ;; uncomment if you're curious of which rest was chosen:
		   ;;(ly:grob-set-property! v1-rest 'color green)
		   ;;(ly:grob-set-property! v2-rest 'color blue)
		   (ly:grob-suicide! (if keep-v1? v2-rest v1-rest))
		   (if (ly:grob? dot-to-kill)
		       (ly:grob-suicide! dot-to-kill))
		   (ly:grob-set-property! rest-to-keep 'direction 0)
		   (ly:rest::y-offset-callback rest-to-keep)))))))
    (if can-merge
	#t
	(ly:rest-collision::calc-positioning-done grob))))


\score {
  \new ChoirStaff <<
    %\new ChordNames {\akordi}
    \new Staff \with {
      \override RestCollision.positioning-done = #merge-rests-on-positioning
      midiInstrument = "choir aahs"
      %instrumentName = \markup \center-column { "S" "A" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics = "verse1" \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
    \new Lyrics = "verse2" \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }   
    \new Staff \with {
      \override RestCollision.positioning-done = #merge-rests-on-positioning
      midiInstrument = "choir aahs"
      %instrumentName = \markup \center-column { "T" "B" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \context Lyrics = "verse1" \lyricsto "soprano" \verseOne
    \context Lyrics = "verse2" \lyricsto "soprano" \verseTwo
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}


%{
convert-ly (GNU LilyPond) 2.19.31  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29
%}
