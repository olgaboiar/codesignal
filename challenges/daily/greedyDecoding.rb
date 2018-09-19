def greedyDecoding(m)
    a = []
    ("A".."Z").each do |l|
        a.push(l)
    end
    d = []
    for i in (0..m.length - 1)
        if m.length == 0
            return d.join('')
        else
            if m[0..1].to_i < 27
                d.push(a[m[0..1].to_i - 1])
                m[0..1] = ''
                else
                d.push(a[m[0].to_i - 1])
                m[0] = ''
            end
        end
    end
    d.join('')
end