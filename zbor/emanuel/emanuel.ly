\version "2.18.2"
%typesetter: schef
%date: 23-12-2014

\language "deutsch"

\header {
  title = \markup {\fontsize #6 "Emanuel"}
  %subtitle = \markup {\hspace #19 \fontsize #-1 "Duhovne pjesme 181"}
  composer = "Božić 2014"
}

\paper {
  top-markup-spacing.padding = #5
  markup-system-spacing.padding = #1.5
  system-system-spacing.padding = #0
}

global = {
  \time 4/4
  \key a \major
  %\tempo 4=82
   \numericTimeSignature
}

\paper {
  indent = 0
}

sopMusic = \relative c'' {
  \global
  \set Score.currentBarNumber = #20
  \mark \markup { \box \bold 20 }
  r4 a4^\markup {
  \general-align #X #CENTER {
    \hspace #1 \epsfile #X #4 #"../../svg/smile_happy.eps"
    %\epsfile #Y #20 #"context-example.eps"
  }
}
a gis8( a) |
  \time 2/4
  a2 ~ |
  \time 4/4
  a1 |
  r2 r4 cis,^\markup {
  \general-align #X #CENTER {
    \epsfile #X #4 #"../../svg/smile_sad.eps"
    %\epsfile #Y #20 #"context-example.eps"
  }
}
  | \bar "||"
  
  \mark \markup { \box \bold 24 }
  d2 ( ~ d8 cis ) h4 |
  cis2 r4 cis4 |
  d4( e8 f ~ f e ) d4 |
  cis2 r4 e4 | \bar ".|:"
  \mark \markup { \box \bold 28 }
  
  f2 ( ~ f8 e) d4 |
  e2 r4 e |
  f4 ( g8 a ~ a g ) f4 |
  \time 2/4 e4 r | \bar "||"
  
  \time 4/4
  \mark \markup { \box \bold 32 }
  \break
  fis8 gis gis4 gis8 a a( fis )
  r1 |
  fis8 gis gis4 gis8 a a4 ~ |
  a2 r8 cis8 h a |
  
  \mark \markup { \box \bold 36 }
  fis8 gis gis4 gis8 a a4 |
  a8 h h2.^\markup {
  \general-align #X #CENTER {
    \hspace #1 \epsfile #X #4 #"../../svg/smile_open.eps"
    %\epsfile #Y #20 #"context-example.eps"
  }
} |
  \time 2/4 r4 h8 ( cis ) |
  
  \time 4/4
  d4( cis h) cis8( a)
  a1 |
  
  %prima start
  \set Score.repeatCommands = #'((volta "1.2."))
  r4 a4 a gis8( a) |
  a2 r4 e4 
  %:|
  %start 3
  \set Score.repeatCommands = #'((volta #f) (volta "3.") end-repeat)
  r4 a a gis8( a)
  %end 3
  \set Score.repeatCommands = #'((volta #f))
  \mark \markup { \box \bold 44 }
  a1 |
  r4 a4 a gis8( a) |
  a1 |
  r4 a4 a gis8( a) |
  a1 ~ |
  a1 |
  r1\fermata | \bar "|."
}

altoMusic = \relative c'' {
  \global
   r4 a4 a gis8( a) |
  \time 2/4
  a2 ~ |
  \time 4/4
  a1 |
  r2 r4 cis, | \bar "||"
  
   d2 ( ~ d8 cis ) h4 |
  cis2 r4 cis4 |
  d4( e8 f ~ f e ) d4 |
  cis2 r4 cis4 | \bar ".|:"
  
  d2 ~ ( d8 cis ) h4 cis2 r4 cis |
  d4 ( e8 f ~ f e ) d4 |
  cis4 r4
  
  fis8 gis gis4 gis8 a a( fis )
  r1 |
  d8 e e4 e8 fis fis4 ~ |
  fis2 r2 |
  d8 e e4 e8 fis fis4 |
  fis8 g g2. |
  r4 g8( a) |
  h4( a g) a8( fis) |
  fis1 |
  r4 a4 a gis8 ( a) a2 r4 cis, |
  r1 |
  r4 cis 4 cis d d1 |
  r4 cis4 cis d |
  d a' a gis8( a) |
  a1 ~ |
  a1 |
  r1 |
  
  
  
}

