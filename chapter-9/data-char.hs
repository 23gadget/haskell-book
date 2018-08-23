module DataChar where

import Data.Char

filterUpper :: String -> String
filterUpper str =
    filter isUpper str 

capitaliser :: String -> String
capitaliser [] = []
capitaliser (x:xs) = toUpper x : xs

capitaliseAll :: String -> String
capitaliseAll [] = []
capitaliseAll (x:xs) = toUpper x : capitaliseAll xs

capitaliseFirst :: String -> Char
capitaliseFirst = toUpper . head
