def adaNumber(line)
    line.gsub!('_', '')
    if /^\d+$/ =~ line
        true
    elsif /^(?<base>\d+)#(?<digits>[0-9A-Fa-f]+)[#]$/ =~ line
        x = digits.chars.reject { |x| x[/\d/] }.map(&:upcase).max
        base.to_i > 1 && base.to_i < 17 &&
            (!x ? digits.chars.select { |x| x[/\d/] }.max.ord - ?0.ord < base.to_i 
            : (x.ord - ?A.ord + 10) < base.to_i)
    else
        false
    end
end
