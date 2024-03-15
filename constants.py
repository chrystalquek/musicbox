_midi_notes = ["c4", "d4", "e4", "f4", "g4", "a4", "b4", "c5",
              "c5", "d5", "e5", "f5", "g5", "a5", "b5", "c6",
              "c6", "d6", "e6", "f6", "g6", "a6", "b6", "c7"]

MIDI_NOTES = {note: idx for idx, note in enumerate(_midi_notes)}

NOTE_DURATION = {
    "quaver": 1,
    "crotchet": 2
}