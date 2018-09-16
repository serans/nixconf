%VME

# Name

vme -- inspector for VME bus

- **-a** : VME address modifier. 

           0x29 = A16 non privileged data acess
           
           0x39 = A24 non privileged data acess
           
           See: http://www.struck.de/vmeam.htm
           

# Examples

Read 16 registries of CTR on LUN0:

       >vme -a 0x39 -v 0xc00000 -n 16

       00c10000: 00000000
       00c10004: 0000001e
       00c10008: 00000009
       00c1000c: 00000fa0
       00c10010: 00000080
       00c10014: 4d06177a
       00c10018: 00000100
       00c1001c: 00000233
       00c10020: 00000000
       00c10024: fffffff6
       00c10028: 0def7191
       00c1002c: 0001bdaa
       00c10030: 00003565
       00c10034: 0000079e
       00c10038: 00000064
       00c1003c: 000525ae
