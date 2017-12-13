module TypeToFunction where

i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

r :: [a] -> [a]
r (_:xs) = xs
