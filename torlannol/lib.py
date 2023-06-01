import copy
from fractions import Fraction

import abjad
import baca
import evans
from abjadext import rmakers

# lily met

met_31 = abjad.MetronomeMark((1, 8), 31)

met_39 = abjad.MetronomeMark((1, 8), 39)

met_48 = abjad.MetronomeMark((1, 8), 48)

met_60 = abjad.MetronomeMark((1, 8), 60)

met_75 = abjad.MetronomeMark((1, 8), 75)

met_93 = abjad.MetronomeMark((1, 8), 93)

met_117 = abjad.MetronomeMark((1, 8), 117)

met_145 = abjad.MetronomeMark((1, 8), 145)

# markup met

met_31_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 31)

met_39_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 39)

met_48_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 48)

met_60_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 60)

met_75_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 75)

met_93_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 93)

met_117_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 117)

met_145_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 8), 145)

# markup met

mark_31 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_31_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_39 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_39_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_48 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_48_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_60 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_60_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_75 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_75_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_93 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_93_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_117 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_117_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_145 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_145_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

##
##
##


def zero_padding_glissando(selections):
    for run in abjad.select.runs(selections):
        leaves = abjad.select.leaves(run)
        for leaf in leaves[1:-1]:
            if abjad.get.has_indicator(leaf, abjad.Tie):
                abjad.detach(abjad.Tie(), leaf)
    abjad.glissando(selections[:], zero_padding=True, allow_repeats=True)
    for run in abjad.select.runs(selections):
        leaves = abjad.select.leaves(run)
        for leaf in leaves[1:-1]:
            if isinstance(leaf, abjad.Note):
                abjad.tweak(leaf.note_head, r"\tweak Accidental.stencil ##f")
                abjad.tweak(leaf.note_head, r"\tweak transparent ##t")
                abjad.tweak(leaf.note_head, r"\tweak X-extent #'(0 . 0)")
            elif isinstance(leaf, abjad.Chord):
                for head in leaf.note_heads:
                    abjad.override(leaf).Accidental.stencil = "##f"
                    abjad.override(leaf).NoteHead.transparent = "##t"
                    abjad.tweak(head, r"\tweak X-extent #'(0 . 0)")
                    abjad.override(leaf).NoteHead.X_extent = "#'(0 . 0)"


def with_sharps(selections):
    abjad.iterpitches.respell_with_sharps(selections)


def toggle_tuplet_prolation(selection):
    tuplet = selection[0]
    tuplet.toggle_prolation()
    tuplet.set_minimum_denominator(4)


start_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ":|."',
    ],
    site="after",
)

start_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ":|."',
    ],
    site="after",
)

start_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ":|."',
    ],
    site="after",
)


clef_whitespace = abjad.LilyPondLiteral(
    r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
    site="absolute_before",
)

tremolo_handler = evans.ArticulationHandler(
    ["tremolo"],
)

### Transposition Handlers ###

octave_up = evans.TranspositionHandler([abjad.NumberedInterval(12)])
octave_down = evans.TranspositionHandler([abjad.NumberedInterval(-12)])
two_octaves_up = evans.TranspositionHandler([abjad.NumberedInterval(24)])
two_octaves_down = evans.TranspositionHandler([abjad.NumberedInterval(-24)])
three_octaves_up = evans.TranspositionHandler([abjad.NumberedInterval(36)])
three_octaves_down = evans.TranspositionHandler([abjad.NumberedInterval(-36)])

quarter_up = evans.TranspositionHandler([abjad.NumberedInterval(0.5)])
quarter_down = evans.TranspositionHandler([abjad.NumberedInterval(-0.5)])

half_up = evans.TranspositionHandler([abjad.NumberedInterval(1)])
half_down = evans.TranspositionHandler([abjad.NumberedInterval(-1)])

trill_handler = evans.TrillHandler(boolean_vector=[1], only_chords=True)

bis_handler = evans.BisbigliandoHandler(
    fingering_list=[
        r"\double-diamond-parenthesized-top-markup",
        r"\diamond-parenthesized-double-diamond-markup",
        r"\double-diamond-parenthesized-top-markup",
    ],
    boolean_vector=[1],
    staff_padding=1,
    forget=False,
)

start_damp_indicator = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\damp-markup"),
    style="dashed-line-with-hook",
    command=r"\startTextSpanOne",
)

