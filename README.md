# ES1868F 8bit ISA Sound Card

## Introduction

**WARNING:** This card is still undergoing basic testing!

This is a sound card for the ISA 8bit bus sporting the **ES1868F** chip by *ESS Technology*.

This chip provides **Sound Blaster PRO 2.0** (stereo) and **OPL3** compatibility (via *ESFM*) and is considered one of the [best between clone cards](https://www.philscomputerlab.com/ess-audiodrive-es1868.html).

![Rev. 1.0 Board](pics/rev_1.0_board.jpg)

This board provides the following connections:

* Speaker out (amplified)
* Line out
* Line in
* Microphone in (internal header)
* Joystick port
* MIDI on Joystick port
* Wavetable header
* Volume control header

### Disclaimer

I take NO responsibility for what happens if you decide to build and use this card. Your computer might crash, catch fire or be destroyed in other nasty ways.
You're encourauged to take what you deem fit from this, and use it in your projects!

### Functionalities

✅ means I tested the functionality and it works, ❌ means I tested the functionality and found issues, ? means that the functionality has yet to be tested.

* [✅] FM Synthesis via OPL3 clone (**ESFM**)
* [✅] Digital audio playback
* [?] Stereo (left/right channel) check
* [✅] Joystick port
* [✅] Speaker Out (amplified)
* [?] Line out
* [?] Line in
* [?] Microphone in
* [?] MIDI output via Joystick port
* [?] Wavetable daughterboard

The card was tested on:

* [✅] 286 / DOS 6.22
* [✅] NEC V20 / DOS 6.22 (See **Configuration** section below)
* [?] 8088 / DOS 6.22

## Configuration

This card is jumperless and must be configured before use.
Under DOS you can us the [ESSCFG](software/ESSCFG.EXE) tool and tweak the volume via [ESSVOL](software/ESSVOL.EXE).

The **recommended** way to do this (especially under a very slow machine, like a V20/8088) is by using the [UNISOUND](https://www.vogons.org/viewtopic.php?f=62&t=72553) configurator.

It's important to add the `/XEA` parameter to `UNISOUND.COM` when using it.

## Bill of Materials

**TODO**

