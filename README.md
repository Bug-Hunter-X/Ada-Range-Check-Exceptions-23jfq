# Hidden Exceptions in Ada Range Check

This example demonstrates a potential issue with exception handling in Ada. The `Check_Range` function aims to check if a number is greater than 10.  It uses an exception handler, but this handler is too broad and might mask more serious underlying problems.

The `Main` procedure demonstrates how the function is used and the output. 

The solution provided addresses this by making the exception handling more specific or removing it altogether, depending on the expected behavior.