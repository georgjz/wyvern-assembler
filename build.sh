# Create executable
raco make -v src/main.rkt
mkdir -p build-exe
raco exe -v -o build-exe/main src/main.rkt