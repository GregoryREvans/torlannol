import pathlib

import evans

import torlannol

breaks = evans.Breaks(
    evans.Page(
        evans.System(measures=5, lbsd=(10 + 45 - 10, "(20)"), x_offset=4),
        evans.System(measures=5, lbsd=(10 + 45 + 45 - 10, "(25)"), x_offset=4),
        evans.System(measures=3, lbsd=(10 + 45 + 45 + 45 - 10, "(25)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=6, lbsd=(10 - 8, "(26)"), x_offset=4),
        evans.System(measures=5, lbsd=(10 - 7 + 57, "(18)"), x_offset=4),
        evans.System(measures=5, lbsd=(10 - 7 + 52 + 52, "(18)"), x_offset=4),
        evans.System(measures=5, lbsd=(10 - 7 + 50 + 50 + 50, "(18)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(10 - 7, "(20)"), x_offset=4),
        evans.System(measures=5, lbsd=(10 - 7 + 44, "(26)"), x_offset=4),
        evans.System(measures=5, lbsd=(10 - 7 + 44 + 44, "(25)"), x_offset=4),
        evans.System(measures=5, lbsd=(10 - 7 + 50 + 50 + 50, "(17)"), x_offset=4),
    ),
    time_signatures=torlannol.reduced_signatures_01,
    default_spacing=(1, 75),  # 35
    spacing=[
        (9, (1, 90)),
        (43, (1, 90)),
        (46, (1, 90)),
        (47, (1, 90)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
