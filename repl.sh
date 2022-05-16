# Compile all modified and/or new files and load the main module into a REPL
raco make -v src/main.rkt
racket -it src/main.rkt