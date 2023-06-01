import random

import abjad
import evans
from abjadext import nauert, rmakers


def make_lilypond_file(time_signatures, tuplets):
    time_signatures = [abjad.TimeSignature(_) for _ in time_signatures]
    durations = [abjad.Duration(_) for _ in time_signatures]
    container = abjad.Container(tuplets)
    command_target = abjad.select.tuplets(container)  #
    rmakers.trivialize(command_target)  #
    rmakers.extract_trivial(container)  #
    rmakers.beam(container)
    components = abjad.mutate.eject_contents(container)
    lilypond_file = rmakers.example(components, time_signatures)
    return lilypond_file


# Helianthation procedure

# trees = evans.helianthated_rtm(
#     [[1, 1, 1, 1], [1, 1, 1], [1, 1], [1]],
#     [[1], [1], [2], [3]],
#     (-1, 1),
#     (1, -1),
# )
#
# pairs = [(4, 8) for _ in trees]
# # pairs = [(3, 8), (4, 8), (5, 8), (3, 8)]
#
# tuplets = []
#
# for tree, pair in zip(trees, pairs):
#     maker = evans.RTMMaker([tree])
#     tuplet = maker([pair])
#     markup = abjad.Markup(rf"\markup {{ {tree} }}")
#     abjad.attach(markup, abjad.select.leaf(tuplet, 0), direction=abjad.UP)
#     tuplets.append(tuplet)
#
# lilypond_file = make_lilypond_file(pairs, tuplets)
#
# abjad.show(lilypond_file)

# random fluctuation procedure

# random.seed(1)
# trees = [
#     f"(1 ({random.choice([4, 3, 2, 1])} {random.choice([3, 2])} {random.choice([3, 2, 1])} {random.choice([2, 1])}))",
#     f"(1 ({random.choice([4, 3, 2, 1])} {random.choice([3, 2])} {random.choice([3, 2, 1])} {random.choice([2, 1])}))",
#     f"(1 ({random.choice([4, 3, 2, 1])} {random.choice([3, 2])} {random.choice([3, 2, 1])} {random.choice([2, 1])}))",
#     f"(1 ({random.choice([4, 3, 2, 1])} {random.choice([3, 2])} {random.choice([3, 2, 1])} {random.choice([2, 1])}))",
#     f"(1 ({random.choice([4, 3, 2, 1])} {random.choice([3, 2])} {random.choice([3, 2, 1])} {random.choice([2, 1])}))",
#     f"(1 ({random.choice([4, 3, 2, 1])} {random.choice([3, 2])} {random.choice([3, 2, 1])} {random.choice([2, 1])}))",
# ]
#
# pairs = [(4, 8) for _ in trees]
# # pairs = [(3, 8), (4, 8), (5, 8), (3, 8)]
#
# tuplets = []
#
# for tree, pair in zip(trees, pairs):
#     maker = evans.RTMMaker([tree])
#     tuplet = maker([pair])
#     markup = abjad.Markup(rf"\markup {{ {tree} }}")
#     abjad.attach(markup, abjad.select.leaf(tuplet, 0), direction=abjad.UP)
#     tuplets.append(tuplet)
#
# lilypond_file = make_lilypond_file(pairs, tuplets)
#
# abjad.show(lilypond_file)


# Subdivide Procedure
# cyclic
# performed on leaves by replacing with tuplet of either
#   proportion (number of equidistant subdivisions)
#   or specific proportions

# Fuse Procedure
# cyclic
# select leaves and tie. If logical same parent: fuse
# rewrite meter, leave tuplets alone

# Pepper with rests as final step


### UNITY CAPSULE

