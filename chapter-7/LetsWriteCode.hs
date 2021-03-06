module LetsWriteCode where


-- 1. Given this:
tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10
-- a)
tensDigit' x = d
  where (xLast, _) = x `divMod` 10
        (_ , d)    = xLast `divMod` 10

-- b) type is the same

-- c)
hundredsDigit :: Integral a => a -> a
hundredsDigit x = d2
  where d =  x `div` 100
        d2 = d `mod` 10

-- 2.

foldBool :: a -> a -> Bool -> a
foldBool x y b = case b of True  -> x
                           False -> y

foldBool' :: a -> a -> Bool -> a
foldBool' x y b
  | b == True = x
  | b == False = y

-- 3.

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c) 