start_damp = abjad.bundle(start_damp_indicator, r"- \tweak staff-padding #3.5")

stop_damp = abjad.StopTextSpan(command=r"\stopTextSpanOne")


def fireworks(selections):
    for run in abjad.Selection(selections).runs():
        first_leaf = abjad.Selection(run).leaf(0)
        last_leaf = abjad.Selection(run).leaf(-1)
        abjad.attach(abjad.Dynamic("sfp"), first_leaf)
        abjad.attach(abjad.StartHairpin("<"), first_leaf)
        abjad.attach(abjad.Dynamic("fff", leak=True), last_leaf)


def sforzandi(selections):
    ties = abjad.Selection(selections).logical_ties(pitched=True)
    for tie in ties:
        abjad.attach(abjad.Dynamic("sfz"), tie[0])


start_scratch_indicator = abjad.StartTextSpan(
    left_text=abjad.Markup(r"poco \hspace #1 gridato"),
    right_text=abjad.Markup("molto gridato"),
    style="solid-line-with-arrow",
    command=r"\startTextSpanTwo",
)
start_scratch = abjad.bundle(start_scratch_indicator, r"- \tweak staff-padding #7")

stop_scratch = abjad.StopTextSpan(command=r"\stopTextSpanTwo")


# Preprocessors


def fuse_preprocessor(divisions):
    return [abjad.sequence.sum(divisions)]


def fuse_preprocessor_2(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2,), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_3(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3,), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_2_1(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_3_1(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_preprocessor_3_2(divisions):
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3, 2), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    return divisions


def fuse_quarters_preprocessor_2_1(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor_1_2(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (1, 2), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor_1_1_2(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (1, 1, 2), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def fuse_quarters_preprocessor_2_2_5(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 2, 5), cyclic=False, overhang=True
    )
    return [sum(_) for _ in divisions]


def quarters_preprocessor_2_1(divisions):
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    temp = []
    for measure in divisions:
        partitions = abjad.sequence.flatten(measure, depth=-1)
        partitions = abjad.sequence.partition_by_counts(
            partitions,
            (2, 1),
            cyclic=True,
            overhang=True,
        )
        sums = [sum(_) for _ in partitions]
        temp.append(sums)
    divisions = abjad.sequence.flatten(temp, depth=-1)
    return divisions


def quarters_preprocessor_2(divisions):
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    temp = []
    for measure in divisions:
        partitions = abjad.sequence.flatten(measure, depth=-1)
        partitions = abjad.sequence.partition_by_counts(
            partitions,
            (2,),
            cyclic=True,
            overhang=True,
        )
        sums = [sum(_) for _ in partitions]
        temp.append(sums)
    divisions = abjad.sequence.flatten(temp, depth=-1)
    return divisions


# def pure_quarters_preprocessor(divisions):
#     divisions = [baca.sequence.quarters([_]) for _ in divisions]
#     divisions = abjad.sequence.flatten(divisions, depth=-1)
#     return divisions


def pure_quarters_preprocessor(divisions):
    divisions = [abjad.Duration(_) for _ in divisions]  # WARNING: must coerce type?
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    return divisions


def quarters_preprocessor_3_1_2(divisions):
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    temp = []
    for measure in divisions:
        partitions = abjad.sequence.flatten(measure, depth=-1)
        partitions = abjad.sequence.partition_by_counts(
            partitions,
            (3, 1, 2),
            cyclic=True,
            overhang=True,
        )
        sums = [sum(_) for _ in partitions]
        temp.append(sums)
    divisions = abjad.sequence.flatten(temp, depth=-1)
    return divisions


def fuse_quarters_preprocessor_3_1(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (3, 1), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def quarters_preprocessor(divisions):
    divisions = [baca.sequence.quarters([_], compound=(3, 2)) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    return divisions


def fuse_quarters_preprocessor_2_20(divisions):
    duration = abjad.sequence.sum(divisions)
    divisions = [duration]
    divisions = [baca.sequence.quarters([_]) for _ in divisions]
    divisions = abjad.sequence.flatten(divisions, depth=-1)
    divisions = abjad.sequence.partition_by_counts(
        divisions, (2, 20), cyclic=True, overhang=True
    )
    return [sum(_) for _ in divisions]


def select_all_first_leaves(selections):
    run_ties = abjad.Selection(selections).runs().logical_ties(pitched=True)
    ties_first_leaves = abjad.Selection([_[0] for _ in run_ties])
    return ties_first_leaves


def select_run_first_leaves(selections):
    runs = abjad.Selection(selections).runs()
    first_ties = abjad.Selection([abjad.Selection(run).logical_tie(0) for run in runs])
    first_leaves = abjad.Selection([abjad.Selection(tie).leaf(0) for tie in first_ties])
    return first_leaves


# Scordatura


def scordatura(staff_padding=8):
    handler = evans.ScordaturaHandler(
        string_number="IV", default_pitch="c,", new_pitch="bf,,", padding=staff_padding
    )
    return handler


# ANNOTATIONS
class MAS:
    def __init__(
        self,
        string,
        color,
        staff_padding,
    ):
        self.string = string
        self.color = color
        self.staff_padding = staff_padding

    def __call__(self, selections):
        first_leaf = selections.leaf(0)
        last_leaf = selections.leaves()[-1]
        start_indicator = abjad.StartTextSpan(
            left_text=rf'- \evans-text-spanner-left-text "{self.string}"',
            command=r"\evansStartTextSpanMaterialAnnotation",
            style="dashed-line-with-hook",
            right_padding=-1,
        )
        start = abjad.bundle(
            start_indicator,
            rf"- \tweak staff-padding #{self.staff_padding}",
            rf"- \ tweak color #{self.color}",
        )
        stop = abjad.StopTextSpan(
            command=r"\evansStopTextSpanMaterialAnnotation",
        )
        abjad.attach(start, first_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)
        abjad.attach(stop, last_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)


A = MAS(
    string="[A].",
    color="#(rgb-color 0.6 0.6 1)",
    staff_padding=5.5,
)


def A_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.6 0.6 1)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


B = MAS(
    string="[B].",
    color="#(rgb-color 0.961 0.961 0.406)",
    staff_padding=5.5,
)


def B_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.961 0.961 0.406)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


C = MAS(
    string="[C].",
    color="#(rgb-color 0.2 1 0.592)",
    staff_padding=5.5,
)


def C_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.2 1 0.592)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


D = MAS(
    string="[D].",
    color="#(rgb-color 1 0.2 0.2)",
    staff_padding=5.5,
)


def D_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 1 0.2 0.2)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


E = MAS(
    string="[E].",
    color="#(rgb-color 0.6 0.8 1)",
    staff_padding=5.5,
)


def E_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.6 0.8 1)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


