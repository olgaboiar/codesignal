def electionsWinners(votes, k)
    votes = votes.sort.reverse
    count = 0
    if k == 0
        count = 1 if votes[0] > votes[1]
    end
    votes.each do |el|
        if el + k > votes[0]
            count += 1
        end
    end
    count
end