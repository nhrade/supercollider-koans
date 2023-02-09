/**
* Supercollider has functions like any other programming language. Functions start with a { and end with a }
* everything inbetween is just in the scope of the function.
*/


/**
* You can have a function without arguments. Then use the value message to evaluate it. The last statement
* is what is returned by the function.
*/
(
{ |test|
	f = {
		__
	};
	test.assertEquals(f.value, 2, "Should be equal to 2");
}
)


/**
* You can also have a function with args and use the arg keyword to define them.
*/
(
{ |test|
	f = {
		arg x, __;
		__ * y
	};
	test.assertEquals(f.value(3, 4), 12, "Should be equal to 12");
}
)
