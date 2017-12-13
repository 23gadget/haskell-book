module Recursion where

mult :: (Integral a) => a -> a -> a
mult x y = go x  y 0
  where go x y acc = case x of 
                       0         -> acc
                       otherwise -> go (x-1) y (acc + y)
