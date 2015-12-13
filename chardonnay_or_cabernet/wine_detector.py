import sys
import re
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
  inputs = test.split('|')
  words = inputs[0].strip().split(" ")
  search = inputs[1].strip()

  matched_words = []
  for word in inputs[0].split(" "):
    word_chars = list(word)
    word_match = True
    for char in search:
      if char in word_chars:
        word_chars.remove(char)
      else:
        word_match = False
    if word_match:
      matched_words.append(word)

  if matched_words:
    sys.stdout.write(" ".join(matched_words))
  else:
    sys.stdout.write("False")

  sys.stdout.write("\n")
test_cases.close()
