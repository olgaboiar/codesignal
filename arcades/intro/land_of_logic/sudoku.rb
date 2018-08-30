def sudoku(grid)
    columns = Hash.new
   (0..grid.length - 1).each do |elem|
       columns[elem] = []
   end
   subgrid = [[],[],[],[],[],[],[],[],[]]
   for i in (0..grid.length - 1)
       row = grid[i]
       unique_row = []
       for j in (0..row.length - 1)
           if row[j] != "."
               if i < 3
                       m = 0
                   elsif i < 6 and i > 2
                       m = 3
                   else
                       m = 6
               end
               if unique_row.include?(row[j])
                   return false
               elsif columns[j].include?(row[j])
                   return false
               elsif subgrid[j/3 + m].include?(row[j])
                   return false
               else
                   unique_row.push(row[j])
                   columns[j].push(row[j])
                   subgrid[j/3 + m].push(row[j])
               end               
           end
      end
   end
   return true
end