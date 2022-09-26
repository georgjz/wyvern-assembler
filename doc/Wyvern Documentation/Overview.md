**Wyvern** is a toolchain for modern assembly cross development. It includes a modular macro assembler, linker, and other tools. It will support several architectures including 6809, Z80, and 68k.

Wyvern follows a different approach to assembly programming than most other toolchain. It takes ideas from Haskell and other (functional) languages on how to organize your code. This means mainly that the assembler will not include any directives to place code in memory (think `.org`, `.data`, `.bss`, `.text`, etc.), nor any variant of `.include` or `.bininclude`. Wyvern solves those problems with modules.

The linker in turn will use a script to combine all modules into a final binary. The linker supports several formats like plain binaries, Motorola or Intel formats for programmers, etc. A linker script will allow for multiple configurations (say, split output for programmers).

## Short Introduction to Modules

This section will explain what the basic idea is behind modules. A modules (or translation unit) is simply all the code within one source file. You can control exactly which symbols are exported (aka, can be used by other modules) and which remain local to the module. Take this snipped for example:

```asm
Module Math (Mul) where 

Mul:
		LDA #0       ; Initialize RESULT to 0
        LDX #8       ; There are 8 bits in NUM2
L1:     LSR NUM2     ; Get low bit of NUM2
        BCC L2       ; 0 or 1?
        CLC          ; If 1, add NUM1
        ADC NUM1
L2:     ROR A        ; "Stairstep" shift (catching carry from add)
        ROR RESULT
        DEX
        BNE L1
        STA RESULT+1
```

Each file must start with a line defining the modules name, and optionally in parentheses a list of symbols to export. If no list is given, all symbols are exported by default.