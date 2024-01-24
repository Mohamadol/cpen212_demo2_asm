.global my_print_function
.text

my_print_function:
    // Store the return address and frame pointer
    stp x29, x30, [sp, -16]!
    mov x29, sp

    // Prepare arguments for printf
    ldr x0, =message  // Load address of message into x0 (first argument for printf)
    bl printf        // Call printf function

    // Restore the frame pointer and return address
    ldp x29, x30, [sp], 16

    ret              // Return from function

.data
message:
    .asciz "hi\n"    // Null-terminated ASCII string
