def secondRightmostZeroBit(n)
    return ~(k = n|n+1) & k+1
end