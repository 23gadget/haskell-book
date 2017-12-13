module Currying where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty = cattyConny "woops"
frappe = flippy "haha"

{- 
  appedCatty "woohoo" [ Prediction: "woops mrow woohoo"
                        Actual:     "woops mrow woohoo" ]
  frappe "1"          [ Prediction: "haha mrow 1"
                        Actual:     "1 mrow haha" ]
  frappe (appedCatty "2") [ Prediction: "woops mrow 2 mrow haha"
                            Actual:     "woops mrow 2 mrow haha"]
  appedCatty (frappe "blue") [ Prediction: "woops mrow blue mrow haha"
                               Actual:     "woops mrow blue mrow haha"]
  cattyConny (frappe "pink")
             (cattyConny "green" (appedCatty "blue"))
                        [ Prediction: "pink mrow haha mrow green mrow woops mrow blue
                          Actual:     "pink mrow haha mrow green mrow woops mrow blue"]
  
-}

