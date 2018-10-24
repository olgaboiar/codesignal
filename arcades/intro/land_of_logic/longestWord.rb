def longestWord(text)
    arr = []
    new = ""
    for i in (0..text.length - 1)
        if text[i] =~ /[A-Za-z]/
            new += text[i]
            else
            arr << new
            new = ""
        end
        arr << new if new.length > 0
    end 
    longest = ''
    arr.each do |el|
        longest = el if el.length > longest.length
    end
    return longest
end