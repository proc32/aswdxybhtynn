#!/bin/bash

# Build script 
echo "Starting build process for Mohammed Omer's project..."

# Step 1: Clean previous builds
rm -rf build/
mkdir build

# Step 2: Compile source code
echo "Compiling source code..."
gcc -o build/app src/main.c src/utils.c -Iinclude -lpthread

# Step 3: Run tests
echo "Running tests..."
./build/app --test

# Step 4: Package the application
tar -czvf mohammedomer-app.tar.gz build/

echo "Build completed successfully!"
