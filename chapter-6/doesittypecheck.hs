module DoesItTypecheck where

data Mood = Blah
          | Woot deriving (Show, Eq)

settleDown x = if x == Woot
                  then Blah
                  else x


type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"