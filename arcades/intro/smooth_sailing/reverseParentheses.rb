def reverseParentheses(s)
    j = 0
    stack = []
    result = ""
    while j < s.length
        character = s[j]
        if character != ")"
            stack.push(character)
        else
            group = ""
            k = stack.pop
            while k != "("
                group = k + group
                k = stack.pop
            end
            group = group + result
            group = group.reverse
            stack.push(group)
        end
        j += 1
    end
    return stack.join("")
end