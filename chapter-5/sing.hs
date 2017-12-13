{- The original code
module sing where

fstString :: [Char] ++ [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> Char
sndString x = x ++ " over the rainbow"

sing = if (x > y) then fstString x or sndString y
  where x = "Singin"
        x = "Somewhere" -}

module Sing where

fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x < y) then fstString x else sndString y
  where x = "Singin"
        y = "Somewhere"