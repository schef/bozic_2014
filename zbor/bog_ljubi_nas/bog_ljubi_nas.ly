\version "2.18.2"
\language "deutsch"

\header {
  title = "Bog ljubi nas"
  subtitle = "Duhovne pjesme 181"
}

global = {
  \key d \major
  \time 4/4
}

soprano = \relative c' {
  \global
  % Music follows here.
  %REFREN
  d4 fis8 g a4 a |
  h4 cis d2 |
  e2 cis4. cis8 |
  d2. r4 |
  d,4 fis8 g a4 a |
  
  h4 cis4 d2 |
  cis2 h4. h8 |
  a2. r4 |
  g4 g8 fis e4 g4 |
  fis4 d'4 a2 |
  
  g4 g8 fis e4 g |
  fis4 d' a2 |
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
  d4 d8 e fis4 fis |
  g4 g fis2 |
  g2 e4. e8 |
  fis2. r4 |
  d4 d8 e fis4 fis |
  
  g4 g fis2 |
  e2 d4. d8 |
  cis2. r4 |
  e4 e8 d cis4 e |
  d4 fis4 fis2 |
  
  e4 e8 d cis4 e4 |
  d4 fis fis2 |
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
  fis4 a8 a d4 d |
  d4 a4 a2 |
  h2 a4. a8 |
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
  a4 a8. a16 a4 r4 |
  r1 |
  a4 a8. a16 a4 r4 |
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
  d4 d8 d d4 d |
  g4 e4 d2 |
  g2 a4. a,8 |
  d2. r4 |
  d4 d8 d d4 d |
  
  g4 e d2 |
  e2 e4. e8 |
  a,2. r4 |
  a4 a8 d a'4 a, |
  d4 d d2 |
  
  a4 a8 d a'4 a, |
  d4 d d2 |
  d4 d8 e fis4 d4 |
  g4 g g2 |
  
  a2 a,4. a8 |
  d2. r4 |
  \bar "||"
  
  %REFREN
  r1 |
  a4 a8. a16 a4 r4 |
  r1 |
  d4 d8. d16 d4 r4 |
  d4 d8 e fis4 d4 |
  g4 g g2 |
  a2 a,4. a8 |
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
  Spa -- si -- telj nam se ro -- di -- o, koj smrt je za nas pod -- ni -- o,
  sveg svije -- ta grije -- he od -- ni -- o. __ Bog lju -- bi nas!
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Kli -- či -- te mu od ra -- do -- sti: "\"Bog" lju -- bi "nas!\""
  Za -- hval -- 'te na pri -- jaz -- no -- sti; Bog lju -- bi nas!
  On po -- mo -- ćnik je svi -- ma nam, lju -- bav nam svo -- ju pru -- ža sam,
  jad sva -- ki On u -- bla -- ži nam. Bog lju -- bi nas!
}

refSoprano = \lyricmode {
  Bog lju -- bi nas, Bog lju -- bi nas.
  Za -- poj -- te svi od ra -- do -- sti: __ "\"Bog" lju -- bi "nas!\""
}

refTenor = \lyricmode {
Bog lju -- bi nas, Bog lju -- bi nas.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
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
       \new Lyrics = "reftenor" \with {
      \override VerticalAxisGroup #'staff-affinity = #DOWN
    } 
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
 
    
    \context Lyrics = "verse1" \lyricsto "soprano" \verseOne
    \context Lyrics = "verse2" \lyricsto "soprano" {\verseTwo \refSoprano}
    \context Lyrics = "verse3" \lyricsto "soprano" \verseThree
    \context Lyrics = "reftenor" \lyricsto "tenor" {\repeat unfold 36 {_} \refTenor}
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
