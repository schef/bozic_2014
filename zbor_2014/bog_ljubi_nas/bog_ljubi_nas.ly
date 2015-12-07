\version "2.18.2"
\language "deutsch"

\header {
  title = \markup {\fontsize #6 "Bog ljubi nas"}
  subtitle = \markup {\hspace #19 \fontsize #-1 "Duhovne pjesme 181"}
  composer = "Božić 2014"
}

\paper {
  top-markup-spacing.padding = #5
  markup-system-spacing.padding = #3
  indent = 0
}

global = {
  \key d \major
  \time 4/4
}

soprano = \relative c' {
  \global
  % Music follows here.
  %REFREN
  d4\staccato fis8\staccato g\staccato a4\staccato a\staccato |
  h4\tenuto cis\tenuto d2\tenuto |
  e2 cis4 r8 cis8 |
  d2. r4 |
  d,4 fis8 g a4 a |
  
  h4 cis4 d2 |
  cis2 h4. h8 |
  a2. r4 |
  g4 g8 fis e4 g4 |
  fis4 d'4 a4 r4 |
  
  g4 g8 fis e4 g |
  fis4 d' a4 r4 |
  d4 d8 d d4 d |
  e4 d cis4( h) |
  
  a2 cis4. cis8 |
  d2. r4 |
  \bar "||"
  
  %REFREN
  a2 h4. h8 |
  g2. r4 |
  g2 a4. a8 |
  fis2. r4 |
  d'4 d8 d d4 d |
  e4 d cis( h) |
  a2 cis4. cis8 |
  d2. r4 |
  \bar "|."
  
}

alto = \relative c' {
  \global
  % Music follows here.
  %KITICA
  d4\staccato d8\staccato e\staccato fis4\staccato fis\staccato |
  g4\tenuto g\tenuto fis2\tenuto |
  g2 e4 r8 e8 |
  fis2. r4 |
  d4 d8 e fis4 fis |
  
  g4 g fis2 |
  e2 d4. d8 |
  cis2. r4 |
  e4 e8 d cis4 e |
  d4 fis4 fis4 r4 |
  
  e4 e8 d cis4 e4 |
  d4 fis fis4 r4 |
  fis4 fis8 g a4 fis4 |
  g4 g g2 |
  
  fis2 g4. g8 |
  fis2. r4 |
  \bar "||"
  
  %REFREN
  fis2 g4. g8 |
  e2. r4 |
  e2 fis4. fis8 |
  d2. r4 |
  fis4 fis8 g a4 fis |
  g4 g g2 |
  fis2 g4. g8 |
  fis2. r4 |
  \bar "|."
  
}

tenor = \relative c {
  \global
  % Music follows here.
  %KITICA
  fis4\staccato a8\staccato a\staccato d4\staccato d\staccato |
  d4\tenuto a4\tenuto a2\tenuto |
  h2 a4 r8 a8 |
  a2. r4 |
  fis4 a8 a d4 d |
  
  d4 a a2 |
  a2 gis4. gis8 |
  a2. r4 |
  r1 |
  r1 |
  
  r1 |
  r1 |
  a4 a8 a a4 a |
  h4 h4 cis4( d) |
  
  d2 a4. a8 |
  a2. r4 |
  \bar "||"
  
  %REFREN
  r1 |
  a4\staccato a8. a16 a4\tenuto r4 |
  r1 |
  a4\staccato a8. a16 a4\tenuto r4 |
  a4 a8 a a4 a |
  h4 h cis4( d) |
  d2 a4. a8 |
  a2. r4 |
  \bar "|."
}

bass = \relative c {
  \global
  % Music follows here.
  %KITICA
  d4\staccato d8\staccato d\staccato d4\staccato d\staccato |
  g4\tenuto e4\tenuto d2\tenuto |
  g2 a4 r8 a,8 |
  d2. r4 |
  d4 d8 d d4 d |
  
  g4 e d2 |
  e2 e4. e8 |
  a,2. r4 |
  a4\staccato\p a8\staccato\< d\staccato a'4 a,\mf\> |
  d4\tenuto d\tenuto d4\tenuto\! r4 |
  
  a4\staccato\p a8\staccato\< d\staccato a'4 a,\mf\> |
  d4\tenuto d\tenuto d4\tenuto\! r4 |
  d4 d8\< e fis4 d4 |
  g4 g g2 |
  
  a2\!\f a,4. a8 |
  d2. r4 |
  \bar "||"
  
  %REFREN
  r1 |
  a4\staccato a8. a16 a4\tenuto r4 |
  r1 |
  d4\staccato d8. d16 d4\tenuto r4 |
  d4\mf\< d8 e fis4 d4 |
  g4 g g2 |
  a2\!\f a,4. a8 |
  d2. r4 |
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Za -- poj -- te svi od ra -- do -- sti: "\"Bog" lju -- bi "nas!\""
  Kli -- či -- te Bo -- žjoj mi -- lo -- sti: "\"Bog" lju -- bi "nas!\""
  Pro -- bud -- 'te se iz greš -- nog sna, nek sva -- tko tra -- ži I -- su -- sa,
  ko -- ga Bog za spas du -- še da! __ Bog lju -- bi nas!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Na -- vije -- sti -- te to gre -- šnim svud: "\"Bog" lju -- bi "nas!\""
  On u -- ze na se na -- šu put; Bog lju -- bi nas! 
  Spa -- si -- telj nam se ro -- di -- o, koj' smrt je za nas po -- dni -- o,
  sveg svije -- ta grije -- he o -- dni -- o. __ Bog lju -- bi nas!
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Kli -- či -- te mu od ra -- do -- sti: "\"Bog" lju -- bi "nas!\""
  Za -- hval -- 'te na pri -- ja -- zno -- sti; Bog lju -- bi nas!
  On po -- mo -- ćnik je svi -- ma nam, lju -- bav nam svo -- ju pru -- ža sam,
  jad sva -- ki On u -- bla -- ži nam. __ Bog lju -- bi nas!
}

refSoprano = \lyricmode {
  Bog lju -- bi nas, Bog lju -- bi nas.
  Za -- poj -- te svi od ra -- do -- sti: __ "\"Bog" lju -- bi "nas!\""
}

refTenor = \lyricmode {
Bog lju -- bi nas, Bog lju -- bi nas.
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
    \context Lyrics = "verse2" \lyricsto "soprano" {\verseTwo \refSoprano}
    \context Lyrics = "verse3" \lyricsto "bass" {\verseThree \refTenor}
 %   \context Lyrics = "verse3" \lyricsto "tenor" {\repeat unfold 36 {_} \refTenor}
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
