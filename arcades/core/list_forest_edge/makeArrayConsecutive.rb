def makeArrayConsecutive2(statues)
    count = 0
    statues = statues.sort
    for i in (0..statues.length - 2)
        if statues[i] + 1 != statues[i + 1]
            count += (statues[i + 1] - statues[i] - 1)
        end
    end
    count
end