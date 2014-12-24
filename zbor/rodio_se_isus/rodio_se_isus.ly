\version "2.18.2"
\language "deutsch"

\header {
  title = \markup {\fontsize #6 "Rodio se Isus"}
  %subtitle = \markup {\hspace #19 \fontsize #-1 "Duhovne pjesme 181"}
  composer = "Frank Bosh"
  poet = "Božić 2014"
  
}

\paper {
  top-markup-spacing.padding = #5
  markup-system-spacing.padding = #3
}

global = {
  \key b \major
  \time 4/4
}

soprano = \relative c' {
  \global
  % Music follows here.
  d8 d d d f f f g |
  d4( c) b r8 b8 |
  b2 es4 d8 d |
  r2. f,8 f |
  d'8 d d d f f f g |
  d4 c b r8 b8 |
  b4 b d c8 b |
  r2. r8 b8 |
  
  b8 d d d( d4) r8 d8 |
  d8 f f f( f4) d8 f |
  f8 g r4 f8 f d4 |
  c8 b c4 d r8 b8 |
  b8 d4 d8( d4) r8 d8 |
  d8( f4) f8( f4) d8 f |
  es2 ~ es2 |
  
  c'2 b8 c b a |
  \repeat volta 2{
  g2 a |
  f2 b8 c b a |
  g2 a2 |
  f2 b8 c b a |
  g2 a |
  b2 f8 es d f |
  }
  \alternative{
  {
    es2.( f4) |
    c2 b'8 c b a |
  }
  {
    es2.( f4) |
    c2. r4 |
  }
  }
  \bar "||"
  
 % \break
  es2.^\markup{Coda}( f4) |
  c2 d8 c c b |
  c4 b2. |
  r2 d8 c c b |
  c4 b2. |
  \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  d8 d d d f f f g |
  d4( c) b r8 b8 |
  b2 es4 d8 d |
  r2. f,8 f |
  d'8 d d d f f f g |
  d4 c b r8 b8 |
  b4 b d c8 b |
  r2. r8 b8 |
  
  b8 d d d( d4) r8 d8 |
  d8 f f f( f4) d8 f |
  f8 g r4 f8 f d4 |
  c8 b c4 d r8 b8 |
  b8 d4 d8( d4) r8 d8 |
  d8( f4) f8( f4) d8 f |
  es2 ~ es2 |
  
  c2 f8 g f f | 
  \bar ".|:"
  es2 f |
  d2 f8 g f f |
  es2 f2 |
  d2 f8 g f f |
  es2 f |
  g2 d8 c b d |
  
  es2.( f4) |
  c2 f8 g f f |

  es2.( f4) |
  c2. r4
  \bar "||"
  
  es2.( f4) |
  c2 d8 c c b |
  c4 b2. |
  r2 d8 c c b |
  c4 b2. |
  \bar "|."
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  b8 b b b c c c c |
  b4( a) g r8 g8 |
  g2 b4 b8 b |
  r2. f8 f |
  b8 b b b c c c c |
  b4 a g r8 g8 |
  g4 g b a8 b |
  r2. r8 d,8 |
  
  d8 f f f( f4) r8 f8 |
  f8 a a a( a4) f8 a8 |
  a8 b r4 b8 b f4 |
  es8 d es4 f r8 d8 |
  d8 f4 f8( f4) r8 f8 |
  f8( a4) a8( a4) f8 a |
  g2( b2) |
 
  a2 d8 es d c |
  \bar ".|:"
  b2 c |
  b2 d8 es d c |
  b2 c |
  b2 d8 es d c |
  
  b2 c |
  d2 b8 g f b |
  g2.( b4) |
  a2 d8  es d c |
  
  g2.( b4) a2. r4 |
  
  g2.( b4) a2 f8 es es d |
  es4 d2. |
  r2 f8 es es d |
  es4 d2. |
 
}

bass = \relative c' {
  \global
  % Music follows here.
  b8 b b b c c c c |
  b4( a) g r8 g8 |
  g2 b4 b8 b |
  r2. f8 f |
  b8 b b b c c c c |
  b4 a g r8 g8 |
  g4 g b a8 b |
  r2. r8 d,8 |
  
  d8 f f f( f4) r8 f8 |
  f8 a a a( a4) f8 a8 |
  a8 b r4 b8 b f4 |
  es8 d es4 f r8 d8 |
  d8 f4 f8( f4) r8 f8 |
  f8( a4) a8( a4) f8 a |
  g2( b2) |
  
  a2 d8 es d c |
  \bar ".|:"
  b2 c |
  b2 d8 es d c |
  b2 c |
  b2 d8 es d c |
  
  b2 c |
  d2 b8 g f b |
  g2.( b4) |
  a2 d8  es d c |
  
  g2.( b4) a2. r4 |
  
  g2.( b4) a2 f8 es es d |
  es4 d2. |
  r2 f8 es es d |
  es4 d2. |
}

akordi = \chordmode {
  %\semiGermanChords
  \set chordChanges = ##t
  b1 | g1:m | es | b | b2 f |
  g1:m | es2 f | b1 | b | f |
  g2:m b | f b | b1 | f | f |
  f |
  
  es2 f | b1 | es2 f | b1 | es2 f | g1:m |
  es1 | f | es | f | es  | f |
  b1 | b:sus4 | b |
}

verseOne = \lyricmode {
  %\set stanza = "1."
  % Lyrics follow here.
  I -- ma ta -- ko pu -- no lo -- ših vije -- sti iz da -- na u dan,
  a po an -- đe -- lu je do -- šla je -- dna do -- bra vijest to ni -- je sa -- mo san.
  Ne pla -- ši -- te se, ne pla -- ši -- te se jer vam, e -- vo, do -- no -- sim
  ra -- do -- snu vijest o ve -- li -- kom ve -- se -- lju za sav na -- rod:
  
  Ro -- di -- o se Spa -- si -- telj,
  ro -- di -- o se Bra -- ni -- telj,
  ro -- di -- o se Stvo -- ri -- telj,
  ro -- di -- o se I -- sus.
  Ro -- di -- o se I -- sus.
  I -- sus, ro -- di -- o se I -- sus, ro -- di -- o se I -- sus.
  
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
      instrumentName = \markup \center-column { "Soprano" "Alto" }
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
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \context Lyrics = "verse1" \lyricsto "soprano" \verseOne
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
