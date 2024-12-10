# Ada Unhandled Constraint_Error

This repository demonstrates a common, yet easily overlooked, error in Ada programming: unhandled `Constraint_Error` exceptions when working with the Integer type.

Ada's `Integer` type has a predefined range (implementation-dependent), and any attempt to assign a value outside this range will raise a `Constraint_Error`.  The provided code illustrates a function that checks if a number is greater than 10.  However, it lacks proper handling for cases where the input exceeds the maximum value of the Integer type.

The solution shows how to address this issue using either exception handling or a more robust type that can handle larger values.