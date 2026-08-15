#! /usr/bin/env bash
#src/test.sh

EXPECTED_OUTPUT="Hello, World!"

OUTPUT=$(node -e "const greet = require('./app'); console.log(greet('World'));")

if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed!"
    echo "Expected: $EXPECTED_OUTPUT"
    echo "Got: $OUTPUT"
    exit 1
fi

