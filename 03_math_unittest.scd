/**
* Supercollider can do many mathematical operations using message passing.
*/
(
{ |test|
	var root = __.sqrt;
	test.assertEquals(root, 2, "Should equal the square root of 4");
}
)

/**
* We can also call it like we would a normal function.
*/
(
{ |test|
	var root = __(4);
	test.assertEquals(root, 2, "should equal the square root of 4");
}
)

/**
* We can determine the sign of a number as well. Is it is positive or is it negative?
*/
(
{ |test|
	var s = __.sign;
	test.assertEquals(s, -1, "should equal -1 so the number must be negative");
}
)

/**
* Using pow is a power that empowers us to do powerful math.
*/
(
{ |test|
	var y = 2.pow(__);
	test.assertEquals(y, 8.0, "should be equal to 8.0");
}
)

/**
* We have trigonometric functions as well.
*/
(
{ |test|
	var a = (__).sin;
	var b = __(2*pi);
	test.assertEquals(a, b, "should equal to the sine of 2*pi");
}
)

/**
* We can do normal arithmetic operations as well.
*/
(
{ |test|
	var x = 4 * __ + 1;
	test.assertEquals(x, 13, "x should equal 13");
}
)


/**
* Supercollider treats floating point numbers and integers the same for comparisons even though underlying
* they are different types.
*/
(
{ |test|
	var x = 4.0;
	var y = __;
	test.assertEquals(x, y, "x and y should be equal");
	test.assert(y.isInteger, "y should be an integer");

}
)