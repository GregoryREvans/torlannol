import pathlib
import random

import abjad
import baca
import evans
import numpy as np
from abjadext import rmakers

import torlannol

pitch_segment = evans.PitchSegment(
    [
        -18,
        -17.5,
        -18,
        -17.5,
        -18,
        -17.5,
        -6.5,
        -7,
        -19,
        -17,
        -9.5,
        -7.5,
        -12.5,
        -12,
        -13.5,
        -12,
        -5.5,
        -7.5,
        -15,
        -17,
        -18,
        -15,
        -4,
        4,
        7,
    ]
)

pitch_segment_ = (
    pitch_segment
    + pitch_segment.transpose(1).invert(-6).retrograde()
    + pitch_segment.transpose(1.5).retrograde()
)

random.seed(1)

maker = evans.SegmentMaker(
    instruments=torlannol.instruments,
    names=[
        '"Violoncello"',
    ],
    abbreviations=[
        '" "',
    ],
    name_staves=False,
    fermata_measures=torlannol.fermata_measures_01,
    commands=[
        evans.MusicCommand(
            ("cello voice", (0, 8)),
            evans.note(),
            torlannol.make_subdivided_music(
                subdivisions=[2, 3, 4, 5],
                subsubdivisions=[3, 4, 5],
                subsubdivision_selector=lambda _: abjad.select.get(
                    _, [0, 0 + 4, 0 + 4 + 5, 0 + 4 + 5 + 3], period=0 + 4 + 5 + 3
                ),
                sustain_counts=[6, 5, 4],
                sustain_boolean_vector=[
                    False,
                    False,
                    False,
                    False,
                    False,  # 5
                    True,
                    True,
                    True,  # 3
                    False,
                    False,
                    False,
                    False,  # 4
                    True,
                    True,
                    True,
                    True,
                    True,  # 5,
                    False,
                    False,
                    False,  # 3
                    True,
                    True,
                    True,
                    True,  # 4
                ],
            ),
            lambda _: [
                rmakers.force_rest(x)
                for x in abjad.select.get(
                    abjad.select.logical_ties(_), [5, 10], period=12
                )
            ],
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16 c'16", position=18),
                abjad.select.leaf(_, 9, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16 c'16 c'16", position=18),
                abjad.select.leaf(_, 10, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(
                    components="c'16 c'16 c'16 c'16", position=18
                ),
                abjad.select.leaf(_, 11, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16", position=18),
                abjad.select.leaf(_, 17, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16", position=18),
                abjad.select.leaf(_, 22, pitched=True, grace=False),
            ),
            evans.PitchHandler(
                evans.Sequence([_ for _ in np.arange(-24, 0, 0.5)])
                .mirror(sequential_duplicates=False)
                .rotate(4)
                .random_walk(
                    length=41,
                    step_list=[
                        40,
                        2,
                        3,
                        2,
                        3,
                        30,
                        10,
                        5,
                        4,
                        5,
                        3,
                        12,
                        1,
                        2,
                        2,
                        2,
                        3,
                        2,
                        3,
                        3,
                        1,
                        5,
                        4,
                        5,
                        3,
                        2,
                        1,
                        2,
                        2,
                        2,
                        3,
                        2,
                        3,
                        3,
                        1,
                        5,
                        4,
                        5,
                        3,
                        2,
                        1,
                    ],
                    random_seed=112 % 13,
                )
            ),
            lambda _: torlannol.circle_stems(
                abjad.select.runs(abjad.select.leaves(_, grace=True))[0]
            ),
            lambda _: torlannol.circle_stems(
                abjad.select.runs(abjad.select.leaves(_, grace=True))[1]
            ),
            lambda _: torlannol.circle_stems(
                abjad.select.runs(abjad.select.leaves(_, grace=True))[2], alternate=True
            ),
            # lambda _: abjad.beam(_, stemlet_length=1.5),
            lambda _: torlannol.zero_padding_glissando(
                abjad.select.get(
                    abjad.select.leaves(_, pitched=True, grace=False),
                    [0, 1, 2],
                )
            ),
            lambda _: torlannol.zero_padding_glissando(
                abjad.select.get(
                    abjad.select.leaves(_, pitched=True, grace=False),
                    [5, 6, 7, 8],
                )
            ),
            lambda _: torlannol.zero_padding_glissando(
                abjad.select.get(
                    abjad.select.leaves(_, pitched=True, grace=False),
                    [12, 13, 14],
                )
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.StartTrillSpan(),
                    r'- \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"',
                ),
                abjad.select.leaf(_, 3, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(_, 3, pitched=True, grace=False), 1),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 3, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    0.5, 0.25, 0.5, 0.25, 0.5, 5, 4, right_padding=0.5, match=True
                ),
                selector=lambda _: abjad.select.leaf(_, 3, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.AfterGraceContainer(
                    "aqf16", position=18, with_glissando=True, hide_accidentals=True
                ),
                selector=lambda _: abjad.select.leaf(_, 3, pitched=True, grace=False),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 4, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    0.5, 1, 0.5, 2, 4, 3, 0.5, right_padding=0.5, match=True
                ),
                selector=lambda _: abjad.select.leaf(_, 4, pitched=True, grace=False),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 4, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.AfterGraceContainer(
                    "bf16", position=18, with_glissando=True, hide_accidentals=True
                ),
                selector=lambda _: abjad.select.leaf(_, 4, pitched=True, grace=False),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, 9, pitched=True, grace=False),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(
                    r"\once \override Staff.NoteHead.style = #'cross", site="before"
                ),
                selector=lambda _: abjad.select.leaf(_, 10, pitched=True, grace=False),
            ),
            evans.Attachment(
                abjad.BendAfter(-5),
                selector=lambda _: abjad.select.leaf(_, 10, pitched=True, grace=False),
            ),
            lambda _: evans.ArticulationHandler(["tremolo"])(
                abjad.select.leaf(_, 10, pitched=True, grace=False)
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 11, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    0.5,
                    0.5,
                    0.5,
                    4,
                    3,
                    2,
                    5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    right_padding=0.5,
                    match=True,
                ),
                selector=lambda _: abjad.select.leaf(_, 11, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.AfterGraceContainer(
                    "eqs16", position=18, with_glissando=True, hide_accidentals=True
                ),
                selector=lambda _: abjad.select.leaf(_, 11, pitched=True, grace=False),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 21, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    0.5,
                    0.5,
                    0.5,
                    4,
                    0.5,
                    0.5,
                    5,
                    0.5,
                    3,
                    0.5,
                    0.5,
                    right_padding=0.5,
                    match=True,
                ),
                selector=lambda _: abjad.select.leaf(_, 21, pitched=True, grace=False),
            ),
            evans.Attachment(
                evans.AfterGraceContainer(
                    "bqs,16", position=18, with_glissando=True, hide_accidentals=True
                ),
                selector=lambda _: abjad.select.leaf(_, 21, pitched=True, grace=False),
            ),
            lambda _: evans.make_multi_trill(
                abjad.select.logical_tie(_, 22, pitched=True, grace=False),
                "fqs",
                "gs",
                notehead_styles=[None],
                after_spacing="1/16",
                extra_padding=10,
            ),
            lambda _: evans.make_multi_trill(
                abjad.select.logical_tie(_, 23, pitched=True, grace=False),
                "g",
                "fqs",
                "as",
                notehead_styles=[None],
                after_spacing="1/16",
                extra_padding=10,
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(abjad.select.run(_, -3), 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(abjad.select.run(_, -3), -1),
            ),
            lambda _: evans.text_span([r"P", "MSP"], "=>", padding=12, id=1)(
                abjad.select.run(_, 0)
            ),
            lambda _: evans.text_span([r"P", "T"], "=>", padding=12, id=1)(
                abjad.select.run(_, 1)
            ),
            lambda _: evans.text_span([r"N", "MSP"], "=>", padding=17, id=1)(
                abjad.select.run(_, 2)
            ),
            lambda _: evans.text_span([r"MSP", "P"], "=>", padding=14, id=1)(
                abjad.select.run(_, 3)
            ),
            lambda _: evans.text_span([r"MST", "MSP"], "=>", padding=16, id=1)(
                abjad.select.run(_, 4)
            ),
            lambda _: evans.text_span([r"P", "MST"], "=>", padding=12, id=1)(
                abjad.select.run(_, 5)
            ),
            lambda _: evans.ArticulationHandler(
                ["accent"],
                articulation_boolean_vector=[
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                ],
            )(abjad.select.leaves(_, grace=False)),
            evans.Attachment(
                abjad.Dynamic("sfp"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), 2, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), 3, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), 4, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 1), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 1), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 1), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(abjad.select.run(_, 2), 0),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(abjad.select.run(_, 2), 6),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(abjad.select.run(_, 2), 7),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 2), 3, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 2), 3, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mp", leak=True),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 2), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 3), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 3), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 3), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 4), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 4), 2, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 4), 2, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 4), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 5), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 5), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 5), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 6), 0, grace=False
                ),
            ),
            abjad.Clef("bass"),
            # torlannol.A_color,
        ),
        evans.MusicCommand(
            ("cello voice", (8, 11)),
            evans.RTMMaker(
                [
                    f"(1 (({random.choice([4, 3, 2, 1])} (1 1)) ({random.choice([3, 2])} (1 1 1)) ({random.choice([3, 2, 1])} (1 1 1 1)) ({random.choice([2, 1])} (1 1 1)) ({random.choice([3, 2])} (1 1))))",
                    f"(1 (({random.choice([4, 3, 2, 1])} (1 1 1)) ({random.choice([3, 2])} (1 1 1 1)) ({random.choice([3, 2, 1])} (1 1 1)) ({random.choice([2, 1])} (1 1)) ({random.choice([3, 2])} (1 1))))",
                    f"(1 (({random.choice([4, 3, 2, 1])} (1 1 1 1)) ({random.choice([3, 2])} (1 1 1)) ({random.choice([3, 2, 1])} (1 1)) ({random.choice([2, 1])} (1 1)) ({random.choice([3, 2])} (1 1 1))))",
                ],
            ),
            lambda _: [
                rmakers.force_rest(x)
                for x in abjad.select.get(
                    abjad.select.logical_ties(_), [5, 13], period=15
                )
            ],
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(-24, 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(
                    length=14 * 3,
                    step_list=[2, 4, 6, 8, 1, 8, 7, 6, 5, 4, 3],
                    random_seed=4,
                )
            ),
            torlannol.zero_padding_glissando,
            # lambda _: abjad.beam(_, stemlet_length=1.5),
            lambda _: abjad.attach(
                abjad.Dynamic("sfp"), abjad.select.leaf(abjad.select.run(_, 0), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("<"), abjad.select.leaf(abjad.select.run(_, 0), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-f"),
                abjad.select.leaf(abjad.select.run(_, 0), -1),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("mf"), abjad.select.leaf(abjad.select.run(_, 1), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("<|"), abjad.select.leaf(abjad.select.run(_, 1), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-ff"),
                abjad.select.leaf(abjad.select.run(_, 1), -1),
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.StartTrillSpan(),
                    r'- \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"',
                ),
                abjad.select.leaf(abjad.select.run(_, 1), 0),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(abjad.select.run(_, 1), -1), 1),
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("o<"), abjad.select.leaf(abjad.select.run(_, 2), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-fff"),
                abjad.select.leaf(abjad.select.run(_, 2), -1),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("f"), abjad.select.leaf(abjad.select.run(_, 3), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin(">"), abjad.select.leaf(abjad.select.run(_, 3), 0)
            ),
            lambda _: abjad.attach(
                abjad.Dynamic(r"pp"), abjad.select.leaf(abjad.select.run(_, 3), -1)
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.LilyPondLiteral(r"\slow-fast-harmonic", site="after"),
                    r"- \tweak details.squiggle-speed-factor -0.6",
                    r"- \tweak thickness 3",
                    r"- \tweak details.squiggle-initial-width 0.4",
                    r"- \tweak details.squiggle-Y-scale 0.8",
                ),
                abjad.select.leaf(abjad.select.run(_, 3), 0),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(abjad.select.run(_, 3), -1), 1),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("p"), abjad.select.leaf(abjad.select.run(_, 4), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("<|"), abjad.select.leaf(abjad.select.run(_, 4), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-mf"),
                abjad.select.leaf(abjad.select.run(_, 4), -1),
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin(">o"), abjad.select.leaf(abjad.select.run(_, 5), 0)
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("sf"), abjad.select.leaf(abjad.select.run(_, 5), 0)
            ),
            lambda _: abjad.attach(
                abjad.StopHairpin(), abjad.select.leaf(abjad.select.run(_, 5), -1)
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.LilyPondLiteral(r"\slow-fast-harmonic", site="after"),
                    r"- \tweak details.squiggle-speed-factor 0.7",
                    r"- \tweak thickness 3",
                    r"- \tweak details.squiggle-initial-width 5",
                    r"- \tweak details.squiggle-Y-scale 0.9",
                ),
                abjad.select.leaf(abjad.select.run(_, 5), 0),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(abjad.select.run(_, 5), -1), 1),
            ),
            evans.text_span(
                [r"T", r"P", "MSP", "N"], "=>", [13, 11, 13, 7], padding=17, id=2
            ),
            # torlannol.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", (11, 17)),
            evans.even_division(
                [32],
                extra_counts=[0, 2, 0, 4, 6, 5, 0, 3],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.loop(
                pitch_segment_,
                [1.5, 2, 1.5, -2],
            ),
            lambda _: [
                abjad.slur(group)
                for group in abjad.select.partition_by_counts(
                    _, [8, 4, 4, 4, 5], cyclic=True, overhang=True
                )
            ],
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [5, 7, 8, 6],
                padding=14,
                id=1,
            ),
            evans.text_span([r"T", r"P"], "=>", [11, 13], padding=16.7, id=2),
            evans.text_span([r"non gridato", r"gridato"], "=>", padding=18.7, id=3),
            evans.text_span([r"1/2 col legno tratto"], "=|", padding=20.7, id=None),
            evans.hairpin("f > p < ff > mf <| f > pp <| f > mp <", [6, 8, 7, 5]),
            evans.ArticulationHandler(
                ["accent"],
                articulation_boolean_vector=[
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                ],
            ),
            evans.ArticulationHandler(
                ["marcato"],
                articulation_boolean_vector=[
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                ],
            ),
            # lambda _: abjad.beam(_),
            # torlannol.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", (17, 22)),
            evans.note(),
            torlannol.make_subdivided_music(
                subdivisions=[2, 3, 4, 5],
                subsubdivisions=[3, 4, 5],
                sustain_counts=None,
            ),
            lambda _: [
                rmakers.force_rest(x)
                for x in abjad.select.get(
                    abjad.select.logical_ties(_), [7, 18], period=19
                )
            ],
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16", position=20),
                abjad.select.leaf(_, 13, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16 c'16", position=20),
                abjad.select.leaf(_, 15, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16 c'16", position=13),
                abjad.select.leaf(_, 15 + 19, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16", position=13),
                abjad.select.leaf(_, 15 + 19 + 10, pitched=True, grace=False),
            ),
            lambda _: abjad.attach(
                evans.BeforeGraceContainer(components="c'16", position=13),
                abjad.select.leaf(_, 15 + 19 + 11, pitched=True, grace=False),
            ),
            evans.PitchHandler(
                evans.Sequence([_ for _ in np.arange(-24, 0, 0.5)])
                .mirror(sequential_duplicates=False)
                .rotate(7)
                .random_walk(
                    length=41,
                    step_list=[2, 2, 1, 3, 1, 1, 4, 5, 3, 5, 1],
                    random_seed=112 % 13,
                )
            ),
            lambda _: evans.text_span([r"P", "MSP"], "=>", padding=16.5, id=1)(
                abjad.select.run(_, 0)
            ),
            lambda _: evans.text_span([r"P", "T"], "=>", padding=16.5, id=1)(
                abjad.select.run(_, 1)
            ),
            lambda _: evans.text_span([r"N", "MSP"], "=>", padding=10, id=1)(
                abjad.select.run(_, 2)
            ),
            lambda _: evans.text_span([r"MSP", "P"], "=>", padding=10, id=1)(
                abjad.select.run(_, 3)
            ),
            lambda _: torlannol.circle_stems(
                abjad.select.leaves(_, grace=True), alternate=True
            ),
            lambda _: torlannol.swipe_stems(
                abjad.select.leaves(abjad.select.run(_, 4), grace=False)
            ),
            lambda _: torlannol.swipe_stems(
                abjad.select.leaves(abjad.select.run(_, 5), grace=False)
            ),
            lambda _: torlannol.circle_stems(
                abjad.select.leaves(abjad.select.run(_, 6), grace=False)
            ),
            lambda _: [abjad.slur(run[:]) for run in abjad.select.runs(_)],
            lambda _: evans.ArticulationHandler(
                ["accent"],
                articulation_boolean_vector=[
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                ],
            )(abjad.select.leaves(_, grace=False)),
            # lambda _: abjad.beam(_, stemlet_length=1.5),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 0), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 1), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 1), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 1), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 2), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 2), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 2), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 3), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 3), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 3), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 4), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 4), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 4), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 5), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 5), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 5), -1, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 6), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 6), 0, grace=False
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("pp"),
                selector=lambda _: abjad.select.leaf(
                    abjad.select.run(_, 6), -1, grace=False
                ),
            ),
            # torlannol.A_color,
        ),
        evans.MusicCommand(
            ("cello voice", (22, 29)),
            evans.talea(
                [2, 2, 4, 2, 6, 2, 4],
                32,
                extra_counts=[1, 1, 0, 2, 1, 4, 3, 1, 0, 2, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.loop([-20], [1, 1, 1, 3, 1, -6, 1, 1, 1, 1, 1, -3, 3, 1, 1, -6]),
            torlannol.upward_gliss,
            evans.hairpin("ff > f < fff >", [4]),
            evans.text_span(
                [r"T", r"P", "N", "T", "P", "N"], "=>", [11, 13], padding=10, id=2
            ),
            # lambda _: abjad.beam(_),
            # torlannol.C_color,
        ),
        evans.MusicCommand(
            ("cello voice", (29, 37)),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.ArticulationHandler(
                ["tremolo"],
                articulation_boolean_vector=[
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    1,
                    1,
                    1,
                    1,
                    0,
                    1,
                    1,
                    1,
                    0,
                ],
            ),
            evans.ArticulationHandler(
                ["espressivo"],
                articulation_boolean_vector=[
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    1,
                    1,
                    1,
                    1,
                    0,
                    1,
                    1,
                    1,
                    0,
                ],
            ),
            evans.PitchHandler(
                [
                    [11, 11.5],  #
                    [10, 11.5],
                    [9, 11.5],
                    [8, 11.5],
                    [7, 11.5],
                    [0.5, 11.5],  #
                    [11, 11.5],  #
                    [10, 11.5],
                    [9, 11.5],
                    [8, 11.5],
                    [0.5, 11.5],  #
                    [11, 11.5],  #
                    [10, 11.5],
                    [9, 11.5],
                    [8, 11.5],
                    [0.5, 11.5],  #
                    [11, 11.5],  #
                    [10, 11.5],
                    [9, 11.5],
                    [0.5, 11.5],  #
                ]
            ),
            evans.text_span([r"I+II"], "=|", padding=9, id=1),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("pp"),
                selector=lambda _: abjad.select.leaf(_, 5),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 10),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 15),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 15),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 16),
            ),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.leaf(_, 19),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 19),
            ),
            abjad.Clef("petrucci-c4"),
            # torlannol.D_color,
        ),
        evans.MusicCommand(
            ("cello voice", 37),
            evans.RTMMaker(
                [
                    "(1 (1 (1 (1 1)) (1 (1 1)) (1 (1 1)) 1))",
                ],
            ),
            evans.PitchHandler([_ / 2 for _ in [-24, -12, 0, 12, 0, -12, -24, -12]]),
            torlannol.zero_padding_glissando,
            torlannol.swipe_stems,
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            lambda _: evans.ArticulationHandler(
                ["accent"],
                articulation_boolean_vector=[
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                ],
            )(abjad.select.leaves(_, grace=False)),
            # lambda _: abjad.beam(_),
            abjad.Clef("bass"),
            # torlannol.A_color,
        ),
        evans.MusicCommand(
            ("cello voice", [38, 39]),
            evans.talea(
                [1, 1, 2, 1, 3, 1, 2],
                32,
                extra_counts=[2, 2, 0, 4, 2, 8, 6, 2, 0, 4, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.loop([-20], [1, 3, 1, 4, 1, -7, 1, 4, 1, 1, 1, -5, 4, 1, 3, -7]),
            torlannol.upward_gliss,
            # lambda _: abjad.beam(_),
            evans.hairpin("ff > f < fff >", [4]),
            evans.text_span([r"gridato", r"1/2 gridato"], "=>", padding=12, id=2),
            evans.text_span(
                [r"T", r"P", "N", "T", "P", "N"], "=>", [11, 13], padding=10, id=1
            ),
            evans.ArticulationHandler(
                ["tremolo"],
                articulation_boolean_vector=[0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1],
            ),
            # torlannol.C_color,
        ),
        evans.MusicCommand(
            ("cello voice", 40),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.ArticulationHandler(["tremolo"], articulation_boolean_vector=[1]),
            evans.ArticulationHandler(["espressivo"], articulation_boolean_vector=[1]),
            evans.PitchHandler([[0.5, 11.5]]),
            evans.Attachment(
                abjad.Markup(r"\markup I+II"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Clef("petrucci-c4"),
            # torlannol.D_color,
        ),
        evans.MusicCommand(
            ("cello voice", [41, 42]),
            evans.even_division(
                [32],
                extra_counts=[0, 2, 0, 4, 6, 5, 0, 3],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            # evans.PitchHandler(evans.Sequence([-18, -17.5, -18, -17.5, -18, -17.5, -6.5, -7, -19, -17, -9.5, -7.5, -12.5, -12, -13.5, -12, -5.5, -7.5, -15, -17, -18, -15, -4, 4, 7, 6]).reverse()),
            # lambda _: [abjad.slur(group) for group in abjad.select.partition_by_counts(_, [5, 4, 4, 4, 9], cyclic=True, overhang=True)],
            evans.loop(
                [_ - 24 for _ in [2, 10, 18, 26, 26, 18, 10, 2]],
                [1, 3, -2, 1, 2, 1, -3, 4],
            ),
            evans.slur([4]),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.text_span(
                [r"\diamond-notehead-markup", r"\default-notehead-markup"],
                "=>",
                [4],
                padding=13,
                id=1,
            ),
            evans.text_span([r"T", r"P"], "=>", [11, 13], padding=15, id=2),
            evans.text_span([r"normale", r"grid."], "=>", padding=17, id=3),
            evans.text_span([r"col legno tratto"], "=|", padding=19, id=None),
            evans.hairpin("f > p <", [4]),
            evans.Attachment(
                abjad.Markup(r"\markup IV"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup III"),
                selector=lambda _: abjad.select.leaf(_, 1),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup II"),
                selector=lambda _: abjad.select.leaf(_, 2),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup I"),
                selector=lambda _: abjad.select.leaf(_, 3),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup I"),
                selector=lambda _: abjad.select.leaf(_, 4),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup II"),
                selector=lambda _: abjad.select.leaf(_, 5),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup III"),
                selector=lambda _: abjad.select.leaf(_, 6),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup IV"),
                selector=lambda _: abjad.select.leaf(_, 7),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup simile"),
                selector=lambda _: abjad.select.leaf(_, 8),
                direction=abjad.UP,
            ),
            evans.ArticulationHandler(
                ["accent"],
                articulation_boolean_vector=[
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                ],
            ),
            # lambda _: abjad.beam(_),
            abjad.Clef("bass"),
            # torlannol.B_color,
        ),
        evans.MusicCommand(
            ("cello voice", (43, 47)),
            evans.RTMMaker(
                [
                    f"(1 (({random.choice([4, 3, 2, 1])} (1 1)) ({random.choice([3, 2])} (1 1 1)) ({random.choice([3, 2, 1])} (1 1 1 1)) ({random.choice([2, 1])} (1 1 1)) ({random.choice([3, 2])} (1 1))))",
                    f"(1 (({random.choice([4, 3, 2, 1])} (1 1 1)) ({random.choice([3, 2])} (1 1 1 1)) ({random.choice([3, 2, 1])} (1 1 1)) ({random.choice([2, 1])} (1 1)) ({random.choice([3, 2])} (1 1))))",
                    f"(1 (({random.choice([4, 3, 2, 1])} (1 1 1 1)) ({random.choice([3, 2])} (1 1 1)) ({random.choice([3, 2, 1])} (1 1)) ({random.choice([2, 1])} (1 1)) ({random.choice([3, 2])} (1 1 1))))",
                ],
            ),
            lambda _: [
                rmakers.force_rest(x)
                for x in abjad.select.get(
                    abjad.select.logical_ties(_), [5, 13], period=15
                )
            ],
            evans.PitchHandler(
                evans.Sequence([_ for _ in range(-24, 12)])
                .mirror(sequential_duplicates=False)
                .random_walk(
                    length=14 * 3,
                    step_list=[2, 4, 6, 8, 1, 8, 7, 6, 5, 4, 3],
                    random_seed=5,
                )
            ),
            torlannol.zero_padding_glissando,
            # lambda _: abjad.beam(_, stemlet_length=1.5),
            lambda _: abjad.attach(
                abjad.Dynamic("sfp"), abjad.select.leaf(abjad.select.run(_, 0), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("<"), abjad.select.leaf(abjad.select.run(_, 0), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-f"),
                abjad.select.leaf(abjad.select.run(_, 0), -1),
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.StartTrillSpan(),
                    r'- \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"',
                ),
                abjad.select.leaf(abjad.select.run(_, 0), 0),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(abjad.select.run(_, 0), -1), 1),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("mf"), abjad.select.leaf(abjad.select.run(_, 1), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("<|"), abjad.select.leaf(abjad.select.run(_, 1), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-ff"),
                abjad.select.leaf(abjad.select.run(_, 1), -1),
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("o<"), abjad.select.leaf(abjad.select.run(_, 2), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-fff"),
                abjad.select.leaf(abjad.select.run(_, 2), -1),
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.LilyPondLiteral(r"\slow-fast-harmonic", site="after"),
                    r"- \tweak details.squiggle-speed-factor -0.6",
                    r"- \tweak thickness 3",
                    r"- \tweak details.squiggle-initial-width 0.4",
                    r"- \tweak details.squiggle-Y-scale 0.8",
                ),
                abjad.select.leaf(abjad.select.run(_, 2), 0),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(abjad.select.run(_, 2), -1), 1),
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("f"), abjad.select.leaf(abjad.select.run(_, 3), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin(">"), abjad.select.leaf(abjad.select.run(_, 3), 0)
            ),
            lambda _: abjad.attach(
                abjad.Dynamic(r"pp"), abjad.select.leaf(abjad.select.run(_, 3), -1)
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("p"), abjad.select.leaf(abjad.select.run(_, 4), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("<|"), abjad.select.leaf(abjad.select.run(_, 4), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-mf"),
                abjad.select.leaf(abjad.select.run(_, 4), -1),
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.LilyPondLiteral(r"\slow-fast-harmonic", site="after"),
                    r"- \tweak details.squiggle-speed-factor 0.7",
                    r"- \tweak thickness 3",
                    r"- \tweak details.squiggle-initial-width 4",
                    r"- \tweak details.squiggle-Y-scale 0.9",
                ),
                abjad.select.leaf(abjad.select.run(_, 4), 0),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(abjad.select.run(_, 4), -1), 1),
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin(">o"), abjad.select.leaf(abjad.select.run(_, 5), 0)
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("sf"), abjad.select.leaf(abjad.select.run(_, 5), 0)
            ),
            lambda _: abjad.attach(
                abjad.StopHairpin(), abjad.select.leaf(abjad.select.run(_, 5), -1)
            ),
            lambda _: abjad.attach(
                abjad.Dynamic("sfp"), abjad.select.leaf(abjad.select.run(_, 6), 0)
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("<"), abjad.select.leaf(abjad.select.run(_, 6), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-f"),
                abjad.select.leaf(abjad.select.run(_, 6), -1),
            ),
            lambda _: abjad.attach(
                abjad.bundle(
                    abjad.StartTrillSpan(),
                    r'- \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"',
                ),
                abjad.select.leaf(abjad.select.run(_, 6), 0),
            ),
            lambda _: abjad.attach(
                abjad.StopTrillSpan(),
                abjad.get.leaf(abjad.select.leaf(abjad.select.run(_, 6), -1), 1),
            ),
            lambda _: abjad.attach(
                abjad.StartHairpin("o<"), abjad.select.leaf(abjad.select.run(_, 7), 0)
            ),
            lambda _: abjad.attach(
                abjad.Markup(r"\damped-ff"),
                abjad.select.leaf(abjad.select.run(_, 7), -1),
            ),
            evans.text_span([r"1/2 gridato", "normale"], "=>", padding=15, id=1),
            evans.text_span(
                [r"T", r"P", "MSP", "N"], "=>", [13, 11, 13, 7], padding=17, id=2
            ),
            evans.ArticulationHandler(
                ["tremolo"],
                articulation_boolean_vector=[
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                ],
            ),
            # torlannol.E_color,
        ),
        evans.MusicCommand(
            ("cello voice", (47, 53)),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            lambda _: [
                rmakers.force_rest(x)
                for x in abjad.select.get(
                    abjad.select.logical_ties(_), [6, 8, 9, 12], period=13
                )
            ],
            evans.BendHandler([-3, -4, 2.5, -3.5, -4.5]),
            evans.ArticulationHandler(
                ["tremolo"], articulation_boolean_vector=[0, 0, 1, 0, 1, 0, 0, 0, 1]
            ),
            evans.PitchHandler([-15, -17.5, -14.5, -14, -16.5, -16]),
            # lambda _: abjad.beam(_),
            evans.text_span([r"molto gridato"], "=|", padding=4, id=1),
            evans.text_span([r"P", r"MSP"], "=>", padding=6, id=2),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 1, pitched=True),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 1, pitched=True),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 2, pitched=True),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 2, pitched=True),
            ),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.get.leaf(
                    abjad.select.leaf(_, 5, pitched=True), 1
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 6, pitched=True),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 6, pitched=True),
            ),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.get.leaf(
                    abjad.select.leaf(_, 6, pitched=True), 1
                ),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 7, pitched=True),
            ),
            evans.Attachment(
                abjad.StartHairpin("--"),
                selector=lambda _: abjad.select.leaf(_, 7, pitched=True),
            ),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.get.leaf(
                    abjad.select.leaf(_, 9, pitched=True), 1
                ),
            ),
            # torlannol.E_color,
        ),
        # evans.call(
        #     "cello voice",
        #     lambda _: evans.imbricate(
        #         _,
        #         [-1, 1, -2, 2, -3, 3, -4, 4, -5, 5, -6, 0],
        #         "cello voice imbrication 1",
        #         articulation="accent",
        #         direction=abjad.DOWN,
        #         beam=False,
        #         secondary=False,
        #         allow_unused_pitches=True,
        #         by_pitch_class=True,
        #         hocket=True,
        #         truncate_ties=False,
        #     ),
        #     selector=evans.select_measures([11, 12, 13, 14, 15, 16], leaves=True),
        # ),
        # evans.call(
        #     "cello voice imbrication 1",
        #     lambda _: baca.beam_positions(_, -9),
        #     selector=lambda _: abjad.select.leaves(_),
        # ),
        # evans.call(
        #     "cello voice",
        #     lambda _: abjad.beam(_),
        #     selector=evans.select_measures([11, 12, 13, 14, 15, 16], leaves=True),
        # ),
        evans.call(
            "cello voice",
            lambda _: evans.long_beam(
                _, stemlet_length=1.66, beam_rests=True, beam_lone_notes=False
            ),
            selector=lambda _: abjad.select.leaves(_, grace=False),
        ),
        # evans.call(
        #     "cello voice",
        #     lambda _: torlannol.annotate_tuplet_durations(_),
        #     selector=lambda _: abjad.select.tuplets(_),
        # ),
        # evans.call(
        #     "cello voice",
        #     lambda _: evans.imbricate(
        #         _,
        #         [-1, 1, -2, 2, -3, 3, -4, 4, -5, 5, -6, 0],
        #         "cello voice imbrication 2",
        #         articulation="accent",
        #         direction=abjad.DOWN,
        #         beam=False,
        #         secondary=False,
        #         allow_unused_pitches=True,
        #         by_pitch_class=True,
        #         hocket=True,
        #         truncate_ties=False,
        #     ),
        #     selector=evans.select_measures([41, 42], leaves=True),
        # ),
        # evans.call(
        #     "cello voice imbrication 2",
        #     lambda _: baca.beam_positions(_, -9),
        #     selector=lambda _: abjad.select.leaves(_),
        # ),
        # evans.call(
        #     "cello voice",
        #     lambda _: abjad.beam(_),
        #     selector=evans.select_measures([41, 42], leaves=True),
        # ),
        evans.attach(
            "Global Context",
            torlannol.lib.mark_117,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.met_117,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.mark_75,
            lambda _: abjad.select.leaf(_, 8),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.met_75,
            lambda _: abjad.select.leaf(_, 8),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.mark_48,
            lambda _: abjad.select.leaf(_, 13),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.met_48,
            lambda _: abjad.select.leaf(_, 13),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.met_93,
            lambda _: abjad.select.leaf(_, 22),
        ),
        evans.call(
            "Global Context",
            evans.TempoSpannerHandler(
                tempo_list=[(3, 0, 1, "145 (rit.)"), (3, 0, 1, "39")],
                boolean_vector=[1],
                padding=4,
                staff_padding=2,
                forget=False,
            ),
            lambda _: abjad.select.get(
                abjad.select.leaves(_), [22, 23, 24, 25, 26, 27, 28]
            ),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.mark_60,
            lambda _: abjad.select.leaf(_, 29),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.met_60,
            lambda _: abjad.select.leaf(_, 29),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.mark_93,
            lambda _: abjad.select.leaf(_, 35),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.met_93,
            lambda _: abjad.select.leaf(_, 35),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.mark_145,
            lambda _: abjad.select.leaf(_, 43),
        ),
        evans.attach(
            "Global Context",
            torlannol.lib.met_145,
            lambda _: abjad.select.leaf(_, 43),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"',
            ),
            evans.select_measures([53], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r'\bar "|."', site="after"),
            evans.select_measures([53], leaf=1),
        ),
        evans.attach(
            "cello voice",
            abjad.Markup(r"\colophon"),
            lambda _: abjad.select.leaf(_, -3),
            direction=abjad.DOWN,
        ),
    ],
    score_template=torlannol.score,
    transpose_from_sounding_pitch=True,
    time_signatures=torlannol.signatures_01,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="01",
    current_directory=pathlib.Path(__file__).parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    barline="|.",
    rehearsal_mark="",
    fermata="scripts.ufermata",
    with_layout=True,
    mm_rests=False,
    extra_rewrite=False,  # should default to false but defaults to true
    print_clock_time=True,
    color_out_of_range=False,
)

maker.build_segment()
