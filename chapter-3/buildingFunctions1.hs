module BuildingFunctions1 where

exlamationiser :: String -> String
exlamationiser x = x ++ "!"

fifthLetter :: String -> String
fifthLetter x = drop 4 (take 5 x)

drop9 :: String -> String
drop9 = drop 9

unexlamizedString :: String
unexlamizedString = "Curry is awesome"

testString :: String
testString = "Curry is awesome!"

main :: IO ()
main = do
  putStrLn (exlamationiser unexlamizedString)
  putStrLn (fifthLetter testString)
  putStrLn (drop9 testString)
