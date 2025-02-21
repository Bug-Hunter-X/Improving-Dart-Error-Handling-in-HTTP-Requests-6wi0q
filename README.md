# Dart Error Handling Improvement

This repository demonstrates a common error in Dart's asynchronous HTTP requests and shows how to improve it using more specific exception handling and informative logging. 

The `bug.dart` file contains the initial code with a generic error handling approach.  `bugSolution.dart` demonstrates the improved version.

**Key Improvements:**

* More specific exception handling (FormatException for JSON decoding errors)
* More detailed logging messages to aid in debugging
* Uses `FormatException` for JSON parsing errors
* Improved error messaging