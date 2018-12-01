def arrayPreviousLess(items)
    ans = []
    for i in (0..items.length - 1)
      j = i
      found = false
      (j).downto(0) do |j|
        if items[j] < items[i]
          found = true
          ans << items[j]
          break
        end
      end
      ans << -1 if found == false
    end
    ans
  end
  