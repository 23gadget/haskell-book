stops = "pbtdkg"
vowels = "aeiou"

combinations :: [a] -> [a] -> [[a]]
combinations a b =
    [[x, y, z] | x <- a,
                 y <- b,
                 z <- a]

combinationsP = 
    filter (\x -> (x!!0 == 'p')) (combinations stops vowels)

nouns = ["mind",
         "body",
         "soul",
         "truth",
         "clairty",
         "belief"
        ]
verbs = ["creates",
         "enlightens",
         "empowers",
         "awakens"
        ]

