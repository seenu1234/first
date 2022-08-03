import codext
message = input("Enter the message: ")
choice = input("Enter the choice(1 or 2)\n1.Encryption\n2.Decryption\n")
no_of_letters = int(input("Enter the number of letters on the rod(Per line): "))
algorithm = "scytale"
final_algorithm = algorithm + str(no_of_letters)
encrypted_text = codext.encode(message, final_algorithm)
if choice == "1":
    print("Encrypted text using scytale is: ",codext.encode(message, final_algorithm))
elif choice == "2":
    print("Decrypted text using scytale is: ",codext.decode(message, final_algorithm))
else:
    print("Your entered option is wrong please try again later")
