# Clorox

A lightweight bytecode virtual machine and interpreter written in pure C, following the *Crafting Interpreters* book.


## Project Structure
```text
├── src/                  # C source and header files
│   ├── main.c           # Entry point
│   ├── vm.c             # Virtual machine implementation
│   ├── compiler.c       # Tokenizer and compiler
│   └── ...              # Other core modules
├── Makefile             # Unified build automation script
└── test.clorox          # Sample script for testing
```

## Getting Started

### Prerequisites
You need a C compiler (`gcc` or `clang`) and `make` installed on your system.

### Compiling the Project
Open your terminal in the project root directory and run:

```bash
make
```

- **On Windows:** Compiles into a self-contained `clorox.exe` binary.
- **On macOS:** Automatically detects the Apple environment and compiles into a native `clorox` binary.


### Running Your Scripts
Once the compilation finishes, you can feed a source file straight into the interpreter:

**Windows (PowerShell):**
```powershell
.\clorox.exe .\test.clorox
```

**macOS (Terminal):**
```bash
./clorox test.clorox
```
