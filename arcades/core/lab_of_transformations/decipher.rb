def decipher(cipher)
    ans = ''
    until cipher.length == 0
        if cipher[0].to_i == 1
            letter = (cipher[0..2].to_i).chr
            ans += letter
            cipher = cipher[3..-1]
        elsif cipher[0].to_i == 9
            letter = (cipher[0..1].to_i).chr
            ans += letter
            cipher = cipher[2..-1]
        end
    end
    ans
end
