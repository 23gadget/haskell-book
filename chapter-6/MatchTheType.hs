module MatchTheTypes where

import Data.List (sort)

-- | i :: a does not work
i :: Num a => a
i = 1


-- | f :: Num a => a        does not work
--   f :: Fractional a => a does work
--   f :: RealFrac a => a   does work
f :: Float 
f = 1.0

-- | frued :: Ord a => a -> a does work
--   frued :: Int -> Int      does work
freud :: a -> a
freud x = x


-- | sigmund :: a -> a          does not work
--   sigmund :: Num a => a -> a does not work
myX = 1 :: Int

sigmund :: Int -> Int 
sigmund x = myX


-- | jung :: [Int] -> Int   does work
--   jung :: [Char] -> Char does work 
jung :: [Char] -> Char
jung xs = head (sort xs)


-- | signfier :: Ord a => [a] -> a does not work
mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char 
signifier xs = head (mySort xs)
