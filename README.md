# cs3311-ass3-public-tests

## How to Use

Rename all files such that they end in a `.py`. Make sure you have `python3` available.

To run tests, run `./check.sh`. (If you have permissions errors, you can `chmod u+x check.sh`)

The test will generate your observed output in a `out` folder. The difference between your observed and expected (located in `tests/*.txt`) will be in the `diff` folder.

If there is no output, then there were no differences.

**Note**: python's `print()` usually prints an extra line (`\n`), hence why there is an extra line in every expected file

## My Tests

Any tests starting with `my_*` are tests created by me. So if you get an difference, one of us has probably done it wrong.
