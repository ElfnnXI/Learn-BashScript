# This script creates and calls functions
#!/bin/bash

greet() {
  echo "Hello, $1! Welcome to learning Bash."
}

read -p "what your name? " name
greet "$name"
