#!/bin/bash

TEMP_DIR=$(mktemp -d)

if [ -z "$1" ] || [ -z "$2" ]
then
  echo ""
  echo "Need a zip file with the tests and your .py file with the solution you developed"
  echo ""
  echo "Example: susy-test aux02.zip lab02.py"
  echo ""
  exit 1
fi

echo $1 $2

unzip -qq $1 -d $TEMP_DIR

for file in $TEMP_DIR/open/*.in; do
  BASENAME=$(basename "$file" .in)
  echo $BASENAME
  RESULT=$({ cat $file; } | python3 $2)
  EXPECTED=$(cat $TEMP_DIR/open/$BASENAME.out)

  if [[ $RESULT != $EXPECTED ]]
  then
    echo "  --> ERROR!"
    echo "      Got:      $RESULT"
    echo "      Expected: $EXPECTED"
  else
    echo "  --> OK"
  fi
  
done

