module Cipher where

import Data.Char

ceaser :: Int -> String -> String
ceaser _ [] = []
ceaser shift (x:xs) =
    let
        cipherX =
            if isUpper x then
                chr ((((ord x) - 65 + shift) `mod` 26) + 65)
            else if isLetter x then 
                chr ((((ord x) - 97 + shift) `mod` 26) + 97)
            else
                x
    in
        cipherX : ceaser shift xs

unCeaser :: Int -> String -> String
unCeaser _ [] = []
unCeaser shift (x:xs) =
    let
        plainX =
            if isUpper x then
                chr ((((ord x) - 65 - shift) `mod` 26) + 65)
            else if isLetter x then
                chr ((((ord x) - 97 - shift) `mod` 26) + 97)
            else x
    in
        plainX : unCeaser shift xs
