# PnP EEPROM format

This is all the datasheet has to say regarding the ES1868F EEPROM format:

```text
'A5'		Sync Byte
IRQB IRQA	Mapping for IRQB/A
IRQD IRQC	Mapping for IRQD/C
IRQF IRQE	Mapping for IRQF/E
DRQB DRQA	Mapping for DRQB/A
DRQD DRQC	Mapping for DRQD/C
PNP Reg 25h
PNP Reg 26h
```

An example is then provided:

```text
; *********************************************************
;
; Start of ESS Proprietary Header (8 bytes)
;
; *********************************************************
0A5H; PNP OK byte
059H; IRQA = 9 IRQB = 5
0A7H; IRQC = 7 IRQD = 10
0CBH; IRQE = 11 IRQF = 12
010H; DRQA = 0 DRQB = 1
053H; DRQC = 3 DRQD = 5
002H; MPU-401 part of audio, CD, DRQ latching off
00CH; GPO1/GPI are not used by Modem DMA channel or g.p.

; *********************************************************
;
; Start of PNP Resource Header
;
; *********************************************************
016H, 073H, 018H, 068H; "ESS1868" product id for ES1868
0FFH, 0FFH, 0FFH, 0FFH; serial number FFFFFFFF (not supported)
000H; header checksum
00AH, 010H, 010H; PNP 1.0, ESS version 1.0
082H, 023H, 000H; “ESS ES1868 Plug and Play AudioDrive”

; *******************************************************
;
; LOGICAL DEVICE 0 -- Configuration Ports
; 8 bytes at any I/O address that is a multiple of 8
;
; *******************************************************
015H, 016H, 073H, 000H, 000H, 000H; ESS0000
047H, 001H, 000H, 008H, 0F8H, 00FH, 008H, 008H; 800H-FF8H 8 bytes

; *******************************************************
;
; LOGICAL DEVICE 1 -- Audio Controller w/FM and MPU-401
;
; *******************************************************
015H, 016H, 073H, 018H, 068H, 000H; ESS1868

; Basic configuration 0000
031H, 000H
02AH, 002H, 008H; DMA 0: DRQ 1
02AH, 009H, 008H; DMA 1: DRQ 0 or 3
022H, 020H, 000H; INT 0: IRQ 5
04BH, 020H, 002H, 010H; 220-22F 16 bytes
04BH, 088H, 003H, 004H; 388-38B
04BH, 030H, 003H, 002H; 330-331

; Basic configuration 0001
031H, 001H
02AH, 002H, 008H; DMA 0: DRQ 1
02AH, 009H, 008H; DMA 1: DRQ 0 or 3
022H, 0A0H, 006H; INT 0: IRQ 5, 7, 9, or 10
047H, 001H, 020H, 002H, 040H, 002H, 020H, 010H; 220 or 240 16 bytes
04BH, 088H, 003H, 004H; 388-38B
047H, 001H, 000H, 003H, 030H, 003H, 030H, 002H; 300 or 330 2 bytes

; Basic configuration 0002
031H, 001H
02AH, 00BH, 008H; DMA 0: DRQ 0, 1 or 3
02AH, 00BH, 008H; DMA 1: DRQ 0, 1 or 3
022H, 0A0H, 01EH; INT 0: IRQ 5, 7, 9, 10, 11, or 12
047H, 001H, 020H, 002H, 080H, 002H, 020H, 010H; 220, 240, 260, 280 16 bytes
04BH, 088H, 003H, 004H; 388-38B
047H, 001H, 000H, 003H, 030H, 003H, 030H, 002H; 330 or 330 2 bytes

; Basic configuration 0003
031H, 001H
002H, 00BH, 008H; DMA 0: DRQ 0, 1 or 3
02AH, 00BH, 008H; DMA 1: DRQ 0, 1 or 3
022H, 0A0H, 01EH; INT 0: IRQ 5, 7, 9, 10, 11, or 12
047H, 001H, 020H, 002H, 080H, 002H, 020H, 010H; 220, 240, 260, 280 16 bytes
04BH, 088H, 003H, 004H; 388-38B
047H, 001H, 000H, 008H, 0FEH, 00FH, 002H, 002H; 800/801-FFE/FFF 2 bytes

; Basic configuration 0004
031H, 002H
02AH, 00BH, 008H; DMA 0: DRQ 0, 1 or 3
02AH, 00BH, 008H; DMA 1: DRQ 0, 1 or 3
022H, 0A0H, 01EH; INT 0: IRQ 5, 7, 9, 10, 11, or 12
047H, 001H, 020H, 002H, 080H, 002H, 020H, 010H; 220, 240, 260, 280 16 bytes
047H, 001H, 000H, 008H, 0FCH, 00FH, 004H, 004H; 800/804-FFC/FFF 4 bytes
047H, 001H, 000H, 008H, 0FEH, 00FH, 002H, 002H; 800/801-FFE/FFF 2 bytes

038H; end configurations

; *******************************************************
;
; LOGICAL DEVICE 2 -- Joystick
; Only choice is one address at 201.
;
; *******************************************************
015H, 016H, 073H, 000H, 001H, 000H; ESS0001

; Basic configuration 0000
031H, 000H
04BH, 001H, 002H, 001H; 201
; Windows95 joystick driver will only allow 200-20F!!!
; Basic configuration 0001
031H, 001H
047H, 001H, 000H, 002H, 00FH, 002H, 001H, 001H; 200/200-20F/20F 1 byte
038H; end dependent functions
01CH, 041H, 0D0H, 0B0H, 02FH; Compatible ID: PNPB02F

; *******************************************************
;
; LOGICAL DEVICE 3 -- IDE CD-ROM
; needs an IRQ (10, 11, or 12) and two separate address ranges
;
; *******************************************************
015H, 016H, 073H, 000H, 002H, 000H; ESS0002

; Basic configuration 0000
031H, 000H
022H, 000H, 010H; IRQ 12
04BH, 068H, 001H, 008H; 168-16F 8 bytes
04BH, 06EH, 003H, 002H; 36E-36F 2 bytes
; Basic configuration 0001

031H, 001H
022H, 000H, 00CH; IRQ 10 or 11
04BH, 068H, 001H, 008H; 168-16F 8 bytes
04BH, 06EH, 003H, 002H; 36E-36F 2 bytes

; Basic configuration 0002
031H, 001H
022H, 000H, 01CH; IRQ 10, 11 or 12
04BH, 0E8H, 001H, 008H; 1E8-1EF 8 bytes
04BH, 0EEH, 003H, 002H; 3EE-3EF 2 bytes

; Basic configuration 0003
031H, 001H
022H, 000H, 01CH; IRQ 10, 11 or 12
047H, 001H, 000H, 001H, 0F8H, 001H, 008H, 008H; 100/1F8-107/1FF 8 bytes
047H, 001H, 000H, 003H, 0FEH, 003H, 002H, 002H; 300/301-3FE/3FF 2 bytes

038H; end dependent functions

01CH, 041H, 0D0H, 006H, 000H	; Compatible ID: PNP0600
079H, 000H; end tag + checksum
```

## Default configuration



## Files

The default configuration that my generic board takes from startup is the following:

- Address: 220h
- IRQ: 1
- DMA: 0
- Secondary DMA: 0
- MPU401: 300h
- Joystick: Enabled

### AT93C66-dump.bin

A dump of the PnP ROM taken from a generic no-name board.

