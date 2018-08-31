def bishopAndPawn(bishop, pawn)
    (bishop[1].to_i - pawn[1].to_i).abs == (bishop[0].ord - pawn[0].ord).abs ? true : false
end
