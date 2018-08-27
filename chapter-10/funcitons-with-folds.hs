module FunctionsWithFolds where

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr ((||) . f) False

myElem :: Eq a => a -> [a] -> Bool
myElem x = foldr ((||) . (==x)) False 

myElem' :: Eq a => a -> [a] -> Bool
myElem' x = myAny (==x) 

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr ((:) . f) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\x xs -> if f x then x:xs else xs) []

squish :: [[a]] -> [a]
squish = foldr (++) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr ((++) . f) []

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering)
            -> [a]
            -> a
myMaximumBy f (x:xs) = foldr (\x y -> if f x y == GT then x else y) x xs

myMinimumBy :: (a -> a -> Ordering)
            -> [a]
            -> a
myMinimumBy f (x:xs) = foldr (\x y -> if f x y == LT then x else y) x xs