def chilled_stage_3_bowing(series="A", rotation=0, staff_padding=2):
    series_dict = {
        "A": evans.Sequence(
            [(1, 7), (4, 7), (6, 7), (5, 7), (7, 7), (6, 7), (5, 7), (3, 7), (2, 7)]
        ),
        "B": evans.Sequence([(5, 5), (1, 5), (4, 5), (3, 5), (2, 5), (3, 5), (1, 5)]),
    }
    bowing_padding = staff_padding + 2.5
    return baca.bcps(  # WARNING: doble check this
        series_dict[series].rotate(rotation),
        abjad.tweak(staff_padding).staff_padding,
        bow_change_tweaks=(
            abjad.tweak(abjad.LEFT).self_alignment_X,
            abjad.tweak(bowing_padding).staff_padding,
        ),
    )


def make_proportional_notation(selections):
    for tuplet in abjad.Selection(selections).tuplets():
        abjad.tweak(tuplet, r"\tweak TupletBracket.transparent ##t")
        abjad.tweak(tuplet, r"\tweak TupletNumber.transparent ##t")

    for rest in abjad.Selection(selections).leaves(pitched=False):
        transparent_literal = abjad.LilyPondLiteral(
            r"\once \override Rest.transparent = ##t", site="before"
        )
        transparent_dots_literal = abjad.LilyPondLiteral(
            r"\once \override Dots.transparent = ##t", site="before"
        )
        abjad.attach(transparent_literal, rest)
        abjad.attach(transparent_dots_literal, rest)

    for note in abjad.Selection(selections).leaves(pitched=True):
        abjad.attach(evans.DurationLine(), note)
        style_literal = abjad.LilyPondLiteral(r"\duration-line-style", site="before")
        abjad.attach(style_literal, note)


