.TH "" "" "" "" ""
.SH Local Timing Overview
.SS Introduction
.PP
The timing system coordinates tasks executed by many different devices
in different locations.
It is in charge of specifying what should be done and at which moment,
and ensuring all these tasks are synchronized.
.PP
The \f[B]Local Timing\f[] is the part of the timing system that reads
the timing events that are sent across the accelerator complex, and
generates pulses and interruptions that make sense to the local
installation.
.PP
Some examples can be:
.IP \[bu] 2
Generating a pulse to trigger a kicker magnet 1ms before injection.
.IP \[bu] 2
Triggering a real time task to perform a readout just before the end of
the flat\-top.
.IP \[bu] 2
Generating a 5MHz clock for a sampler that is synchronous with the GMT.
.SS CTR
.PP
At the base of the Local Timing is the \f[B]CTR\f[] or Central Timing
Receiver card.
.PP
The CTR has several counters (4 to 8 depending on the model).
Each counter can be configured to count a given amount of ticks of one
of several possible clocks and generate a pulse and/or an interrupt when
the count reaches 0.
.PP
Each counter can have several configurations stored in the CTR, each
having an associated \f[B]loadEvent\f[].
When such event arrives on the GMT cable, the corresponding
configuration is loaded on the counter.
It is also possible to have just one configuration on a counter and
ignore incoming events.
In that case the counter is said to be \f[B]remote\f[].
.PP
More details on the CTR are available on the section XXXXX
.SS LTIM
.PP
The CTR is not normally programmed directly.
Instead, a FESA class called \f[B]LTIM\f[] provides an interface for the
user to configure the local timing, as well as the means to monitor it.
.PP
