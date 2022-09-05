#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]
then
  echo ""
  echo "Need a zip file with the tests and your .py file with the solution you developed"
  echo ""
  echo "Example: susy-test aux02.zip lab02.py"
  echo ""
  exit 1
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

indent() { sed 's/^/   /'; }
ZIP_TESTS_FILE=$1
PYTHON_FILE=$2
TEMP_DIR=$(mktemp -d)

echo "" # Let's give it a little space
unzip -qq $ZIP_TESTS_FILE -d $TEMP_DIR

for file in $TEMP_DIR/open/*.in; do
  BASENAME=$(basename "$file" .in)
  RESULT=$({ cat $file; } | python3 $PYTHON_FILE)
  EXPECTED=$(cat $TEMP_DIR/open/$BASENAME.out)
  echo -n $BASENAME
  if diff <(echo $EXPECTED) <(echo $RESULT) >/dev/null 2>&1; 
  then
    echo -e "${GREEN} --> OK${NC}"
  else
    echo -e "${RED} --> ERROR!${NC}"
    echo -n "      Got:     "; echo -e "${RED}$RESULT${NC}"   | indent
    echo -n "      Expected:"; echo -e "${GREEN}$EXPECTED${NC}" | indent       
  fi
done