def make_proportaional_global_context(selections):
    leaves = abjad.Selection(selections).leaves()
    leaves_count = len(leaves)
    for i, leaf in enumerate(leaves):
        if i == 0:  # Experimental
            continue
        if i != leaves_count:
            bar_literal = abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.stencil = ##f", site="before"
            )
            abjad.attach(bar_literal, leaf)
            span_literal = abjad.LilyPondLiteral(
                r"\once \override Score.SpanBar.stencil = ##f", site="before"
            )
            abjad.attach(span_literal, leaf)
        if i != 0:
            hidden_literal = abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f",
                site="before",
            )
            abjad.attach(hidden_literal, leaf)

    first_leaf = abjad.Selection(selections).leaf(0)
    x_literal = abjad.LilyPondLiteral(
        r"\once \override Score.TimeSignature.stencil = #(blank-time-signature)",
        site="before",
    )
    abjad.attach(x_literal, first_leaf)


def label_clock_time(selections):
    abjad.label.with_start_offsets(selections, clock_time=True)


def select_measures(
    index_list, leaf=None, leaves=None, logical_ties=None, note=None, notes=None
):
    if leaf is not None:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaf(sel_3, leaf)
            return sel_4

        return selector
    elif isinstance(leaves, list):

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaves(sel_3)
            sel_5 = abjad.select.get(sel_4, leaves)
            return sel_5

        return selector
    elif leaves is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaves(sel_3)
            return sel_4

        return selector
    elif logical_ties is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.logical_ties(sel_3)
            return sel_4

        return selector
    elif note is not None:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.note(sel_3, note)
            return sel_4

        return selector
    elif notes is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.notes(sel_3)
            return sel_4

        return selector
    else:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            return sel_3

        return selector


hairpins = evans.CyclicList(["<", "<|", "<", "<", "<", "<", "<|", "<"], forget=False)


def swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        next_hairpin = hairpins(r=1)[0]
        hairpin_string = "p " + next_hairpin + " f"
        hairpin = baca.hairpin(hairpin_string)
        hairpin(pair)


_hairpins = evans.CyclicList(["<", "<|"], forget=False)


def cello_swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 != 0:
            abjad.attach(abjad.Dynamic("mf"), abjad.Selection(pair).leaf(0))
        else:
            next_hairpin = _hairpins(r=1)[0]
            hairpin_string = "p " + next_hairpin + " f"
            hairpin = baca.hairpin(hairpin_string)
            hairpin(pair)


def alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        # abjad.attach(abjad.Glissando(), pair[0][-1])
        abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def cello_alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 == 0:
            # abjad.attach(abjad.Glissando(), pair[0][-1])
            abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def trill_ties(selections):
    abjad.trill_spanner(selections, selector=lambda _: abjad.Selection(_).notes())


start_bis_trill_one = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \double-diamond-parenthesized-top-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

start_bis_trill_two = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \diamond-parenthesized-double-diamond-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

stop_bis_trill = abjad.StopTrillSpan()


multi_stac = evans.ArticulationHandler(
    articulation_list=[
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #3",
        "tongue #3",
    ],
    articulation_boolean_vector=[1],
    vector_forget=False,
    forget=False,
)


def triple_swell(selections):
    triples = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([3], cyclic=True, overhang=False)
    )
    for triple in triples:
        abjad.attach(abjad.Dynamic("mp"), triple[0][0])
        abjad.attach(abjad.StartHairpin("<"), triple[0][0])
        abjad.attach(abjad.Dynamic("f"), triple[1][0])
        abjad.attach(abjad.StartHairpin(">"), triple[1][0])
        abjad.attach(abjad.Dynamic("mp"), triple[2][-1])
        span = baca.text_spanner(  # WARNING: double check this interface
            "T. => P.",
            (abjad.tweak(5).staff_padding, 0),
            lilypond_id=1,
        )
        span(triple)
        abjad.trill_spanner(triple)


bah = evans.BowAngleHandler([0, 45, 0, -45, 70, -70, 0, 25, -25, 0, 60])


def angles(selections):
    for run in abjad.Selection(selections).runs():
        bah(run)


def bis_trill(selections):
    first_leaf = selections.leaf(0)
    last_leaf = selections.leaf(-1)
    abjad.attach(start_bis_trill_one, first_leaf)
    abjad.attach(stop_bis_trill, last_leaf)


