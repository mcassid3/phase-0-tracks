#pseudocode encrypt method
#Asks user to enter a password to be encrypted
#for every letter in the string we need to replace it with the letter that follows it
#in the alphabet
#repeat until we have run out of letters in the given password
#if it is a space character, return the space character !/

def encrypt(password)
  index = 0
  while index < password.length
    next if password[index] == " "
    
    if password[index] == "z"
       password[index] = "a"
    else
       password[index] = password[index].next
    end
    
    index += 1
  end
  p password
end

#pseudocode decrypt method
#define a variable for the whole alphabet
#look at the first letter in the password to be decrypted
#match this letter with a letter in the alphabet
#replace the string with a letter that is 1 index earlier in the alphabet
#loop this process for every letter in the word to be decrypted

def decrypt(encryptedpassword)
  encryptindex = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while encryptindex < encryptedpassword.length
    
    if encryptedpassword[encryptindex] == alphabet[0]
      encryptedpassword[encryptindex] = alphabet[25]
    else
      alphabetindex = 0
      until encryptedpassword[encryptindex] == alphabet[alphabetindex]
          alphabetindex+=1
      end
        adjustedindex = alphabetindex - 1
        encryptedpassword[encryptindex] = alphabet[adjustedindex]
    end

    encryptindex+=1
  end

p encryptedpassword
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#this nested method call works because encrypt("swordfish") outputs a valid input for the decrypt function. 
#decrypt(encrypt("swordfish"))

#driver code
print "Would you like to encrypt or decrypt a password? "
encrypt_or_decrypt = gets.chomp
  until encrypt_or_decrypt =="encrypt" || encrypt_or_decrypt == "decrypt"
    print "Invalid response. Type encrypt or decrypt. "
    encrypt_or_decrypt = gets.chomp
  end

if encrypt_or_decrypt == "encrypt"
  print "Please enter the word to be encrypted: "
  password = gets.chomp
  final_encryption = encrypt(password)
  print "Your encrypted password is #{final_encryption}.  "

else encrypt_or_decrypt = "decrypt"
    print "Please enter the word to be decrypted: "
    encryptedpassword =gets.chomp
    final_decryption = decrypt(encryptedpassword)
    print "Your decrypted password is #{final_decryption}.  "
end




