def encode(plaintext, key)
    binding.irb
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    #p ciphertext_chars.join
    return ciphertext_chars.join
   
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
    end
    return plaintext_chars.join
  end

  puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")