def special_hairpin(selections):
    leaves = selections.leaves()
    abjad.attach(abjad.Dynamic("p"), leaves[0])
    abjad.attach(abjad.StartHairpin("<|"), leaves[0])
    abjad.attach(abjad.Dynamic("f"), leaves[1])
    abjad.attach(abjad.Dynamic("p"), leaves[2])
    abjad.attach(abjad.StartHairpin("<"), leaves[2])
    abjad.attach(abjad.Dynamic("ff"), leaves[3])
    abjad.attach(abjad.StartHairpin("--"), leaves[3])
    abjad.attach(abjad.StartHairpin(">"), leaves[4])
    abjad.attach(abjad.Dynamic("mf"), leaves[5])
    abjad.attach(abjad.StartHairpin("<|"), leaves[5])
    abjad.attach(abjad.Dynamic("f"), leaves[6])


def substitute_time_signatures(leaves, new_signatures):
    out = []
    for time_signature in new_signatures:
        new_skip = abjad.Skip(1, multiplier=(time_signature))
        abjad.attach(time_signature, new_skip, tag=abjad.Tag("scaling time signatures"))
        out.append(new_skip)
    abjad.mutate.replace(leaves, out)


def replace_sigs(new_sigs):
    return lambda _: substitute_time_signatures(_, new_sigs)


def add_fancy_glisses(indices=[0]):
    def returned_function(selections):
        ties = abjad.select.logical_ties(selections, grace=False)
        targets = abjad.select.get(ties, indices)
        final_targets = [abjad.select.leaf(_, -1) for _ in targets]
        for target in final_targets:
            abjad.attach(
                abjad.Glissando(),
                target,
            )
            abjad.attach(
                evans.make_fancy_gliss(3, 2, 4, 2, 1, right_padding=0.5),
                target,
            )

    return returned_function


def swells(selections):
    ties = abjad.select.logical_ties(selections, pitched=True)
    leaves = [tie[0] for tie in ties]
    cyc_dynamics = evans.CyclicList(["p", "mf", "p", "f"], forget=False)
    cyc_hairpins = evans.CyclicList(["<", ">"], forget=False)
    for leaf in leaves:
        dynamic = abjad.Dynamic(cyc_dynamics(r=1)[0])
        abjad.attach(dynamic, leaf)
    for leaf in leaves[:-1]:
        hairpin = abjad.StartHairpin(cyc_hairpins(r=1)[0])
        abjad.attach(hairpin, leaf)


def tenor_fingerings(selections):
    strings = [
        r"\tenor-sax-chart-one",
        r"\tenor-sax-chart-seven",
        r"\tenor-sax-chart-fourteen",
        r"\tenor-sax-chart-thirtyseven",
        r"\tenor-sax-chart-sixtynine",
        r"\tenor-sax-chart-seventyfive",
        r"\tenor-sax-chart-seventyseven",
        r"\tenor-sax-chart-seventyeight",
        r"\tenor-sax-chart-eightyeight",
    ]
    markups = [abjad.Markup(_) for _ in strings]
    cyc_marks = evans.CyclicList(markups, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf, direction=abjad.UP)


def tenor_dynamics(selections):
    dynamics = [
        abjad.Dynamic(_) for _ in ["ff", "p", "mf", "p", "f", "mp", "f", "ff", "p"]
    ]
    cyc_marks = evans.CyclicList(dynamics, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf)


def rotated_tenor_fingerings(selections):
    strings = [
        r"\tenor-sax-chart-fourteen",
        r"\tenor-sax-chart-thirtyseven",
        r"\tenor-sax-chart-sixtynine",
        r"\tenor-sax-chart-seventyfive",
        r"\tenor-sax-chart-seventyseven",
        r"\tenor-sax-chart-seventyeight",
        r"\tenor-sax-chart-eightyeight",
        r"\tenor-sax-chart-one",
        r"\tenor-sax-chart-seven",
    ]
    markups = [abjad.Markup(_) for _ in strings]
    cyc_marks = evans.CyclicList(markups, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf, direction=abjad.UP)


def rotated_tenor_dynamics(selections):
    dynamics = [
        abjad.Dynamic(_)
        for _ in [
            "mf",
            "p",
            "f",
            "mp",
            "f",
            "ff",
            "p",
            "ff",
            "p",
        ]
    ]
    cyc_marks = evans.CyclicList(dynamics, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf)


