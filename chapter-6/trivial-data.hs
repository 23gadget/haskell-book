module TrivialData where

data Trivial =
  Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True


data DaysOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun

data Date =
  Date DaysOfWeek Int

instance Eq DaysOfWeek where
  Mon == Mon = True
  Tue == Tue = True
  Wed == Wed = True
  Thu == Thu = True
  Fri == Fri = True
  Sat == Sat = True
  Sun == Sun = True
