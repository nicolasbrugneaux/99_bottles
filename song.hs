main = mapM_ (putStrLn . song) [99, 98 .. 0]
song 1 = "1 bottle of beer on the wall\n1 bottle of beer\nTake one down, pass it around"
song 0 = "Better go to the store and buy some more."
song bottles = show bottles ++ " bottles of beer on the wall\n"
            ++ show bottles ++ " bottles of beer\n"
            ++ "Take one down, pass it around\n"
            ++ head (lines $ song $ bottles - 1) ++ "\n"
