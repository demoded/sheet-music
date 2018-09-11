\header {title = "Ray So" composer = "3AND"} 
verse = \chordmode {e1:m g1 c1 d1}
chorus = \chordmode {a1:m g1 f1 e1}
\score
{

<<
    \new ChordNames{ \verse }
    \chordmode { \verse }
>>

    \layout {}
    \midi {}
}