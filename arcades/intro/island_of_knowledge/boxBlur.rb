def boxBlur(image)
    x = image[0].length - 2
    y = image.length - 2
    b = Array.new(y)
    for i in (0..y - 1)
        b[i] = Array.new(x)
        for j in (0..x - 1)
            b[i][j] = image[i][j] + image[i][j+1] + image[i][j+2] +
                      image[i+1][j] + image[i+1][j+1] + image[i+1][j+2] +
                      image[i+2][j] + image[i+2][j+1] + image[i+2][j+2]
            b[i][j] = b[i][j] / 9
        end
    end
    return b
end