module StandardFunctions where

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs = myOr $ map f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x:xs) =
    if x == e then
        True
    else
        myElem e xs

myElemAny :: Eq a => a -> [a] -> Bool
myElemAny e xs = myAny (==e) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ (squish xs)

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = (f x) ++ (squishMap f xs)

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering)
            -> [a] -> a 
myMaximumBy f (x:xs) =
    maximumByHelp f xs x 
    where
        maximumByHelp :: (a -> a -> Ordering)
                      -> [a] -> a -> a
        maximumByHelp _ [] max = max
        maximumByHelp f (x:xs) max = 
            if f x max == GT then
                maximumByHelp f xs x
            else
                maximumByHelp f xs max

myMinimumBy :: (a -> a -> Ordering)
            -> [a] -> a
myMinimumBy f (x:xs) =
    minimumByHelp f xs x
    where
        minimumByHelp :: (a -> a -> Ordering)
                      -> [a] -> a -> a
        minimumByHelp _ [] min = min
        minimumByHelp f (x:xs) min =
            if f x min == LT then
                minimumByHelp f xs x
            else
                minimumByHelp f xs min

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare

