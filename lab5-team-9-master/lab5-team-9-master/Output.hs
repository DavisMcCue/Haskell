data Lunch = Sandwich | Soup | Bread | Salad deriving Show 



main :: IO()
main = do
    print "Lab 5 - Part 2"
    print 5
    print True
    print 'f'
    print 5.5
    putStr (show 5)
    putStr (show True)
    putStr (show 'f')
    putStr (show 5.5)
    putStrLn (show 5)
    putStrLn (show True)
    putStrLn (show 'f')
    putStrLn (show 5.5)
    print Sandwich
    print Soup
    print Bread
    print Salad
    mapM_ print [1..10]
        --print (\x -> x = x + 1 x < 11)
      --  where x = 1
    