def baritone_fingerings(selections):
    strings = [
        r"\bari-sax-chart-one",
        r"\bari-sax-chart-seven",
        r"\bari-sax-chart-fourteen",
        r"\bari-sax-chart-thirtyseven",
        r"\bari-sax-chart-sixtynine",
        r"\bari-sax-chart-seventyfive",
        r"\bari-sax-chart-seventyseven",
        r"\bari-sax-chart-seventyeight",
        r"\bari-sax-chart-eightyeight",
    ]
    markups = [abjad.Markup(_) for _ in strings]
    cyc_marks = evans.CyclicList(markups, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf, direction=abjad.UP)


def baritone_dynamics(selections):
    dynamics = [
        abjad.Dynamic(_) for _ in ["ff", "mp", "p", "mf", "f", "mf", "p", "mp", "f"]
    ]
    cyc_marks = evans.CyclicList(dynamics, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf)


def upward_gliss(selections):
    ties = abjad.select.logical_ties(selections, pitched=True)
    groups = []
    sub_group = []
    for tie in ties:
        if len(sub_group) < 1:
            sub_group.append(tie)
        else:
            if tie[0].written_pitch < sub_group[-1][0].written_pitch:
                groups.append(sub_group)
                sub_group = [tie]
            else:
                sub_group.append(tie)
    if 1 < len(sub_group):
        groups.append(sub_group)
    for group in groups:
        leaves = abjad.select.leaves(group)
        zero_padding_glissando(leaves)


def downward_gliss(selections):
    ties = abjad.select.logical_ties(selections, pitched=True)
    groups = []
    sub_group = []
    for tie in ties:
        if len(sub_group) < 1:
            sub_group.append(tie)
        else:
            if sub_group[-1][0].written_pitch < tie[0].written_pitch:
                groups.append(sub_group)
                sub_group = [tie]
            else:
                sub_group.append(tie)
    if 1 < len(sub_group):
        groups.append(sub_group)
    for group in groups:
        leaves = abjad.select.leaves(group)
        zero_padding_glissando(leaves)


def swipe_stems(selections):
    literals = evans.CyclicList(
        [
            r"\swipeUpStemOn",
            r"\swipeDownStemOn",
        ],
        forget=False,
    )
    for leaf in abjad.select.leaves(selections, pitched=True):
        direction = literals(r=1)[0]
        literal = abjad.LilyPondLiteral(direction, site="before")
        abjad.attach(literal, leaf)

    last_leaf = abjad.select.leaf(selections, -1, pitched=True)
    abjad.attach(abjad.LilyPondLiteral(r"\stemOff", site="after"), last_leaf)


def subdivide(selections, cyclic_subdivisions=[2, 3, 4]):
    cyc_subdivisions = evans.CyclicList(cyclic_subdivisions, forget=False)
    ties = abjad.select.logical_ties(selections)
    for tie in ties:
        duration = abjad.get.duration(tie, preprolated=True)
        current_count = cyc_subdivisions(r=1)[0]
        nested_music = rmakers.tuplet([duration], [(1 for _ in range(current_count))])
        container = abjad.Container()
        for component in nested_music:
            if isinstance(component, list):
                container.extend(component)
            else:
                container.append(component)
        command_target = abjad.select.tuplets(container)
        rmakers.trivialize(command_target)
        # command_target = abjad.select.tuplets(container)
        # rmakers.rewrite_dots(command_target)
        rmakers.extract_trivial(container)
        music = abjad.mutate.eject_contents(container)
        abjad.mutate.replace(tie, music)


def sustain(selections, tie_counts=[2, 3, 4], sustain_boolean_vector=[True]):
    cyc_boolean = evans.CyclicList(sustain_boolean_vector, forget=False)
    ties = abjad.select.logical_ties(selections)
    groups = abjad.select.partition_by_counts(
        ties, tie_counts, cyclic=True, overhang=True
    )
    for group in groups:
        current_bool = cyc_boolean(r=1)[0]
        if current_bool is True:
            abjad.tie(group)
            level = []
            current_parent = abjad.get.parentage(abjad.select.leaf(group, 0))[1]
            for leaf in abjad.select.leaves(group):
                if abjad.get.parentage(leaf)[1] == current_parent:
                    level.append(leaf)
                else:
                    abjad.mutate.fuse(level)
                    level = [leaf]
                    current_parent = abjad.get.parentage(leaf)[1]
            abjad.mutate.fuse(level)


