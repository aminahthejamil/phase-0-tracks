software_instruments = {
  percussion: {
    live_drums: {
      snares: 4,
      kick_drums: 5,
      hi_hats: 6,
    },
    drum_kit_names: [
      "Hard Stomp",
      "Beat Squash",
      "Boom Bap",
      "Tone Deaf",
      "Fierce Hippie",
      "Dang Onit"
    ],
    elec_drum: {
      snares: 5,
      kick_drums: 4,
      hi_hats: 3,
      sub_bass: 6
    },
    e_drum_kit_names: [
      "Rough Night Huh?"
      "Sisco Disco"
      "Deep Stomp"
      "The Wife's the Boss"
      "We Laugh"
      "Say it with Your Mouth"
    ]
  }
  string_inst: {
    guitars: {
      electric: 3,
      acoustic: 4,
      bass: 2
    },
    guitar_names: [
      "Softly Strumming",
      "Debauchery",
      "Strum Slow",
      "Beat the Rush",
      "Serenade",
      "Ever Hear"
    ],
    orchestra_strings: {
      violins: 3,
      violas: 2,
      cellos: 3,
      upright_bass: 1
    }
}

p software_instruments
p software_instruments[:string_inst]
p software_instruments[:percussion]
p software_instruments[:percussion][:elec_drum]
p software_instruments[:percussion][:e_drum_kit_names].push("Midnight Eyes")
p software_instruments[:string_inst][:guitar_names].push("Calling Crows")
