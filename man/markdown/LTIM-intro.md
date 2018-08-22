# Local Timing Overview

## Introduction

The timing system coordinates tasks executed by many different devices in different locations. It is in charge of specifying what should be done and at which moment, and ensuring all these tasks are synchronized.

The **Local Timing** is the part of the timing system that reads the timing events that are sent across the accelerator complex, and generates pulses and interruptions that make sense to the local installation.

Some examples can be:

* Generating a pulse to trigger a kicker magnet 1ms before injection.
* Triggering a real time task to perform a readout just before the end of the flat-top.
* Generating a 5MHz clock for a sampler that is synchronous with the GMT.

## CTR

At the base of the Local Timing is the **CTR** or Central Timing Receiver card.

The CTR has several counters (4 to 8 depending on the model). Each counter can be configured to count a given amount of ticks of one of several possible clocks and generate a pulse and/or an interrupt when the count reaches 0.

Each counter can have several configurations stored in the CTR, each having an associated **loadEvent**. When such event arrives on the GMT cable, the corresponding configuration is loaded on the counter. It is also possible to have just one configuration on a counter and ignore incoming events. In that case the counter is said to be **remote**.

More details on the CTR are available on the section XXXXX

## LTIM

The CTR is not normally programmed directly. Instead, a FESA class called **LTIM** provides an interface for the user to configure the local timing, as well as the means to monitor it.

<links go here>
