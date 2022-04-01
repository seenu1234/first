from Crypto.Util.number import inverse
from Crypto.Util.number import bytes_to_long
from Crypto.Util.number import long_to_bytes



prime1 = 519804956646111138003271844016926990474690599223882276350244147835276843288197211874895257
prime2 = 174202602770659198202498242281407805037160533311810515152555411176615170560868704845829439
e = 65537

n = prime1 * prime2
print(n)
PHI=(prime1-1)*(prime2-1)
d = inverse(e, PHI)
original_message = bytes_to_long(b'Hi John this is Rock, Please change the server password to sw345cdsw@12')
print("original message is",original_message)
K = bytes_to_long(b'uiut765rtyf54rfg45d')

Alice_Sign_km = pow((K*original_message),d, n)
print("Alice signed km",Alice_Sign_km)


K_inverse = inverse(K, n)

print("value of k inverse",K_inverse)

Alice_Sign_k_inverse = pow(K_inverse,d, n)

print("Alice sign k inverse",Alice_Sign_k_inverse)

Eve_calculated_km_k_inverse = (Alice_Sign_km*Alice_Sign_k_inverse)%n

print("Eve calculated km k inverse",Eve_calculated_km_k_inverse)

Eve_calculated_original_message = pow(Eve_calculated_km_k_inverse,e, n)

print("Eve calculated original message",Eve_calculated_original_message)

print("Eve calculated original message: %s" % long_to_bytes(Eve_calculated_original_message).decode('utf-8'))

print("m power d",pow(original_message,d, n))



