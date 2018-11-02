def findEmailDomain(address)
    dom = ''
    for i in (address.length - 1).downto(0)
        if address[i] != "@"
            dom += address[i]
            else
            break
        end
    end
    dom.reverse
end