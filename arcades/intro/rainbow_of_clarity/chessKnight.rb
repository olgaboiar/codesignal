def chessKnight(cell)
    possible = []
    count = 0
    possible << ((cell[0].ord).to_i - 2).chr + (cell[1].to_i - 1).to_s
    possible << ((cell[0].ord).to_i - 1).chr + (cell[1].to_i - 2).to_s
    possible << ((cell[0].ord).to_i + 1).chr + (cell[1].to_i - 2).to_s
    possible << ((cell[0].ord).to_i + 2).chr + (cell[1].to_i - 1).to_s
    possible << ((cell[0].ord).to_i + 2).chr + (cell[1].to_i + 1).to_s
    possible << ((cell[0].ord).to_i + 1).chr + (cell[1].to_i + 2).to_s
    possible << ((cell[0].ord).to_i - 1).chr + (cell[1].to_i + 2).to_s
    possible << ((cell[0].ord).to_i - 2).chr + (cell[1].to_i + 1).to_s
    possible.each do |pos|
        if pos[0] =~ /[a-h]/ and pos[1] =~ /[1-8]/ and pos.length == 2
            count += 1
        end
    end
    count
end