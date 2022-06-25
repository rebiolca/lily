\version "2.23.6"

voiceI = \new Voice \relative c'' {
      \time 4/4
  \key c \major
  c2 d
  e1
  \bar "|."
}

voiceII = \new Voice \relative c'' {
      \time 4/4
  \key c \major
  g2 f
  e1
  \bar "|."
}

voiceIII = \new Voice \relative c' {
      \time 4/4
  \key c \major
  e2 d
  c1
  \bar "|."
}

voiceIV = \new Voice \relative c' {
      \time 4/4
  \key c \major
  \clef bass
  c2 b
  a1
  \bar "|."
}

voiceV = \new Voice \relative c' {
      \time 4/4
  \key c \major
  \clef bass
  c2 b
  a1
  \bar "|."
}

drumkit = \drums {
  hihat4 hh bassdrum bd
  hh hh bd hh
}

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "I." }
\voiceI 
    \new Staff \with { instrumentName = "II." }
\voiceII 
    \new Staff \with { instrumentName = "III." }
\voiceIII
    \new Staff \with { instrumentName = "IV." }
\voiceIV 
    \new Staff \with { instrumentName = "V." }
\voiceV
    \new Staff \with { instrumentName = "Drums" }
\drumkit
  >>
  \layout { }
  \midi { }
}
