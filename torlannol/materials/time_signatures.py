import abjad
import evans

reference_meters = (
    abjad.Meter("(2/8 (1/4))"),
    abjad.Meter("(4/8 (1/4 1/4))"),
    abjad.Meter("(6/8 (1/4 1/4 1/4))"),
    abjad.Meter("(8/8 (1/4 1/4 1/4 1/4))"),
    abjad.Meter("(5/4 (1/4 1/4 1/4 1/4 1/4))"),
    abjad.Meter("(6/4 (1/4 1/4 1/4 1/4 1/4 1/4))"),
    abjad.Meter("(7/4 (1/4 1/4 1/4 1/4 1/4 1/4 1/4))"),
    abjad.Meter("(8/16 (1/4 1/4))"),
    abjad.Meter("(7/16 (1/4 3/16))"),
    abjad.Meter("(6/16 (1/4 1/8))"),
)

##
## 01 ##
##

signatures_01 = [
    abjad.TimeSignature((3, 8)),  # part 1
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((4, 8)),  # part 2
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((6, 8)),
    abjad.TimeSignature((7, 8)),  # part 3
    abjad.TimeSignature((6, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((2, 8)),  # part 4
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((4, 8)),  # part 5
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((9, 8)),  # part 6
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((8, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((7, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((6, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((2, 8)),  # part 7
    abjad.TimeSignature((5, 8)),  # part 8
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((2, 8)),  # part 9
    abjad.TimeSignature((1, 8)),  # part 10
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((7, 8)),  # part 11
    abjad.TimeSignature((6, 8)),
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((5, 8)),  # part 12
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((6, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((5, 8)),
]

signatures_01.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_01 = [53]

reduced_signatures_01 = evans.reduce_fermata_measures(
    signatures_01, fermata_measures_01
)

##
## total ##
##

all_signatures = evans.join_time_signature_lists(
    [
        reduced_signatures_01,
    ]
)
