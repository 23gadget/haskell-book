module Filtering where

multiplesOf3 = filter (\x -> rem x 3 == 0) [1..30]
numMultiplesOf3 = length multiplesOf3

filterArticles :: String -> [String]
filterArticles str =
    filter (\x -> (x/="a") || (x/="an") || (x/="the")) (words str)
