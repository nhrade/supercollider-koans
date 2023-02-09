/*
* Supercollider Koans
* A tutorial meant to help you learn supercollider with Zen like koans.
* Supercollider is a sound, signal processing, and algorithmic music server and language.
* Try testing these koans out and filling in the missing values to make it pass.
*/


/**
* Local variables begin with the var keyword and are only in a specific scope.
* Try changing the __ to make the test pass.
*/
(
{ |test|
	var thisIsALocalVariable = __;
	test.assertEquals(thisIsALocalVariable, 2, "thisIsALocalVariable should equal 2");
}
)

/*
* A global var has ~ prefixed to it. A global variable is available in any scope and
* doesn't need to be put in a specific block.
*/
(
{ |test|
	~gx = __;
	test.assertEquals(~gx, 4, "~gx should equal 4");
}
)

/**
* A one character variable can also be defined without any prefix
*/
(
{ |test|
	x = __;
	test.assertEquals(x, 10, "x should equal 10");
}
)
UnitTestScript.run;