# Message Mangler Challenge

## Challenge

You are given a series of large files containing email messages.
You are tasked with reading the file, making changes to the messages and writing the new output to a new file.
The output file is structured as a JSON array containing `subject` and `message`.

### Messages Changes

The message changes are as follows:
  - for every other word:
    - reverse the order of the word
    - alternate capitalization of every other letter
      - the first word is forward, the second is reversed
      - words are space separated and may include punctuation
    - a message of `this is a message` becomes `this Si a EgAsSeM`
  - replace the appearance of any palindromes with `PALINDROME`
    - a palindrome is a word that reads the same backward as forward
    - ignore case, `Racecar` would be considered a palindrome
    - `bob` becomes `PALINDROME`

## Example

### Input

```
BEGIN MESSAGE
to: alice@aol.com
from: bob@aol.com
subject: hello
message:
Hello Bob, how are you?
END MESSAGE
BEGIN MESSAGE
to: bob@aol.com
from: alicebob@aol.com
subject: RE: hello
message:
Hi Alice, I'm well, thanks for asking!
END MESSAGE
```

### Converted example:

```
[
  "subject": "hello",
  "message": "Hello PALINDROME, how ErA you?"
],
[
  "subject": "hello",
  "message": "Hi EcIlA, I'm LlEw, thanks RoF asking!"
]
