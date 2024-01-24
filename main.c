#include <stdio.h>
#include <stdlib.h>

extern void my_print_function(); // Declaration of the external assembly function

int main() {
    int a = 10;
    printf("This is the main\n");
    my_print_function();  // Call the assembly function
}
