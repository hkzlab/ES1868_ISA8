# ES1868F 8bit ISA Sound Card

## Introduction

This is a sound card for the ISA 8bit bus sporting the **ES1868F** chip by *ESS Technology*.

This chip provides **Sound Blaster PRO 2.0** (stereo), **OPL3** compatibility (via *ESFM*), MPU-401 support and is considered one of the [best chips](https://www.philscomputerlab.com/ess-audiodrive-es1868.html) used in clone cards.

![Rev. 1.1 Board](pics/rev_1.1_board.jpg)

This board provides the following connections:

* Speaker out (amplified)
* Line out
* Line in
* AUX in (internal header, since rev 1.2)
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
* [✅] Stereo (left/right channel) check (Tested with Sound Blaster PRO Test program, digitized sound mode)
* [✅] Joystick port
* [✅] Speaker Out (amplified)
* [✅] Line out
* [✅] Line in
* [✅] AUX In
* [?] Microphone in
* [✅] MIDI output via Joystick port (tested using DOSMID MPU mode on a Roland SC55)
* [✅] Wavetable daughterboard

The card was tested on:

* [✅] 286 16Mhz / DOS 6.22
* [✅] NEC V20 9.54Mhz / DOS 6.22 (Use **UNISOUND**, see **Configuration** section below)
* [✅] NEC V20 4.77Mhz / DOS 6.22 (Use **UNISOUND**, see **Configuration** section below)
* [✅] 8088 8Mhz / DOS 6.22 (Use **UNISOUND**, see **Configuration** section below)
* [✅] 8088 4.77Mhz / DOS 6.22 (Use **UNISOUND**, see **Configuration** section below)
* [✅] 486DX 40Mhz / DOS 7.1 (Use **UNISOUND**, see **Configuration** section below)
* [✅] Am5x86 40/160Mhz / DOS 7.1 (Use **UNISOUND**, see **Configuration** section below)

## Configuration

This card is jumperless and must be configured before use.
Under DOS you can us the [ESSCFG](software/ESSCFG.EXE) tool and tweak the volume via [ESSVOL](software/ESSVOL.EXE).

The **recommended** way to do this (especially under a very slow machine, like a V20/8088) is by using the [UNISOUND](https://www.vogons.org/viewtopic.php?f=62&t=72553) configurator.

It's important to add the `/XEA` parameter to `UNISOUND.COM` when using it, and remember to execute it after setting the `BLASTER` environment variable, for example with the command `SET BLASTER=A220 I5 D1 P330 T5 J201` (clearly changing the parameters depending on your setup).

**WARNING**: If you use an XT-IDE adapter at the default base address (300h), remember to set the MPU-401 base for this card to something else (like 330h)!

## Bill of Materials

**TODO**

Value of L1/L2/L3 ferrite beads is non critical. I used [these](https://www.mouser.it/ProductDetail/623-2743001112LF).

## Known Issues

### Rev 1.0

* Joystick plug "J3" silkscreen overlaps with some resistors (fixed in 1.1).
* The thread in the audio jacks I'm using (Kycon STX-3100-3CB) is flush with the bracket, so if the bracket has some bending, the plug risks to be pushed away (fixed in 1.1 by moving the connectors 0,5mm towards the edge).

## Credits

Thanks to [Sergey Kiselev](https://github.com/skiselev) for his symbol/footprint library!

