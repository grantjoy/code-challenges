# Message Mangler Coding Challenge

## Challenge

You are given a series of large files containing email messages.
You are tasked with reading the file, making changes to the messages and writing the new output to a new file.
The output file is structured as a JSON array containing `subject` and `message`.

### File Format

Messages always start with `BEGIN MESSAGE` and end with `END MESSAGE`.
The subject is specified after `subject: ` and ends at the line break.
The message starts on the line following `message:` and ends at `END MESSAGE`.

### Messages Changes

The message changes are as follows:
  - replace the appearance of any palindromes with `PALINDROME`
    - a palindrome is a word that reads the same backward as forward
    - ignore case, `Racecar` would be considered a palindrome
    - palindromes are still considered words
    - `bob` becomes `PALINDROME`
  - for every other word:
    - reverse the order of the word: first word is forward, second reversed, etc
    - alternate capitalization of every other letter: first letter is capital, second lowercase, etc 
    - words are space separated and may include punctuation
    - a message of `This is an e-mail!` becomes `This Si an !lIaM-E`
  - `Bob is a racecar driver!` becomes `PALINDROME Si a PALINDROME driver!`

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
  "subject": "RE: hello",
  "message": "Hi EcIlA, I'm LlEw, thanks RoF asking!"
]
```

## Goals

The program should be able to handle very large files (100 MB+) with very long messages. Avoid storing too much data in memory.

It will be evaluated for efficiency and completeness.
