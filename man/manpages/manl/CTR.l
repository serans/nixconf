.TH "" "" "" "" ""
.SH CTR module
.SS Introduction
.PP
CTR stands for "Central Timing Receiver" \- it is a hardware module for
receiving and processing GMT events (see Central Timing) in order to
produce Local Timing.
.PP
CTR exists in 3 form factors: CTRV (VME bus, 8 outputs / 8 counters),
CTRI (PCI bus, 4 outputs / 4 counters) and CTRP (PMC mezzanine, 3
outputs / 4 counters).
.SS Events
.PP
CTR modules are connected to a Central Timing system via a GMT cable of
the GMT network and thereby receives GMT events.
.PP
It "understands" the content of these events, and processes them
accordingly, in particular:
.IP \[bu] 2
Telegram events are collected in a dedicated buffer.
Only on arrival of the "TelegramReady" event, the buffer is made
accessible to users (via timdt library) and hence provides a coherent
set of data, i.e.
the "Telegram" describing the currently active cycle.
.IP \[bu] 2
CTIM events define key moments in the accelerator cycle.
They may be transmitted at random slots in a given millisecond, but the
CTR ensures they appear to arrive on the milisecond boundary when
generating pulses and interrupts.
.IP \[bu] 2
Millisecond events define the boundary between milleseconds and are used
by the CTR to synchronize its internal clocks (40MHz, 10MHz, 1kHz and
PPS)
.SS Counters
.PP
CTR Counters are based on a register containing a value (the "delay")
and simplistically follows the sequence below (many subtle variations
are possible):
.IP \[bu] 2
Load \- If a trigger\-block condition (see below) is met, load the
corresponding configuration into the counter.
.IP \[bu] 2
Start \- the counter can be started in various ways, including:
.RS 2
.IP \[bu] 2
As part of the load operation above.
.IP \[bu] 2
Triggered by the previous counter ("chaining").
.IP \[bu] 2
Upon arrival of an external start pulse.
.RE
.IP \[bu] 2
Count \- the counter decrements the "delay" register by one on every
tick of the selected clock, and triggers when reaching zero.
.IP \[bu] 2
Trig \- Generate a bus interrupt and/or an internal trigger.
This internal trigger can start the next counter and/or be routed to any
physical output connector.
.IP \[bu] 2
Proceed \- depending on configuration, the counter may require (or not)
a "load" before accepting another "start"
.SS Trigger blocks
.PP
The CTR module provides a number of counters which can be configured
dynamically in a number of ways.
The configuration is done using what is known as "trigger\-blocks"
(a.k.a.
"actions" in the ctrtest\-timdt test program).
Note: Trigger blocks are PPM if the associated LTIM device is PPM
.PP
Trigger blocks define:
.IP \[bu] 2
Condition \- when to load the corresponding configuration into a
counter:
.RS 2
.IP \[bu] 2
Event\-code (load\-event): The GMT event \- usually a CTIM event \-
received by the CTR must match this value in order to activate this
trigger\-block.
.IP \[bu] 2
If this event\-code is zero, the trigger block is ignored.
Telegram condition (optional):
.IP \[bu] 2
Accelerator ID: The "accelerator\-id" part of the received GMT event
must match this value
.IP \[bu] 2
Telegram Group and Telegram Group Value to match for a load to take
place:
.IP \[bu] 2
The value of the specified Telegram Group must "match" the specified
value at the time of receiving the GMT event.
"Match" is defined as either "*" (any), "=" (exact) or "&" (logical AND)
.IP \[bu] 2
Counter number: The number of the targeted counter.
.PP
If this value is zero, no counter is used, and a bus interrupt is made
directly based on the timing\-frame and telegram conditions above.
.RE
.IP \[bu] 2
Configuration \- how to configure the counter if the conditions of 1a
and 1b are met:
.RS 2
.IP \[bu] 2
Start
.IP \[bu] 2
Mode
.IP \[bu] 2
Clock
.IP \[bu] 2
PulseWidth
.IP \[bu] 2
BusOut and OutEnabled, i.e.
whether to generate bus interrupts and/or physical output pulses
.RE
