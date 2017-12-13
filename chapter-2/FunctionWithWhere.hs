module FunctionWithWhere where

printInc n = print plusTwo
  where plusTwo = n + 2

printInc2 n = let plusTwo = n + 2
              in print plusTwo


mult1     = x * y
  where x = 5
        y = 6


sum3 = z / x + y
  where x = 7
        y = negate x
        z = y * 10
