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

## Using the Library via GitHub Packages

If you prefer to use this library via GitHub Packages, you can follow these steps:

1. Make sure you have Docker installed on your machine.

2. Pull the Docker image that contains the library by running the following command:

   ```ruby
   docker pull ghcr.io/toolquarry/tq-binary-to-decimal/tq-binary-to-decimal:latest
   ```

3. Create a new Docker container based on the image you pulled by running the following command:

   ```ruby
   docker run -it tq-binary-to-decimal /bin/bash
   ```

4. Inside the Docker container, navigate to the directory where the library is installed.

5. Compile your C code using the appropriate compiler commands, depending on how the library was built.

6. Once your C code is compiled, you can use the functions in the library by including the appropriate header files and linking against the library.

7. To copy the header files to your local system, exit the Docker container by typing exit in the terminal and run the following command:

   ```ruby
   docker cp <container-id>:<path-to-header-files> <local-path>
   ```

   Replace `<container-id>` with the ID of the Docker container you just exited, `<path-to-header-files>` with the path to the header files inside the container, and `<local-path>` with the path on your local system where you want to copy the header files.

   You can check the container ID by running the following command:

   ```ruby
   docker ps -a
   ```

   This will display a list of all Docker containers on your system, including the one you just exited. Make a note of the container ID.

8. Once the header files are copied to your local system, you can use them in your C code by including the appropriate header files and linking against the library when compiling.

Note that if the library has dependencies that are not installed on your local system, you may need to install those dependencies before you can use the library.

## API

This library provides the following function:

```c
int binary_to_decimal(int binary);
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