def _make_subdivided_music(
    selections,
    subdivisions=[2, 3, 4],
    subsubdivisions=[2, 3, 4],
    subsubdivision_selector=lambda _: abjad.select.logical_ties(
        _
    ),  # use abjad.select.get in practice
    sustain_counts=[4, 3, 2],
    sustain_boolean_vector=[True],
    sustain_final_step=True,
):
    copied_selections = abjad.mutate.copy(selections)
    container = abjad.Container()
    for component in copied_selections:
        if isinstance(component, list):
            container.extend(component)
        else:
            container.append(component)
    ties = abjad.select.logical_ties(container)
    subdivide(ties, cyclic_subdivisions=subdivisions)
    if sustain_final_step is False:  # not working
        if sustain_counts is not None:
            ties = abjad.select.logical_ties(container)
            sustain(ties, sustain_counts, sustain_boolean_vector)
        if subsubdivisions is not None:  # WARNING: cannot use gotten ties
            ties = abjad.select.logical_ties(container)
            cyc_sub_sub_counts = evans.CyclicList(subsubdivisions, forget=False)
            total_splits = []
            for tie in ties:
                prolated_duration = abjad.get.duration(tie)
                current_count = cyc_sub_sub_counts(r=1)[0]
                duration_components = [
                    prolated_duration / current_count for _ in range(current_count)
                ]
                total_splits.extend(duration_components)
            abjad.mutate.split(ties, duration_components)
    if sustain_final_step is True:
        if subsubdivisions is not None:
            ties = abjad.select.logical_ties(container)
            gotten_ties = subsubdivision_selector(ties)
            subdivide(gotten_ties, cyclic_subdivisions=subsubdivisions)
            if sustain_counts is not None:
                ties = abjad.select.logical_ties(container)
                sustain(ties, sustain_counts, sustain_boolean_vector)
    command_target = abjad.select.tuplets(container)
    rmakers.trivialize(command_target)
    command_target = abjad.select.tuplets(container)
    rmakers.rewrite_sustained(command_target)
    rmakers.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    abjad.mutate.replace(selections, music)


def make_subdivided_music(
    subdivisions=[2, 3, 4],
    subsubdivisions=[2, 3, 4],
    subsubdivision_selector=lambda _: abjad.select.logical_ties(_),
    sustain_counts=[4, 3, 2],
    sustain_boolean_vector=[True],
    sustain_final_step=True,
):
    def returned_function(selections):
        _make_subdivided_music(
            selections,
            subdivisions=subdivisions,
            subsubdivisions=subsubdivisions,
            subsubdivision_selector=subsubdivision_selector,
            sustain_counts=sustain_counts,
            sustain_boolean_vector=sustain_boolean_vector,
            sustain_final_step=sustain_final_step,
        )

    return returned_function


def upward_gliss(selections):
    ties = abjad.select.logical_ties(selections, pitched=True)
    groups = []
    sub_group = []
    for tie in ties:
        if len(sub_group) < 1:
            sub_group.append(tie)
        else:
            if tie[0].written_pitch < sub_group[-1][0].written_pitch:
                groups.append(sub_group)
                sub_group = [tie]
            else:
                sub_group.append(tie)
    if 1 < len(sub_group):
        groups.append(sub_group)
    for group in groups:
        leaves = abjad.select.leaves(group)
        zero_padding_glissando(leaves)


def downward_gliss(selections):
    ties = abjad.select.logical_ties(selections, pitched=True)
    groups = []
    sub_group = []
    for tie in ties:
        if len(sub_group) < 1:
            sub_group.append(tie)
        else:
            if sub_group[-1][0].written_pitch < tie[0].written_pitch:
                groups.append(sub_group)
                sub_group = [tie]
            else:
                sub_group.append(tie)
    if 1 < len(sub_group):
        groups.append(sub_group)
    for group in groups:
        leaves = abjad.select.leaves(group)
        zero_padding_glissando(leaves)


