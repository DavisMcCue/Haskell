lcmap :: (a -> b) -> [a] -> [b]
lcmap f xs = [f x | x <- xs]

whicheven :: [Int] -> [Bool]
whicheven = map even

squares:: [Int] -> [Int]
squares = map (\x -> x*x)

main:: IO ()
main = do
    print("Lab 4 - Part 2")
    print d
    print (map even d)
    print ([even x | x <- d])
    print (whicheven d)
    print (lcmap even d)
    print (squares d)
    print (whicheven (squares d))
          where d = [1..10]






