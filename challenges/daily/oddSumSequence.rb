def oddSumSequence(a)
    $l = []
    $l.push(a)
    def m(b)      
        r = []
        o = []
        for i in (0..b.length - 1)
            o.push(b[i]) if b[i] % 2 != 0
            o.length == 0 ? n = 0 : n = o.inject(0, :+)
            r.push(n)
        end
        if $l.include?(r)
            return $l.find_index(r)
        else
            $l.push(r)
            m(r)
        end
    end
    m(a)
end