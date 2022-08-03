import pycaesarcipher
word = pycaesarcipher.pycaesarcipher()
new = word.caesar_encipher("i love python",3)
word2 = word.caesar_decipher(new,3)
print(new," is the enciphered text.\n")
print(word2," is the deciphered text.")
