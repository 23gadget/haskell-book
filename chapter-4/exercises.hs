module Exercises where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome z = z == reverse z

myAbs :: Integer -> Integer
myAbs z = if z > 0 then z else -z

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tup1 tup2 = ((snd tup1, snd tup2), (fst tup1, fst tup2))

x = (+)

g xs = w `x` 1
  where w = length xs

h (a, b) = a
