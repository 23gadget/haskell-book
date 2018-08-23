module ThyFearfulSymmetry where

{-

Old versions of both

myWords :: String -> [String]
myWords s =
    if s == "" then
        []
    else
        [takeWhile (/= ' ') s] ++ (myWords (dropWhile (== ' ') $ dropWhile (/= ' ') s))

myLines :: String -> [String]
myLines s = 
    if s == "" then
        []
    else
        [takeWhile (/='\n') s] ++ myLines (dropWhile (=='\n') $ dropWhile (/='\n') s)
-}

-- New generic function
splitByChar :: Char -> String -> [String]
splitByChar chr str =
    if str == "" then
        []
    else
        [takeWhile (/= chr) str] 
        ++ splitByChar chr (dropWhile (==chr) $ dropWhile (/=chr) str)

myLines :: String -> [String]
myLines = splitByChar '\n'

myWords :: String -> [String]
myWords = splitByChar ' '
