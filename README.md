= Traffic Light Server

Ruby app webservice to pilot a traffic light build with an Arduino.

== Install

  gem install traffic_light

  Load Arduino/traffic_light/traffic_light.ino into your Arduino.

  Plug # color -> on pin #
  Red    -> 11
  Orange -> 12
  Green  -> 10

== Usage

  ./traffic_light_server.rb

Open a browser on http://localhost:4567/set-color/0

Replace 0 by:
+====================|
| i | Colors         |
+===+================|
| 0 | None           |
| 1 | Green          |
| 2 | Orange         |
| 3 | Green + orange |
| 4 | Red            |
| 5 | Green + red    |
| 6 | Orange + red   |
| 7 | All lights     |
+===+================|

== License

Copyright (c) 2012 Nicolas Ledez

You can redistribute it and/or modify it under either the terms of the
2-clause BSDL (see the file BSDL), or the conditions below:

  1. You may make and give away verbatim copies of the source form of the
     software without restriction, provided that you duplicate all of the
     original copyright notices and associated disclaimers.

  2. You may modify your copy of the software in any way, provided that
     you do at least ONE of the following:

       a) place your modifications in the Public Domain or otherwise
          make them Freely Available, such as by posting said
	  modifications to Usenet or an equivalent medium, or by allowing
	  the author to include your modifications in the software.

       b) use the modified software only within your corporation or
          organization.

       c) give non-standard binaries non-standard names, with
          instructions on where to get the original software distribution.

       d) make other distribution arrangements with the author.

  3. You may distribute the software in object code or binary form,
     provided that you do at least ONE of the following:

       a) distribute the binaries and library files of the software,
	  together with instructions (in the manual page or equivalent)
	  on where to get the original distribution.

       b) accompany the distribution with the machine-readable source of
	  the software.

       c) give non-standard binaries non-standard names, with
          instructions on where to get the original software distribution.

       d) make other distribution arrangements with the author.

  4. You may modify and include the part of the software into any other
     software (possibly commercial).  But some files in the distribution
     are not written by the author, so that they are not under these terms.

     For the list of those files and their copying conditions, see the
     file LEGAL.

  5. The scripts and library files supplied as input to or produced as 
     output from the software do not automatically fall under the
     copyright of the software, but belong to whomever generated them, 
     and may be sold commercially, and may be aggregated with this
     software.

  6. THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR
     IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
     PURPOSE.