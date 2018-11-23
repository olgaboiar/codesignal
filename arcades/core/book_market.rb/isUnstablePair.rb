def isUnstablePair(filename1, filename2)
    (filename1 <=> filename2) != (filename1.downcase <=> filename2.downcase)
end
