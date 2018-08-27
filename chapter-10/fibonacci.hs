module Fibonacci where

fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x

fact = scanl (*) 1 [2..]
factN x = fact !! x
