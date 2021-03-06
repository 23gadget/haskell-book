module DatabaseProcessing where

import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
    [ DbDate (UTCTime
              (fromGregorian 1911 5 1)
              (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello, world!"
    , DbDate (UTCTime
              (fromGregorian 1921 5 1)
              (secondsToDiffTime 34123))
    , DbNumber 2
    ]

filterDbDate :: [DatabaseItem]
             -> [UTCTime]
filterDbDate db =
    let 
        f (DbDate date) acc = date : acc 
        f _ acc = acc
    in
        foldr f [] db

filterDbNumber :: [DatabaseItem]
               -> [Integer]
filterDbNumber db =
    let
        f (DbNumber n) acc = n : acc
        f _ acc = acc
    in
        foldr f [] db

mostRecent :: [DatabaseItem]
           -> UTCTime
mostRecent = maximum .filterDbDate

sumDb :: [DatabaseItem]
      -> Integer
sumDb db =
    foldr (+) 0 (filterDbNumber db)

avgDb :: [DatabaseItem]
      -> Double
avgDb db =
    (fromIntegral $ sumDb db) / (fromIntegral $ length $ filterDbNumber db)
