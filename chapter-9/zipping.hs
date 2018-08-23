module Zipping where

{- original
myZip :: [a] -> [b] -> [(a,b)]
myZip _ [] = []
myZip [] _ = []
myZip (x:xs) (y:ys) =
    (x, y) : myZip xs ys
-}

myZipWith :: (a -> b -> c)
          -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (x:xs) (y:ys) =
    f x y : myZipWith f xs ys

--using zipwith
myZip :: [a] -> [b] -> [(a, b)]
myZip xs ys =
    myZipWith (\x y -> (x, y)) xs ys
