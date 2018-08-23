module Filtering where

filterArticles :: String -> [String]
filterArticles str =
    filter (\x-> (x/="an") && (x/="a") && (x/="the")) (words str)
