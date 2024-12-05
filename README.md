Wordle Tools
------------

The tools here are simple collection of tools to help me think about the Wordle problem.

## Current Tools

- `search_include_letters.bash`: search the dictionary for 5 letter words that include a set of letters, independent of position.
- `search_exclude_letters.bash`: search the dictionary for 5 letter words that exclude a set of letters, independent of position.
- `search_word.bash`: search the dictionary for a pattern, specified as a 5 letter regular expression.

## Examples

- `bigger.bash`: documents the usage of `search_include_letters.bash` and `search_exclude_letters.bash` to look for the set of remaining possible words. Does not account for any known positions.

## TODO

- Integrate known positions into `bigger.bash`.
- Make tool to exclude words based on known non-positions of letters.
- Integrate known non-positions to `bigger.bash`




