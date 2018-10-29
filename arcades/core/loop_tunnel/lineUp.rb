def lineUp(commands)
    deg = 0
    round = 0
    commands.split("").each do |com|
        deg += -90 if com == "L"
        deg += 90 if com == "R"
        deg += 180 if com == "A"
        if deg % 180 == 0
            round += 1
            deg = 0
        end
    end
    round
end