/**
* Supercollider is an object oriented message passing language
* This means instead of functions you pass messages to an object and the object determines at * runtime how to evaluate the message
*/
(
{ |test|
	var msg = __;
	msg.postln; // prints msg to standard output (terminal)
	test.assertEquals(msg, "Hello, Supercollider!", "Should equal string");
}
)


/**
* Some messages can be used to modify the object. Some messages take what is taken and and
* find what it should be backwards.
*/
(
{ |test|
	var msg = "Hello, Supercollider!";
	var rev = msg.reverse;
	test.assertEquals(rev, __, "should be reversed msg");
}
)

/**
* Other messages are passed arguments like contains which finds one string in another.
*/
(
{ |test|
	var msg = "Hello, Supercollider!";
	var doesContain = msg.contains(__);
	test.assert(doesContain, "should be true if string contains Hello");
}
)

/**
* Messages can have keyword arguments as well with a colon :
*/
(
{ |test|
	var loc = "supercollider".find("L", ignoreCase: __);
	test.assert(doesContain, "should be first index of first l character");
}
)


UnitTestScript.run;