module HeadTail where

dumbMyHead [a] -> a
dumbMyHead (x : _) = x

dumbMyTail [a] -> [a]
dumbMyTail (_ : xs) = xs

{- These work but produce bottom on [] -}

myHead         :: [a] -> a
myHead []      = []
myHead (x : _) = x

myTail          :: [a] -> [a]
myTail []       = []
myTail (_ : xs) = xs -- now myTail [] = []

{- This treatment is not the best, as failure isn't explicit -}

safeHead         :: [a] -> Maybe a
safeHead []      = Nothing
safeHead (x : _) = Just x

safeTail          :: [a] -> Maybe [a]
safeTail []       = Nothing
safeTail (x : []) = Nothing
safeTail (_ : xs) = Just x

{- Now failure is explicit -}
