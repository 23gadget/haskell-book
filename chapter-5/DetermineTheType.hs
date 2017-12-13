{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

a = (* 9) 6

b = head [(0,"doge"),(1,"kitteh")]

c = head [(0 :: Integer, "doge"), (1,"kitteh")]

d = if False then True else False

e = length [1, 2, 3, 4, 5]

f = (length [1, 2, 3, 4]) > (length "TACOCAT")


x = 5
y = x + 5

w = y * 10
z y = y * 10
g = 4 / y

h = "Julie"
i = " <3 "
j = "Haskell"
k = h ++ i ++ j