tenorMusic = \relative c' {
  \global
  r4 a4 a gis8( a) |
  \time 2/4
  a2 ~ |
  \time 4/4
  a1 |
  r2 r4 e\p\< | \bar "||"
  
  f2 ~ ( f8\> e ) d4 e2\! r4 e4 |
  f4\< ( g8 a ~ a\> g ) f4 |
  e2\! r4 a4\mp |
  
  a2. a4 a2 r4 a4 |
  a2. a4 a4 r4 |
  
  fis8\f gis gis4 gis8 a a( fis )
  r1 |
  a8 h h4 h8 cis cis4 ~ cis2 r8 cis8 h a |
  
  a8 h h4 h8 cis cis4 |
  cis8 d d2. |
  r4 h8( cis) |
  
  d4 ( cis h) cis4 |
  cis2. ( d4 )
  r4 a a gis8( a) |
  a2 r4 a\mp |
  r2 r4 e4 |
  h'4 a a2 ~ a2 r4 e |
  h'4 a a2 |
  r4 a4 a gis8( a) |
  a1 ~ |
  a1 |
  r1\fermata |
  
}

bassMusic = \relative c' {
  \global
   r4 a4 a gis8( a) |
  \time 2/4
  a2 ~ |
  \time 4/4
  a1 |
  r2 r4 e | \bar "||"
  
  f2 ~ ( f8 e ) d4 e2 r4 e4 |
  f4 ( g8 a ~ a g ) f4 |
  e2 r4 a4 |
  
  a2. a4 a2 r4 a4 |
  a2. a4 a4 r4 |
  
  fis8 gis gis4 gis8 a a( fis )
   r1 |
  a8 h h4 h8 cis cis4 ~ cis2 r2 |
  d,8\ff e e4 e8 fis fis4 |
  fis8 g g2. r4 g8( a) 
  
  h4 ( a g) a8( fis) |
  fis1 |
  
  r4 a a gis8( a) |
  a2 r4 a |
  r2 r4 e4 |
  h'4 a a2 ~ a2 r4 e |
  h'4 a a2 |
  r4 a4 a gis8( a) |
  a1 ~ |
  a1 |
  r1 |
  
}

sopWords = \lyricmode {
   E -- ma -- nu -- el __
  E -- ma -- nu -- el,
  E -- ma -- nu -- el.
  E -- ma -- nu -- el,
  E -- ma -- nu -- el.
  Pre -- di -- vni sa -- vje -- tnik.
  Sil -- ni Bog, Bog nad svim. __
  I on je mi -- ra knez, mo -- čni Bog. On je svet!
  E -- ma -- nu -- el., __ E -- ma -- nu -- el. E
  _ _ _ _ _ _ _ _
  E -- ma -- nu -- el. __
}

sopWordsGore = \lyricmode {
 \repeat unfold 53 _
 \tiny E -- ma -- nu -- el, E -- ma -- nu -- el,
}

altoWords = \lyricmode {
 \repeat unfold 50 _
\tiny  E -- ma -- nu -- el, E -- ma -- nu -- el,
}

tenorWords = \lyricmode {
  \repeat unfold 53 _
   \tiny E -- ma -- nu -- el, E -- ma -- nu -- el,
}

%bassWords = \lyricmode {
%  ho ho ho ho
%}

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
    \new Lyrics = "sopranosGore" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "sopranos"
    \new Lyrics = "altos"
    %\new Lyrics = "tenors" \with {
      % this is needed for lyrics above a staff
    %  \override VerticalAxisGroup.staff-affinity = #DOWN
    %}
    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \new Lyrics = "basses"
    \context Lyrics = "sopranosGore" \lyricsto "sopranos" \sopWordsGore
    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    \context Lyrics = "altos" \lyricsto "altos" \altoWords
    \context Lyrics = "basses" \lyricsto "tenors" \tenorWords
    %\context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
     \layout {
     \context {
       \Staff
       \override RestCollision.positioning-done = #merge-rests-on-positioning
     }
   }
   \midi { \tempo 4 = 82 }
}