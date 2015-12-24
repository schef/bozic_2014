\version "2.19.29"
\language "deutsch"

\header {
  title = \markup {\fontsize #6 "O dođite vjerni"}
  subtitle = \markup {\hspace #19 \fontsize #-1 "BC Pušćine, Božić 2015."}
  composer = ""
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

soprano = \relative c'' {
  \global
  % Music follows here.
  \partial 4
  g4\f |
  g2 d4 g |
  a2 d, |
  h'4 a h c |
  h2 a4 g |
  g2 fis4 e |
  fis4( g) a h |
  fis2\( e4.\) d8 |
  d2. r4 |
  
  d'2\> c4 h |
  c2 h |
  a4 h g a
  fis4. e8\! d4 g\p |
  g4 fis g a |
  g2 d4 h'\mf |
  
  h4 a h c |
  h2 a4 h\f |
  c4 h a g |
  fis2 g4 c |
  h2( a4.) g8 |
  g2.
  \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  d4 |
  d2 d4 d |
  e2 d |
  d4 d d e |
  d2 d4 h |
  h4 cis d cis |
  d4( d) d d |
  d2( cis4.) d8 |
  d2. r4 |
  
  d2 e8 fis g4 |
  g4 fis g2 |
  d4 d e e |
  d4. d8 d4 r4 |
  r1 |
  r2 r4 d4 |
  d4 d d d |
  d2 d4 g4 |
  e8 fis g4 d d8 cis |
  d2 d4 e |
  d2( d4.) h8 |
  h2. 
}

tenor = \relative c' {
  \global
  % Music follows here.
  h4 |
  h2 h4 h |
  c2 a |
  g4 a g g |
  g2 fis4 g |
  g2 a4 a |
  a4( g) fis g |
  a2( g4.) fis8 |
  fis2. r4 |
  
  h2 c4 d |
  c2 d |
  a4 g h c |
  a4. g8 fis4 h |
  h4 a h c |
  h2 g4 g |
  
  g4 fis g a |
  g2 fis4 d' |
  c4 d a a |
  a2 g4 g |
  g2( fis4.) g8 |
  g2.
}

bass = \relative c' {
  \global
  % Music follows here.
  g4 |
  g2 g4 g |
  g2 fis |
  g4 fis g c, |
  d2 d4 e |
  e2 d4 a |
  d4( h) fis' e |
  a,2( a4.) d8 |
  d2. r4 |
  
  h'2 a4 g |
  a2 g |
  fis4 g e c |
  d4. d8 d4 r4 |
  r1 |
  r1 |
  
  r1 |
  r2 r4 g4 |
  a4 g fis e |
  d4 c h c |
  d2( d4.) d8 |
  g,2.
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
  O, do -- đi -- te vjer -- ni, ra -- do -- sno i slo -- žno,
  svi do -- đi -- te sa -- da u Be -- _ tle -- hem. __
  Dje -- te -- tu ne -- ba svi se sad po -- klo -- ni -- te.
  

}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Nek zvu -- ci se o -- re, an -- đe -- o -- ske pje -- sme.
  Hajd' pje -- vaj -- te sa -- da svi na -- _ ro -- di. __ Sla -- va i hva -- la Bo -- gu na vi -- si -- _ ni.
  
  O, hva -- li -- mo -- ga sa -- da, o hva -- li -- mo ga sa -- da,
  o, hva -- li -- mo svi Go -- spo -- da I -- su -- sa! __
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Mi sla -- vi -- mo te -- be, I -- su -- se naš dra -- gi, nek' te -- bi je sla -- va
  za sve vje -- ko -- ve. __ Ti sa -- mo mo -- žeš i -- zba -- vi -- ti lju -- _ de.
}


akordi = \chordmode {
  \semiGermanChords
  \set chordChanges = ##t
  \partial 4
  g4 |
  g1 |
  a2:m d |
  g4 d g c |
  g2 d2 |
  e2:m d4 a |
  d4 g d g |
  d2 a4 d |
  d2. d4:7 |
  d2 a4:m g |
  a2:m g |
  d4 g e:m a:m |
  d1 |
  g4 d g d:7 |
  g1 |
  g4 d g d:7 |
  g2 d |
  a4:m g d a |
  d2 g4 c |
  g2 d |
  g2. 
  
  
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
    \new ChordNames {\akordi}
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
    \new Lyrics = "verse3" \with {
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
    \context Lyrics = "verse3" \lyricsto "soprano" \verseThree
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
