\header {title = "Ray So" composer = "3AND"} 
verse = \chordmode {e1:m g1 c1 d1}
chorus = \chordmode {a1:m g1 f1 e1}
chorus_end = \chordmode {a1:m g1 c1 d1}
bassdrum = \drummode { bd4 bd4 bd4 bd4 }


\score 
{ \header { piece = "Verse" }
<<
    \new ChordNames{ \verse }
    \new Staff \with {midiInstrument = #"cello"} 
    {
        \tempo 4 = 150
        \repeat percent 10 
        \verse 
    }
    \new DrumStaff { 
        \repeat percent 10
        \drummode { \bassdrum \bassdrum \bassdrum \bassdrum  }
    }
>>
    \layout {}
    \midi {}
}

\score 
{ \header { piece = "Chorus" }
<<
    \new ChordNames{ \repeat percent 3 \chorus \chorus_end}
    \new Staff \with {midiInstrument = #"cello"} 
    {
        \tempo 4 = 150
        \repeat percent 3
        \chorus
        \chorus_end
    }
    \new DrumStaff { 
        \repeat percent 4
        \drummode { \bassdrum \bassdrum \bassdrum \bassdrum  }
    }
>>

    \layout {}
    \midi {}
}

