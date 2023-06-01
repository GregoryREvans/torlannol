import pathlib

import evans

import torlannol

breaks = evans.Breaks(
    evans.Page(
        evans.System(measures=2, lbsd=(40, "(18)"), x_offset=2),  # 1
        evans.System(measures=2, lbsd=(80, "(24)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(25)"), x_offset=2),  # 2
        evans.System(measures=2, lbsd=(65, "(26)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(26)"), x_offset=2),  # 3
        evans.System(measures=2, lbsd=(65, "(27)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(27)"), x_offset=2),  # 4
        evans.System(measures=2, lbsd=(65, "(27)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(27)"), x_offset=2),  # 5
        evans.System(measures=2, lbsd=(65, "(26)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(19)"), x_offset=2),  # 6
        evans.System(measures=2, lbsd=(65, "(19)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(17)"), x_offset=2),  # 7
        evans.System(measures=2, lbsd=(65, "(19)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(24)"), x_offset=2),  # 8
        evans.System(measures=2, lbsd=(65, "(24)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(17)"), x_offset=2),  # 9
        evans.System(measures=2, lbsd=(65, "(17)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(18)"), x_offset=2),  # 10
        evans.System(measures=2, lbsd=(65, "(22)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(26)"), x_offset=2),  # 11
        evans.System(measures=2, lbsd=(65, "(25)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(25)"), x_offset=2),  # 12
        evans.System(measures=2, lbsd=(65, "(25)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(17)"), x_offset=2),  # 13
        evans.System(measures=2, lbsd=(65, "(17)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10, "(17)"), x_offset=2),  # 14
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
