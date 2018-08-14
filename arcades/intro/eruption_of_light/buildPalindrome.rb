def buildPalindrome(st)
    for j in (0..(st.length - 1))
        if st == st.reverse
            return st
        else
            tail = st[st.length - j..-1]
            st = st[0..st.length - j - 1] + st[j] + tail       
        end
    end
end