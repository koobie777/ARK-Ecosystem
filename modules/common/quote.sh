#!/bin/bash
# ARK Quote System: Display a random ARK quote
QUOTE_FILE="$(dirname "$0")/quotes.txt"
if [ -f "$QUOTE_FILE" ]; then
  shuf -n1 "$QUOTE_FILE"
else
  echo "May The ARK guide your builds through any cosmic storm."
fi