signatures = [
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((3, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((6, 8)),
    abjad.TimeSignature((7, 8)),
    abjad.TimeSignature((5, 8)),
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((2, 8)),
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((4, 8)),
    abjad.TimeSignature((1, 8)),
    abjad.TimeSignature((2, 8)),
]

chart_score = abjad.Score(
    [
        abjad.Staff(name="Global Context"),
        abjad.Staff(name="staff 1"),
        abjad.Staff(name="staff 2"),
        abjad.Staff(name="staff 3"),
        abjad.Staff(name="staff 4"),
        abjad.Staff(name="staff 5"),
        abjad.Staff(name="staff 6"),
        abjad.Staff(name="staff 7"),
        abjad.Staff(name="staff 8"),
        abjad.Staff(name="staff 9"),
    ]
)

for signature in signatures:
    n = abjad.Skip((1, 1), multiplier=abjad.Multiplier(signature))
    chart_score["Global Context"].append(n)
abjad.attach(abjad.MetronomeMark((1, 8), 60), chart_score["Global Context"][0])

for signature, leaf in zip(
    signatures, abjad.select.leaves(chart_score["Global Context"])
):
    abjad.attach(signature, leaf)

target_1 = sum([abjad.Duration(_) for _ in signatures[0:3]])
layer_1 = rmakers.tuplet([target_1], [(1, 1, 1, 1)])
chart_score["staff 1"].extend(layer_1)

target_2 = sum([abjad.Duration(_) for _ in signatures[0:4]])
layer_2 = rmakers.tuplet([target_2], [(1, 1, 1)])
chart_score["staff 2"].extend(layer_2)

target_3_ = sum([abjad.Duration(_) for _ in [signatures[0]]])
target_3 = sum([abjad.Duration(_) for _ in signatures[1:3]])
pause = abjad.Staff(rmakers.note([target_3_]))
rmakers.force_rest(pause)
layer_3 = rmakers.tuplet([target_3], [(1, 1, 1)])
chart_score["staff 3"].extend(pause)
chart_score["staff 3"].extend(layer_3)

target_4_ = sum([abjad.Duration(_) for _ in [signatures[0]]])
target_4 = sum([abjad.Duration(_) for _ in signatures[1:4]])
pause = abjad.Staff(rmakers.note([target_4_]))
rmakers.force_rest(pause)
layer_4 = rmakers.tuplet([target_4], [(1, 1)])
chart_score["staff 4"].extend(pause)
chart_score["staff 4"].extend(layer_4)

target_5_ = sum([abjad.Duration(_) for _ in signatures[0:2]])
target_5 = sum([abjad.Duration(_) for _ in signatures[2:8]])
pause = abjad.Staff(rmakers.note([target_5_]))
rmakers.force_rest(pause)
layer_5 = rmakers.tuplet([target_5], [(1, 1)])
chart_score["staff 5"].extend(pause)
chart_score["staff 5"].extend(layer_5)

target_6_ = sum([abjad.Duration(_) for _ in signatures[0:2]])
target_6 = sum([abjad.Duration(_) for _ in signatures[2:4]])
pause = abjad.Staff(rmakers.note([target_6_]))
rmakers.force_rest(pause)
layer_6 = rmakers.tuplet([target_6], [(1, 1, 1, 1, 1, 1)])
chart_score["staff 6"].extend(pause)
chart_score["staff 6"].extend(layer_6)

target_7_ = sum([abjad.Duration(_) for _ in signatures[0:3]])
target_7 = sum([abjad.Duration(_) for _ in signatures[3:10]])
pause = abjad.Staff(rmakers.note([target_7_]))
rmakers.force_rest(pause)
layer_7 = rmakers.tuplet([target_7], [(1, 1, 1, 1, 1, 1)])
chart_score["staff 7"].extend(pause)
chart_score["staff 7"].extend(layer_7)

target_8_ = sum([abjad.Duration(_) for _ in signatures[0:3]])
target_8 = sum([abjad.Duration(_) for _ in signatures[3:9]])
pause = abjad.Staff(rmakers.note([target_8_]))
rmakers.force_rest(pause)
layer_8 = rmakers.tuplet([target_8], [(1, 1, 1, 1, 1, 1, 1)])
chart_score["staff 8"].extend(pause)
chart_score["staff 8"].extend(layer_8)

relevant_staves = [
    chart_score["staff 1"],
    chart_score["staff 2"],
    chart_score["staff 3"],
    chart_score["staff 4"],
    chart_score["staff 5"],
    chart_score["staff 6"],
    chart_score["staff 7"],
    chart_score["staff 8"],
]

ties = abjad.select.logical_ties(relevant_staves, pitched=True)
spans = [abjad.get.timespan(tie) for tie in ties]
offset_counter = abjad.OffsetCounter(spans)
offsets = list(set(item[0] for item in offset_counter.items.items()))
offsets.sort()
reduced_spans = []
for start, stop in evans.consort.iterate_nwise(offsets, 2):
    reduced_spans.append(abjad.Timespan(start, stop))
durations = [_.duration for _ in reduced_spans]

# source_line = abjad.Staff(rmakers.note(durations))
# chart_score["staff 9"].extend(source_line)
# signature_durations = [abjad.Duration(_) for _ in signatures]
# leaves = abjad.select.leaves(chart_score["staff 9"])
#
# command_target = abjad.select.tuplets(chart_score["staff 9"])
# rmakers.trivialize(command_target)
# command_target = abjad.select.tuplets(chart_score["staff 9"])
# rmakers.rewrite_rest_filled(command_target)
# command_target = abjad.select.tuplets(chart_score["staff 9"])
# rmakers.rewrite_sustained(command_target)
# rmakers.extract_trivial(chart_score["staff 9"])  # ?
# command_target = abjad.select.tuplets(chart_score["staff 9"])
# rmakers.rewrite_dots(command_target)
#
# abjad.mutate.split(chart_score["staff 9"][:], signature_durations)
#
# measures = abjad.select.partition_by_durations(chart_score["staff 9"], signature_durations, overhang=True, fill=abjad.MORE)
# for group, signature in zip(measures, signatures):
#     meter = abjad.Meter(signature)
#     abjad.Meter.rewrite_meter(group, meter, boundary_depth=1, maximum_dot_count=1, rewrite_tuplets=False)
#
# tuplets = abjad.select.tuplets(chart_score["staff 9"])
# two_over_3_tuplets = [tuplet for tuplet in tuplets if tuplet.multiplier == abjad.Multiplier(2, 3)]
# contiguities = abjad.select.group_by_contiguity(two_over_3_tuplets)
# for group in contiguities:
#     new_tuplet = abjad.Tuplet(multiplier=abjad.Multiplier(2, 3))
#     for tuplet in group:
#         for leaf in tuplet:
#             copied_leaf = abjad.mutate.copy(leaf)
#             new_tuplet.append(copied_leaf)
#     abjad.mutate.replace(group, new_tuplet)
#
# abjad.mutate.split(chart_score["staff 9"][:], signature_durations)
# abjad.beam(chart_score["staff 9"], stemlet_length=1.5, beam_lone_notes=True, beam_rests=True)
#
# abjad.show(chart_score)

# VERSION WITH QUANTIZER

reference_tempo = 60
reference_duration = abjad.Duration(1, 8)
inverted_reference = abjad.Duration(
    reference_duration.denominator, reference_duration.numerator
)
multiplier_durations = [_.duration * inverted_reference for _ in reduced_spans]
miliseconds_durations = [_ * 1000 for _ in multiplier_durations]

q_event_sequence = nauert.QEventSequence.from_millisecond_durations(
    miliseconds_durations
)
target_tempo = abjad.MetronomeMark(reference_duration, reference_tempo)
q_schema = nauert.MeasurewiseQSchema(
    tempo=target_tempo,
)
optimizer = nauert.MeasurewiseAttackPointOptimizer()
result = nauert.quantize(
    q_event_sequence,
    attack_point_optimizer=optimizer,
    q_schema=q_schema,
)
# staff = abjad.Staff([result])
# score = abjad.Score([staff])
chart_score["staff 9"].extend(result)
for leaf in abjad.select.leaves(chart_score["staff 9"]):
    indicator = abjad.get.indicator(leaf, abjad.TimeSignature)
    if indicator is not None:
        abjad.detach(indicator, leaf)

signature_durations = [abjad.Duration(_) for _ in signatures]

command_target = abjad.select.tuplets(chart_score["staff 9"])
rmakers.trivialize(command_target)
command_target = abjad.select.tuplets(chart_score["staff 9"])
rmakers.rewrite_rest_filled(command_target)
command_target = abjad.select.tuplets(chart_score["staff 9"])
rmakers.rewrite_sustained(command_target)
rmakers.extract_trivial(chart_score["staff 9"])  # ?
command_target = abjad.select.tuplets(chart_score["staff 9"])
rmakers.rewrite_dots(command_target)

shards = abjad.mutate.split(chart_score["staff 9"][:], signature_durations)

# measures = abjad.select.partition_by_durations(chart_score["staff 9"], signature_durations, overhang=True, fill=abjad.MORE)
for group, signature in zip(shards, signatures):
    meter = abjad.Meter(signature)
    abjad.Meter.rewrite_meter(
        group, meter, boundary_depth=1, maximum_dot_count=1, rewrite_tuplets=False
    )

for tuplet in abjad.select.tuplets(chart_score["staff 9"]):
    for tie in abjad.select.logical_ties(tuplet, pitched=True):
        inner_group = []
        for leaf in tie:
            if abjad.get.parentage(leaf).parent == tuplet:
                inner_group.append(leaf)
        abjad.mutate.fuse(inner_group)

evans.long_beam(
    chart_score["staff 9"], stemlet_length=1.5, beam_lone_notes=False, beam_rests=True
)

staff_10 = abjad.mutate.copy(chart_score["staff 9"])
staff_10.name = "staff 10"
chart_score.append(staff_10)

for tuplet in abjad.select.tuplets(chart_score["staff 10"]):
    previous_leaf = abjad.get.leaf(abjad.select.leaf(tuplet, 0), -1)
    indicator = abjad.get.indicator(previous_leaf, abjad.Tie)
    if indicator is not None:
        abjad.detach(indicator, previous_leaf)

    final_leaf = abjad.select.leaf(tuplet, -1)
    indicator = abjad.get.indicator(final_leaf, abjad.Tie)
    if indicator is not None:
        abjad.detach(indicator, final_leaf)

abjad.show(chart_score)
