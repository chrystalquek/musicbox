_midi_notes = ["c4", "d4", "e4", "f4", "g4", "a4", "b4", "c5",
              "c5", "d5", "e5", "f5", "g5", "a5", "b5", "c6",
              "c6", "d6", "e6", "f6", "g6", "a6", "b6", "c7"]

MIDI_NOTES = {note: idx for idx, note in enumerate(_midi_notes)}

NOTE_DURATION = {
    "quaver": 1,
    "crotchet": 2
}

NUM_TONES = 10
NUM_BEATS = 18


FREQUENCIES = [
    261.63,  # C4
    293.66,  # D4
    329.63,  # E4
    349.23,  # F4
    392.00,  # G4
    440.00,  # A4
    493.88,  # B4
    523.25,  # C5
    587.33,  # D5
    659.25   # E5
]
