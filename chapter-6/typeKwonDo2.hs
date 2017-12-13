module TypeKwonDo2 where


chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = f(a) == b
