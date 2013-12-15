opifex.daemonspawn
==================

This is a daemon for spawning other opifex daemons

Usage
-----

	opfiex 'amqp://guest:guest@localhost:5672//spawn-in/#/spawner/spawn-out/spawner' daemonspawn

You then send a message with the name of the module and the associated connection parameters

	[ 'runner', 'amqp://guest:guest@localhost:5672//runner-in/#/runner/runner-out/runner' ]

And this will generate a massive gaping security hole!  Now you can run arbitrary code on your AMQP server!

To prevent bad things from happening, please don't install arbitrary opifex modules without first thinking.

	