def swipe_stems(selections):
    literals = evans.CyclicList(
        [
            r"\swipeUpStemOn",
            r"\swipeDownStemOn",
        ],
        forget=False,
    )
    for leaf in abjad.select.leaves(selections, pitched=True):
        direction = literals(r=1)[0]
        literal = abjad.LilyPondLiteral(direction, site="before")
        abjad.attach(literal, leaf)

    last_leaf = abjad.select.leaf(selections, -1, pitched=True)
    abjad.attach(abjad.LilyPondLiteral(r"\stemOff", site="after"), last_leaf)


def circle_stems(selections, alternate=False):
    literals = evans.CyclicList(
        [
            r"""\markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }""",
            r"""\markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee89 }""",
        ],
        forget=False,
    )
    if alternate is True:
        for leaf in abjad.select.leaves(selections, pitched=True):
            direction = literals(r=1)[0]
            literal = abjad.Markup(direction)
            abjad.attach(literal, leaf, direction=abjad.DOWN)
    else:
        direction = literals(r=1)[0]
        for leaf in abjad.select.leaves(selections, pitched=True):
            literal = abjad.Markup(direction)
            abjad.attach(literal, leaf, direction=abjad.DOWN)


def select_outer_tuplets(selections):
    tuplets = [_ for _ in selections if isinstance(_, abjad.Tuplet)]
    return tuplets


def components_to_score_markup_string(components):
    assert all(isinstance(_, abjad.Component) for _ in components), repr(components)
    components = copy.deepcopy(components)
    staff = abjad.Staff(components, name="Rhythmic_Staff")
    staff.lilypond_type = "RhythmicStaff"
    staff.remove_commands.append("Time_signature_engraver")
    staff.remove_commands.append("Staff_symbol_engraver")
    abjad.override(staff).Stem.direction = abjad.UP
    abjad.override(staff).Stem.length = 5
    abjad.override(staff).TupletBracket.bracket_visibility = True
    abjad.override(staff).TupletBracket.direction = abjad.UP
    abjad.override(staff).TupletBracket.minimum_length = 4
    abjad.override(staff).TupletBracket.padding = 1.25
    abjad.override(staff).TupletBracket.shorten_pair = "#'(-1 . -1.5)"
    scheme = "#ly:spanner::set-spacing-rods"
    abjad.override(staff).TupletBracket.springs_and_rods = scheme
    abjad.override(staff).TupletNumber.font_size = 0
    scheme = "#tuplet-number::calc-fraction-text"
    abjad.override(staff).TupletNumber.text = scheme
    abjad.setting(staff).tupletFullLength = True
    layout_block = abjad.Block("layout")
    layout_block.items.append("indent = 0")
    layout_block.items.append("ragged-right = ##t")
    score = abjad.Score([staff], name="Score")
    abjad.override(score).SpacingSpanner.spacing_increment = 0.5
    abjad.setting(score).proportionalNotationDuration = False
    indent = 4 * " "
    strings = [r"\score", indent + "{"]
    strings.extend([2 * indent + _ for _ in abjad.lilypond(score).split("\n")])
    strings.extend([2 * indent + _ for _ in abjad.lilypond(layout_block).split("\n")])
    strings.append(indent + "}")
    string = "\n".join(strings)
    return string


def annotate_tuplet_durations(selections):
    # tuplets = [_ for _ in selections if isinstance(_, abjad.Tuplet)]
    counter = 0
    for tuplet in abjad.select.tuplets(selections):
        counter += 1
        duration_ = abjad.get.duration(tuplet, preprolated=True)
        components = abjad.makers.make_leaves([0], [duration_])
        # if all(isinstance(_, abjad.Note) for _ in components):
        #     durations = [abjad.get.duration(_) for _ in components]
        #     strings = [_.lilypond_duration_string for _ in durations]
        #     string = " ~ ".join(strings)
        #     string = rf"\rhythm {{ {string} }}"
        # else:
        #     string = components_to_score_markup_string(components)
        string = components_to_score_markup_string(components)
        string = rf"\addNote \markup \parenthesize {{ \scale #'(0.5 . 0.5) {string} }}"
        # string = rf"\addNote \markup {counter}"
        literal = abjad.LilyPondLiteral(string, site="absolute_before")
        # abjad.override(tuplet).TupletNumber.text = string
        # print(f"{counter}: {tuplet.multiplier}")
        abjad.attach(
            literal, tuplet
        )  # find specific tuplets that force fraction and replace with 1/1 and leaf multipliers
