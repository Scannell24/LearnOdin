package main

import "core:fmt"

main :: proc() {
	// This is a comment, they are started with double forward slashes

	fmt.println("Hello World!") // comments can go after lines too

	/*
		Multi-line comments
		also known as "comment blocks"
		work like this.
		You can have any text or code here and it won't run.
		/*
			NOTE: comments can be nested!
		*/
	*/

	fmt.println("\n\n --------  VARIABLE DECLARATION --------\n")
	{
		fmt.println("Basic variable declaration:")
		x: int = 10
		fmt.println("x : int =", x)
		fmt.println()

		fmt.println("Redeclaration of `x` in this scope is not allowed")
		fmt.println("EX: x := 20")
		fmt.println()

		fmt.println("Multiple variables can be declared on one line with types inferred")
		y, z := 20, 30
		fmt.println("y, z :=", y, z)
		fmt.println()

		fmt.println("Resetting value of variables")
		y, z = 25, 35
		fmt.println("y, z =", y, z)
		//test, z := 20, 30 // not allowed since `z` exists already

		{
			// Redeclare variable 'x' with a new type 
			x: string = "New scopes can redeclare variables"
			fmt.println("x : string =", x)
		}

		fmt.println("Moving outside the scope returns variables to their previous value/type")
		fmt.println("x =", x)

		{
			fmt.println("Multiple variables can be declared in the same line with different types")
			x, y := 1, "hello" // declares `x` and `y` and infers the types from the assignments
			y, x = "bye", 5
			fmt.println("x =", x)
			fmt.println("y =", y)
		}
	}

	fmt.println("\n\n --------  STRINGS --------\n")
	{
		str1 := "String literals are enclosed in double quotes"
		str2 := 'A' // Character literals (single char) are in single quotes
		// str2 = 'ABC' // Character literals cannot contain multiple chars
		str2 = '\n' // Special chars are escaped with backslash \
		fmt.print(str1, str2)
		
		fmt.println("Strings of paths need double back-slashes: C:\\Windows\\notepad.exe")
		fmt.println(`Raw string literals are enclosed in single back ticks: C:\Windows\notepad.exe \n`)
		fmt.print(`Raw string literals are enclosed i \n`)
	}


	fmt.println("\n\n --------  NUMBERS --------\n")
	{
		fmt.println("Underscores are allowed for better readability")
		fmt.println(1_000_000)
		fmt.println()

		fmt.println("Base notation of values can be inferred (ex: 27)")
		fmt.println("Binary:", 0b11011)
		fmt.println("Octal:", 0o33)
		fmt.println("Hex:", 0x1B)
		fmt.println()
		
		fmt.println("A number that contains a dot is a floating point literal")
		fmt.println("One million:", 1.0e6)
		fmt.println()

		fmt.print("If a number can be represented by a type without precision loss, ")
		fmt.println("it will automatically convert to that type")
		x: int = 1.0 // A float, but it can be represented as an int without precision loss
	}

	fmt.println("\n\n --------  CONSTANTS --------\n")
	{
		/*
		Constants are entities (symbols) which have an assigned value.
		The constant’s value cannot be changed.
		The constant’s value must be able to be evaluated at compile time
		*/
		x :: "what" // constant `x` has the untyped string value "what"
		fmt.println("x ::", x)

		// Constants can be explicitly typed like a variable declaration:
		y : int : 123
		fmt.println("y : int : ", y)
		
		// Constant computations are possible
		z :: y + 7
		fmt.println("z :: y + 7")
		fmt.println("z equals", z)
	}

	fmt.println("\n\n --------  CONTROL FLOW --------\n")
	{
		z : int : 3

		fmt.println("There are many ways to style for loops")

		for i := 0; i < z; i += 1 {
			fmt.print(i, " ")
		}
		fmt.println()

		for i := 0; i < z; i += 1 do fmt.print(i, " ")
		fmt.println()

		i := 0
		for i < z {
			fmt.print(i, " ")
			i += 1
		}
		fmt.println()

		for i in 0..<z {
			fmt.print(i, " ")
		}
		fmt.println()

		some_string := "HEY"
		for x in some_string {
			fmt.print(x, " ")
		}
		fmt.println()

		some_array := [3]int{1, 4, 9}
		for x in some_array {
			fmt.print(x, " ")
		}
		fmt.println()

		some_slice := []int{1, 4, 9}
		for x in some_slice {
			fmt.print(x, " ")
		}
		fmt.println()
	}

	fmt.println()
	fmt.println("Goodbye World!")
}