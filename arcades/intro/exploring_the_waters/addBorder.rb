def addBorder(picture)
    n = picture.length
    m = picture[0].length
    string = "*" * (m + 2)
    new_picture = []
    new_picture.push(string)
    for i in (0..n -1)
        picture[i] = "*" + picture[i] +"*"
        new_picture.push(picture[i])
    end
    new_picture.push(string) 
end