def chessBoardCellColor(cell1, cell2)
    (cell1[0].ord + cell1[1].to_i) % 2 == (cell2[0].ord + cell2[1].to_i) % 2 ? true : false
end