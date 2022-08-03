from secretpy import Zigzag
from secretpy import alphabets

alphabet = alphabets.ENGLISH
message = input("Enter a message: ")
rails = int(input("Enter rails: "))

chipher = Zigzag()
print("Given message is: ",message)

enc = chipher.encrypt(message, rails, alphabet)
print("Encrypted text using railfence is: ",enc)
dec = chipher.decrypt(enc, rails, alphabet)
print("Decrypted text using railfence is: ",dec)
