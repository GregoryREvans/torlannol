  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "abjad.ily"
\include "../../build/segment_stylesheet.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<

        \context Score = "Score"
        <<
      { \include "layout.ly" }
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 8=117
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #1 #"117"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                \tempo 8=75
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #1 #"75"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                \time 6/8
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                \time 6/8
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                \tempo 8=48
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #1 #"48"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                \tempo 8=93
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2
                - \abjad-dashed-line-with-arrow
                - \baca-metronome-mark-spanner-left-text 3 0 1 "145 (rit.)"
                - \tweak padding #4
                - \tweak staff-padding #2
                - \tweak font-size #2
                \bacaStartTextSpanMM

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 27]
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 28]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 29]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8
                \bacaStopTextSpanMM
                - \abjad-invisible-line
                - \baca-metronome-mark-spanner-left-text 3 0 1 "39"
                - \tweak padding #4
                - \tweak staff-padding #2
                - \tweak font-size #2
                \bacaStartTextSpanMM

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 30]
                \tempo 8=60
                  %! scaling time signatures
                \time 9/8
                s1 * 9/8
                \bacaStopTextSpanMM
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #1 #"60"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 31]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 32]
                  %! scaling time signatures
                \time 8/8
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 33]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 34]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 35]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 36]
                \tempo 8=93
                  %! scaling time signatures
                \time 6/8
                s1 * 3/4
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #1 #"93"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 37]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 38]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 39]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 40]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 41]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 42]
                  %! scaling time signatures
                \time 1/8
                s1 * 1/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 43]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 44]
                \tempo 8=145
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #1 #"145"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 45]
                  %! scaling time signatures
                \time 6/8
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 46]
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 47]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 48]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 49]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 50]
                  %! scaling time signatures
                \time 6/8
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 51]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 52]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 53]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 54]
                \once \override MultiMeasureRest.transparent = ##t
                \once \override Score.TimeSignature.transparent = ##t
                \time 1/4
                s1 * 1/8

                \once \override Rest.transparent = ##t
                r1 * 1/8
                ^ \markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"
                \bar "|."

            }

            \tag #'group1
            {

                \context StaffGroup = "Staff Group"
                <<

                    \tag #'voice1
                    {

                        \context Staff = "cello staff"
                        {

                            \context Voice = "cello voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 1]
                                \clef "bass"
                                \override Staff.Stem.stemlet-length = 1.66
                                d,16
                                \sfp
                                ^ [
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 12
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "MSP"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                \<

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                dqf,16
                                - \accent
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                aqs16
                                \f

                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.25 3 0)
                                      (3 0 3.5 -0.25 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                      (6 0 6.5 0.25 7 0)
                                      (7 0 7.5 -0.25 8 0)
                                      (8 0 8.5 0.5 9 0)
                                      (9 0 9.5 -0.5 10 0)
                                      (10 0 10.5 5 11 0)
                                      (11 0 11.5 -5 12 0)
                                      (12 0 12.5 4 13 0)
                                      (13 0 13.5 -4 14 0)
                                 )
                                 #0.5
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                \revert Staff.Stem.stemlet-length
                                \afterGrace
                                aqf8.
                                \mf
                                ]
                                \glissando
                                - \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"
                                \startTrillSpan
                                {

                                    \start-single-grace
                                    \once \override Accidental.stencil = ##f
                                    \once \override Beam.positions = #'(18 . 18)
                                    \once \override Beam.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \tweak X-extent #'(0 . 0)
                                    aqf16
                                    [
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \tweak X-extent #'(0 . 0)
                                    aqf16
                                    ]
                                    \stop-single-grace

                                }


                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 2]
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 0.5 5 0)
                                          (5 0 5.5 -0.5 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                          (8 0 8.5 4 9 0)
                                          (9 0 9.5 -4 10 0)
                                          (10 0 10.5 3 11 0)
                                          (11 0 11.5 -3 12 0)
                                          (12 0 12.5 0.5 13 0)
                                          (13 0 13.5 -0.5 14 0)
                                     )
                                     #0.5
                                    \half-harmonic
                                    \afterGrace
                                    bf4
                                    \ff
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                    \stopTrillSpan
                                    \glissando
                                    {

                                        \start-single-grace
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.positions = #'(18 . 18)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        bf16
                                        [
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \tweak X-extent #'(0 . 0)
                                        bf16
                                        ]
                                        \stop-single-grace

                                    }


                                    r4

                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    \override Staff.Stem.stemlet-length = 1.66
                                    a16
                                    \ff
                                    ^ [
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 12
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    gqs16
                                    - \accent
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cqs16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    fqs16
                                    \mp
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 3]
                                    r8.

                                    \appoggiatura {

                                        \once \override Beam.positions = #'(18 . 18)
                                        ef16
                                        \p
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 17
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-dashed-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "N"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-right-text "MSP"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanOne

                                        f16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        ]

                                    }

                                    gqs8.
                                    \revert-noteheads

                                    \appoggiatura {

                                        \once \override Beam.positions = #'(18 . 18)
                                        a16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        [

                                        af16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }

                                        aqf16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        ]

                                    }

                                    \once \override Staff.NoteHead.style = #'cross
                                    gqs8.
                                    :32
                                    - \bendAfter #'-5
                                    \fff

                                    \appoggiatura {

                                        \once \override Beam.positions = #'(18 . 18)
                                        gqf16
                                        \mp
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        [

                                        fqs16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee89 }

                                        e16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }

                                        ef16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee89 }
                                        ]

                                    }

                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 0.5 5 0)
                                          (5 0 5.5 -0.5 6 0)
                                          (6 0 6.5 4 7 0)
                                          (7 0 7.5 -4 8 0)
                                          (8 0 8.5 3 9 0)
                                          (9 0 9.5 -3 10 0)
                                          (10 0 10.5 2 11 0)
                                          (11 0 11.5 -2 12 0)
                                          (12 0 12.5 5 13 0)
                                          (13 0 13.5 -5 14 0)
                                          (14 0 14.5 0.5 15 0)
                                          (15 0 15.5 -0.5 16 0)
                                          (16 0 16.5 0.5 17 0)
                                          (17 0 17.5 -0.5 18 0)
                                          (18 0 18.5 0.5 19 0)
                                          (19 0 19.5 -0.5 20 0)
                                          (20 0 20.5 0.5 21 0)
                                          (21 0 21.5 -0.5 22 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    eqs8.
                                    \glissando
                                    {

                                        \start-single-grace
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.positions = #'(18 . 18)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        eqs16
                                        [
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \tweak X-extent #'(0 . 0)
                                        eqs16
                                        ]
                                        \stop-single-grace

                                    }


                                }

                                \times 4/5
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        ef64.
                                        \ff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \>

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        dqs64.
                                        - \accent
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        c64.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanOne
                                        <>
                                        \mp

                                        r64.

                                        d64.
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 14
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-dashed-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "MSP"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-right-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanOne
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                    }

                                    bqs,16.

                                    \acciaccatura {

                                        \once \override Beam.positions = #'(18 . 18)
                                        r8
                                        [

                                        cs16
                                        ]
                                        (
                                        <> )

                                    }

                                    c16.

                                    cqs32
                                    - \accent
                                    \f
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    r32

                                    \half-harmonic
                                    bqs,32
                                    \ff
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "MST"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "MSP"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    \revert Staff.Stem.stemlet-length
                                    cqs16.
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 5]
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.5 3 0)
                                      (3 0 3.5 -0.5 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                      (6 0 6.5 4 7 0)
                                      (7 0 7.5 -4 8 0)
                                      (8 0 8.5 0.5 9 0)
                                      (9 0 9.5 -0.5 10 0)
                                      (10 0 10.5 0.5 11 0)
                                      (11 0 11.5 -0.5 12 0)
                                      (12 0 12.5 5 13 0)
                                      (13 0 13.5 -5 14 0)
                                      (14 0 14.5 0.5 15 0)
                                      (15 0 15.5 -0.5 16 0)
                                      (16 0 16.5 3 17 0)
                                      (17 0 17.5 -3 18 0)
                                      (18 0 18.5 0.5 19 0)
                                      (19 0 19.5 -0.5 20 0)
                                      (20 0 20.5 0.5 21 0)
                                      (21 0 21.5 -0.5 22 0)
                                 )
                                 #0.5
                                \afterGrace
                                bqs,4
                                - \accent
                                \p
                                \<
                                \glissando
                                {

                                    \start-single-grace
                                    \once \override Accidental.stencil = ##f
                                    \once \override Beam.positions = #'(18 . 18)
                                    \once \override Beam.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \tweak X-extent #'(0 . 0)
                                    bqs,16
                                    [
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \tweak X-extent #'(0 . 0)
                                    bqs,16
                                    ]
                                    \stop-single-grace

                                }


                                \acciaccatura {

                                    \once \override Beam.positions = #'(18 . 18)
                                    r8
                                    [

                                    cs16
                                    ]
                                    (
                                    <> )

                                }

                                \afterGrace 1/16
                                d4
                                ~
                                {
                                     \suggest-pitch-open  fqs32 \startDoubleTrill #12 #11 
                                     \suggest-pitch-close  gs32
                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 6]
                                    d4
                                    ~

                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    d32

                                    \afterGrace 1/16
                                    eqf2.
                                    ~
                                    \stopDoubleTrill
                                    {
                                         \suggest-pitch-open  g32 \startTripleTrill #13 #12 #11      \suggest-pitch-middle  fqs32     \suggest-pitch-close  as32}

                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    \override Staff.Stem.stemlet-length = 1.66
                                    eqf16.
                                    ^ [
                                    ~

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 7]
                                eqf8
                                ~

                                \times 4/5
                                {

                                    eqf64

                                    d16
                                    ~
                                    \stopTripleTrill

                                }

                                d16
                                \f
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                \revert-noteheads

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 8]
                                    r16.

                                    dqf32
                                    \fff
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 12
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "MST"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                    \>

                                    e32
                                    - \accent

                                    d32

                                    bqs,16.
                                    \p
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    r16.

                                    cs16.
                                    \mf

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 9]
                                    c,32
                                    \sfp
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 17
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo
                                    \<

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \times 2/3
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs16
                                        - \damped-f
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    r64

                                    a64
                                    \mf
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf64
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d64
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \times 2/3
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        cs,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        fs,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    d,16
                                    - \damped-ff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    r16
                                    \stopTrillSpan

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 10/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 10]
                                    f,16
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 17
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "MSP"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    b,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \scaleDurations #'(1 . 1)
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        f32.
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        a,32.
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        af,32.
                                        - \damped-fff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        r32.

                                    }

                                    \times 2/3
                                    {

                                        c,32
                                        \f
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \>
                                        - \tweak details.squiggle-Y-scale 0.8
                                        - \tweak details.squiggle-initial-width 0.4
                                        - \tweak details.squiggle-speed-factor -0.6
                                        - \tweak thickness 3
                                        \slow-fast-harmonic

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        cs,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef,16
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    f,16
                                    \pp
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 17
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 11]
                                    r16
                                    \stopTrillSpan

                                    a,16
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    b,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \times 2/3
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        c8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        af8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs8
                                        - \damped-mf
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    r16

                                    g,16
                                    \sf
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \>
                                    - \tweak details.squiggle-Y-scale 0.9
                                    - \tweak details.squiggle-initial-width 5
                                    - \tweak details.squiggle-speed-factor 0.7
                                    - \tweak thickness 3
                                    \slow-fast-harmonic

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d,8
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs,8
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \times 2/3
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        a,8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        b,8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        g,8
                                        \!
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo

                                    }

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 12]
                                \harmonicsOn
                                fs,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \f
                                \stopTrillSpan
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 16.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 18.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "non gridato"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "gridato"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanThree
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 20.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-hook
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "1/2 col legno tratto"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpan
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                gqf,32

                                fs,32

                                gqf,32

                                fs,32
                                - \accent
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                gqf,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \p
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                fqs32

                                f32
                                - \marcato
                                )

                                \times 4/5
                                {

                                    f,32
                                    (

                                    g,32

                                    dqs32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo

                                    eqs32
                                    - \accent
                                    )
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16.7
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    bqs,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    c32

                                    bqf,32
                                    - \marcato

                                    c32
                                    )

                                    gqf32
                                    (

                                    eqs32

                                }

                                a,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \mf
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                - \tweak stencil #abjad-flared-hairpin
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                g,32
                                - \marcato
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                fs,32
                                - \accent
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                a,32

                                af32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \f
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                e'32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo

                                g'32
                                )
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 16.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo

                                e,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                (

                                g,32
                                - \marcato
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                ef32
                                - \accent
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \pp
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                - \tweak stencil #abjad-flared-hairpin
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                d'32

                                f'32

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 13]
                                    e'64
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    d'64
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    gqf64
                                    - \accent
                                    )

                                    eqs64
                                    (

                                    b64
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    cqs'64
                                    - \marcato
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16.7
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    b64
                                    )

                                    bqs64
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                    (

                                    gqf64
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    aqf64
                                    - \accent

                                    e'64
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \mp
                                    )
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    fs'64
                                    (

                                    fs64
                                    - \marcato

                                    fqs64

                                }

                                \times 8/13
                                {

                                    eqs'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                    )
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    f'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                    (

                                    eqs'32
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    f'32
                                    - \marcato
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo

                                    eqs'32
                                    - \accent
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16.7
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    f'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \p
                                    )
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    aqf'32
                                    (

                                    fqs'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    aqs32
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    bqf,32

                                    gqs,32
                                    - \marcato

                                    aqf,32
                                    - \accent

                                    bqf,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                }

                                fs32
                                )
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                af32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo
                                (

                                dqf32
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 16.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo

                                c32
                                - \accent

                                dqf32
                                )

                                cs32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \mf
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                - \tweak stencil #abjad-flared-hairpin
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                fs32
                                - \marcato
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                e32
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                \times 8/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 14]
                                    aqf,32
                                    )

                                    gqf,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    gqf32
                                    - \accent

                                    g32

                                    af,32
                                    )

                                    gqs,32
                                    - \marcato
                                    (

                                    af,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \pp
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    - \tweak stencil #abjad-flared-hairpin
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    gqs,32
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16.7
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    af,32

                                    gqs,32
                                    )

                                    gqs,32
                                    - \marcato
                                    (

                                }

                                af,32
                                - \accent

                                gqs,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                af,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \f
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                gqs,32

                                af,32

                                g32

                                gqf32
                                - \marcato
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo

                                gqf,32
                                - \accent
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 16.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo

                                \times 2/3
                                {

                                    aqf,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \mp
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    e32

                                    fs32
                                    )

                                    cs32
                                    (

                                    dqf32
                                    - \accent
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    c32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 15]
                                dqf32
                                )
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                af32
                                - \marcato
                                (

                                fs32

                                bqf,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \p
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                aqf,32
                                )

                                gqs,32
                                - \accent
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo
                                (

                                bqf,32
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 16.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo

                                aqs32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                \times 2/3
                                {

                                    fqs'32
                                    - \marcato
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    aqf'32
                                    )

                                    fqs,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    aqf,32

                                    eqs32

                                    eqf'32
                                    - \marcato
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    gqf'32
                                    - \accent
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    fqs'32

                                    eqf'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \mf
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    - \tweak stencil #abjad-flared-hairpin
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    af32
                                    )
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16.7
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    fs32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                    (

                                    cqs'32
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 16]
                                    d'64
                                    - \marcato
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    cqs'64
                                    - \accent
                                    )

                                    cs'64
                                    (

                                    af64

                                    bf64

                                    fqs'64
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \pp
                                    )
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    - \tweak stencil #abjad-flared-hairpin
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    gqs'64
                                    - \accent
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    gqs64

                                    g64

                                    fs'64
                                    - \marcato
                                    )
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo

                                    gqf'64
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16.7
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    fs'64

                                    gqf'64
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    fs'64
                                    - \accent
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                }

                                \times 4/5
                                {

                                    gqf'32
                                    )
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 14
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    bf'32
                                    (

                                    g'32
                                    - \marcato

                                    b32

                                    c32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \mp
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 17]
                                a,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                bf,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                c32
                                - \marcato
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 16.7
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo

                                gqs32
                                - \accent
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \f
                                )

                                aqs32
                                (

                                ef32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                dqf32
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 14
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                ef32
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(4)
                                  %! baca.text_spanner()
                                \stopTextSpan
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanThree
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo
                                \harmonicsOff

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 18]
                                    eqf,16
                                    \ff
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 16.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "MSP"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                    \>

                                    ef,16
                                    - \accent

                                    e,16

                                }

                                ef,32

                                eqf,32

                                d,32

                                dqf,32
                                - \accent
                                \mp
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                \times 2/3
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 19]
                                        r16

                                        d,16
                                        \ff
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 16.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-dashed-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-right-text "T"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanOne
                                        \>

                                        c,16

                                        dqs,16

                                        cs,16

                                    }

                                    \times 2/3
                                    {

                                        dqf,8

                                        d,8

                                        \acciaccatura {

                                            \once \override Beam.positions = #'(20 . 20)
                                            r8
                                            [

                                            ef,16
                                            _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                            ]
                                            (
                                            <> )

                                        }

                                        d,8
                                        - \accent

                                    }

                                    dqs,16

                                    \appoggiatura {

                                        \once \override Beam.positions = #'(20 . 20)
                                        e,16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee89 }
                                        [

                                        eqs,16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        ]

                                    }

                                    f,16

                                    g,16
                                    \mp
                                    )
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    r16

                                }

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 20]
                                    eqs,64.
                                    \ff
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 10
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "MSP"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                    \>

                                    fs,64.
                                    - \accent

                                    aqf,64.

                                    a,64.

                                    af,64.
                                    - \accent

                                }

                                a,32

                                aqf,32
                                \mp
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                r32

                                bf,64.
                                \p
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 10
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "MSP"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                - \tweak stencil #abjad-flared-hairpin
                                \<

                                aqs,64.

                                bf,64.
                                - \accent

                                af,64.

                                \times 4/5
                                {

                                    bqf,64.

                                    a,64.

                                    gqf,64.

                                    fs,64.

                                    g,64.

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 21]
                                    af,16
                                    - \accent
                                    \fff
                                    )
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    r16

                                    \appoggiatura {

                                        \once \override Beam.positions = #'(13 . 13)
                                        gqs,16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee89 }
                                        [
                                        (

                                        a,16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        ]

                                    }

                                    \swipeUpStemOn
                                    aqs,16
                                    \mf
                                    \<

                                }

                                \swipeDownStemOn
                                a,32

                                \swipeUpStemOn
                                g,32

                                \swipeDownStemOn
                                eqf,32

                                \swipeUpStemOn
                                ef,32
                                - \accent

                                \times 4/5
                                {

                                    \swipeDownStemOn
                                    e,32

                                    \swipeUpStemOn
                                    ef,32
                                    \f
                                    )
                                    \stemOff

                                    r32

                                    \swipeUpStemOn
                                    eqf,32
                                    - \accent
                                    \ff
                                    (
                                    \>

                                    \swipeDownStemOn
                                    d,32

                                }

                                \times 2/3
                                {

                                    \swipeUpStemOn
                                    dqf,16

                                    \acciaccatura {

                                        \once \override Beam.positions = #'(13 . 13)
                                        r8
                                        [

                                        d,16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee89 }
                                        ]
                                        (
                                        <> )

                                    }

                                    \swipeDownStemOn
                                    c,16

                                    \acciaccatura {

                                        \once \override Beam.positions = #'(13 . 13)
                                        r8
                                        [

                                        dqs,16
                                        _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                        ]
                                        (
                                        <> )

                                    }

                                    \swipeUpStemOn
                                    cs,16

                                }

                                \swipeDownStemOn
                                dqf,32
                                - \accent

                                \swipeUpStemOn
                                d,32

                                \swipeDownStemOn
                                ef,32

                                \swipeUpStemOn
                                d,32

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 22]
                                    \swipeDownStemOn
                                    dqs,32
                                    \mp
                                    )
                                    \stemOff

                                    r32

                                    e,32
                                    \f
                                    _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                    (
                                    \>

                                    eqs,32
                                    _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }

                                    f,32
                                    - \accent
                                    _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }

                                }

                                \times 2/3
                                {

                                    g,16
                                    _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }

                                    eqs,16
                                    _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }

                                    fs,16
                                    \pp
                                    _ \markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }
                                    )

                                }

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 23]
                                    e,16
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 10
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs,8
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                }

                                \times 8/9
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf,8.
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    b,16
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \fff
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 24]
                                f,8
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                fs,16
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g,16
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \ff
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                \times 2/3
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af,8
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    a,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 10
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                }

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 25]
                                    bf,8.
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    g,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf,16.
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \fff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    b,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    c16

                                    fs,8
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,64
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af,16.
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                }

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 26]
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    a,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c8
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    cs16
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \fff
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 10
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    g,32
                                    ~

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 27]
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g,32
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af,8
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                a,16
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \ff
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf,32
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \times 4/5
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf,8
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    b,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c16.
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 28]
                                c32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \fff
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                a,16
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c16
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 10
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs16.
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \ff
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                \times 4/5
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    d16

                                    af,16
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<
                                    ~

                                }

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 29]
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af,8
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    a,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf,16.
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                }

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \fff
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                b,16
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                d16
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                ef16.
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \ff
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                \times 2/3
                                {

                                    ef32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo

                                    a,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    \revert Staff.Stem.stemlet-length
                                    bf,16.
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 30]
                                \clef "petrucci-c4"
                                <b' bqs'>4
                                \fff
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 9
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-hook
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "I+II"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                - \tweak stencil #constante-hairpin
                                \<

                                <bf' bqs'>4

                                <a' bqs'>4

                                <af' bqs'>4

                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <g' bqs'>8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 31]
                                <cqs' bqs'>4
                                :32
                                - \espressivo
                                \pp

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 32]
                                <b' bqs'>4
                                \ff
                                - \tweak stencil #constante-hairpin
                                \<

                                <bf' bqs'>4

                                <a' bqs'>4

                                <af' bqs'>4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 33]
                                <cqs' bqs'>4
                                :32
                                - \espressivo
                                \p

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 34]
                                <b' bqs'>4
                                :32
                                - \espressivo

                                <bf' bqs'>4
                                :32
                                - \espressivo

                                <a' bqs'>4
                                :32
                                - \espressivo

                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <af' bqs'>8
                                :32
                                - \espressivo

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 35]
                                <cqs' bqs'>4
                                \f
                                - \tweak stencil #constante-hairpin
                                \<

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 36]
                                <b' bqs'>4
                                :32
                                - \espressivo
                                \mp

                                <bf' bqs'>4
                                :32
                                - \espressivo

                                <a' bqs'>4
                                :32
                                - \espressivo

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 37]
                                <cqs' bqs'>4
                                \mf
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(4)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                - \tweak stencil #constante-hairpin
                                \<

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 38]
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    \swipeUpStemOn
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 1.66
                                    c16
                                    \f
                                    ^ [
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    \>

                                    \swipeDownStemOn
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs32
                                    - \accent
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \swipeUpStemOn
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \swipeDownStemOn
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs'32
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    \<

                                    \swipeUpStemOn
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \swipeDownStemOn
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \swipeUpStemOn
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c32
                                    - \accent
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \swipeDownStemOn
                                    fs16
                                    \f
                                    \stemOff

                                }

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 39]
                                    e,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 10
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 12
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "gridato"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "1/2 gridato"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af,16
                                    :32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    a,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs16.
                                    :32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    d32

                                    g,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \fff
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>
                                    ~

                                }

                                \times 4/5
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs16
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    ef16.
                                    :32
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 10
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    bf,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                }

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                d16
                                :32
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                ef32
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                fs32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \fff
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 40]
                                    b,16
                                    :32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef16.
                                    :32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    a32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    d32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \fff
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 10
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af16.
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    \revert Staff.Stem.stemlet-length
                                    a32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 41]
                                \clef "petrucci-c4"
                                <cqs' bqs'>4
                                :32
                                - \espressivo
                                \p
                                ^ \markup I+II

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 42]
                                \harmonicsOn
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 3
                                \clef "bass"
                                \override Staff.Stem.stemlet-length = 1.66
                                d,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \f
                                ^ \markup IV
                                ^ [
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 13
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 15
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 17
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "normale"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "grid."
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanThree
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 19
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-hook
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "col legno tratto"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpan
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                bf,32
                                ^ \markup III

                                fs32
                                ^ \markup II

                                d'32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \p
                                ^ \markup I
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 43]
                                    d'32
                                    - \accent
                                    ^ \markup I
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 13
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    fs32
                                    ^ \markup II

                                    bf,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                    ^ \markup III
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    d,32
                                    ^ \markup IV
                                    )
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne

                                    ef,32
                                    ^ \markup simile
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 13
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne

                                    b,32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \p
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    g32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo

                                    ef'32
                                    - \accent
                                    )
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 15
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    ef'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \f
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 13
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-markup \diamond-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-markup \default-notehead-markup
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanOne
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    g32

                                }

                                b,32

                                ef,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \p
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                fs,32
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 13
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                d32

                                bf32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \f
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \>

                                fs'32
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne

                                fs'32
                                - \accent
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 13
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne

                                bf32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \p
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \<

                                d32

                                fs,32
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo

                                e,32
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.hairpin()
                                \f
                                (
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 13
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-markup \diamond-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-markup \default-notehead-markup
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 15
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo

                                c32
                                )
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(4)
                                  %! baca.text_spanner()
                                \stopTextSpan
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanThree
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo
                                \harmonicsOff

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 44]
                                c,16
                                \sfp
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 15
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "1/2 gridato"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "normale"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 17
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "T"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo
                                \<
                                - \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"
                                \startTrillSpan

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs,16
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \times 2/3
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef,8
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,8
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    cs8
                                    - \damped-f
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                }

                                r32
                                \stopTrillSpan

                                a32
                                \mf
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                - \tweak stencil #abjad-flared-hairpin
                                \<

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf32
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                d32
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                \times 2/3
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                }

                                bf8
                                - \damped-ff
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando

                                r8

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 12/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 45]
                                    g16
                                    :32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak details.squiggle-Y-scale 0.8
                                    - \tweak details.squiggle-initial-width 0.4
                                    - \tweak details.squiggle-speed-factor -0.6
                                    - \tweak thickness 3
                                    \slow-fast-harmonic

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 17
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "MSP"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \scaleDurations #'(1 . 1)
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g32.
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef'32.
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        d'32.
                                        - \damped-fff
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        r32.
                                        \stopTrillSpan

                                    }

                                    \times 2/3
                                    {

                                        fs32
                                        \f
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \>

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        b,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        f32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    a16
                                    :32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    g16
                                    \pp
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 17
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "T"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "P"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                }

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 46]
                                    r32

                                    b32
                                    \p
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak details.squiggle-Y-scale 0.9
                                    - \tweak details.squiggle-initial-width 4
                                    - \tweak details.squiggle-speed-factor 0.7
                                    - \tweak thickness 3
                                    \slow-fast-harmonic

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    a,32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \times 2/3
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf,16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d,16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        f,16
                                        - \damped-mf
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    r32
                                    \stopTrillSpan

                                    cs,32
                                    \sf
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \>

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d,16
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \times 2/3
                                    {

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        f,16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        b,16
                                        :32
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [cello voice measure 47]
                                    f,32
                                    \!
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.padding 0.5
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak bound-details.right.stencil-align-dir-y #center
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \tweak staff-padding 17
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \abjad-dashed-line-with-arrow
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-left-text "MSP"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    - \baca-text-spanner-right-text "N"
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.text_spanner()
                                    \startTextSpanTwo

                                    r32

                                    \times 2/3
                                    {

                                        cs16
                                        \sfp
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        \<
                                        - \tweak bound-details.left.text \markup \raise #1 \musicglyph #"noteheads.s0harmonic"
                                        \startTrillSpan

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        d16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        bf16
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'64
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    b64
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    c,64
                                    - \damped-f
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    r64
                                    \stopTrillSpan

                                    \times 2/3
                                    {

                                        cs,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 17
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-dashed-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "T"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-right-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                        - \tweak circled-tip ##t
                                        \<

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        ef,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                        \tweak Accidental.stencil ##f
                                        \tweak X-extent #'(0 . 0)
                                        \tweak transparent ##t
                                        g,32
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando

                                    }

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs16
                                    :32
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando

                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    - \damped-ff
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanOne
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.text_spanner()
                                    \stopTextSpanTwo
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 48]
                                a,4
                                - \bendAfter #'-3
                                \ff
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.padding 0.5
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak bound-details.right.stencil-align-dir-y #center
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 6
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-arrow
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "P"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-right-text "MSP"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanTwo
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \tweak staff-padding 4
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \abjad-dashed-line-with-hook
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                - \baca-text-spanner-left-text "molto gridato"
                                  %! SPANNER_START
                                  %! baca.PiecewiseCommand._call(2)
                                  %! baca.text_spanner()
                                \startTextSpanOne
                                - \tweak stencil #constante-hairpin
                                \<

                                gqf,4
                                - \bendAfter #'-4
                                \p
                                - \tweak stencil #constante-hairpin
                                \<

                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                aqs,8
                                :32
                                - \bendAfter #'2.5
                                \ff
                                - \tweak stencil #constante-hairpin
                                \<

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 49]
                                bf,4
                                - \bendAfter #'-3.5

                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                gqs,8
                                :32
                                - \bendAfter #'-4.5

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 50]
                                af,4
                                - \bendAfter #'-3

                                r4
                                \!

                                a,4
                                - \bendAfter #'-4
                                \p
                                - \tweak stencil #constante-hairpin
                                \<

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 51]
                                r4
                                \!

                                r4

                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                gqf,8
                                - \bendAfter #'2.5
                                \ff
                                - \tweak stencil #constante-hairpin
                                \<

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 52]
                                aqs,4
                                :32
                                - \bendAfter #'-3.5

                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 53]
                                bf,4
                                - \bendAfter #'-4.5
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(4)
                                  %! baca.text_spanner()
                                \stopTextSpanOne
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.text_spanner()
                                \stopTextSpanTwo

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [cello voice measure 54]
                                \once \override MultiMeasureRest.transparent = ##t
                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                R1 * 1/4
                                \!
                                _ \colophon
                                \stopStaff \startStaff

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}