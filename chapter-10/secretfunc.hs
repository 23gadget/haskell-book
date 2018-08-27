secretFunc x =
    div (sum (map length (words x)))
        (length (words x))

-- This function calculates the average length of words in a string

averageLength :: String -> Double
averageLength x =
    (fromIntegral (sum (map length (words x)))) / (fromIntegral (length (words x)))

