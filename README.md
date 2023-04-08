# Binary to Decimal

This is a simple C library that provides a function to convert a binary number to its decimal representation.

## Building

To build the library, run `make` in the root directory. This will generate the library file in the lib directory.

To build the example program, run `make` in the [example repository](#example). This will generate the executable in the `bin` directory.

## Installation

To use this library in your C project, simply copy the files in the `src` and `include` directories to your project directory, and include the `binary_to_decimal.h` header file in your source code.

Alternatively, you can install this library using a package manager like GitHub Packages.

## Usage

Include the `binary_to_decimal.h` header file in your project, and link against the `binary_to_decimal` library.

```c
#include "binary_to_decimal.h"

int main() {
   int binary = 1010;

   printf("Decimal number is: %d\n", binary_to_decimal(binary));
   return 0;
}
```

## Example

An example program is provided in the [tq-binary-to-decimal-example](https://github.com/toolquarry/tq-binary-to-decimal-example) repository. To build the example program, clone the repository and run `make` in the example directory. This will generate the executable in the `bin` directory.

## API

This library provides the following function:

```c
int binary_to_decimal(int binary);
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
